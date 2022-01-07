; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_new_disk_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_new_disk_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.md_cluster_info* }
%struct.md_cluster_info = type { i32, i32, i32 }

@MD_CLUSTER_WAITING_FOR_NEWDISK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"md-cluster(%s): Spurious cluster confirmation\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i32)* @new_disk_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_disk_ack(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.md_cluster_info*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mddev*, %struct.mddev** %4, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 0
  %9 = load %struct.md_cluster_info*, %struct.md_cluster_info** %8, align 8
  store %struct.md_cluster_info* %9, %struct.md_cluster_info** %6, align 8
  %10 = load i32, i32* @MD_CLUSTER_WAITING_FOR_NEWDISK, align 4
  %11 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %12 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %11, i32 0, i32 2
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.mddev*, %struct.mddev** %4, align 8
  %17 = call i32 @mdname(%struct.mddev* %16)
  %18 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %33

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %26 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dlm_unlock_sync(i32 %27)
  br label %29

29:                                               ; preds = %24, %21
  %30 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %31 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %30, i32 0, i32 0
  %32 = call i32 @complete(i32* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i32 @dlm_unlock_sync(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
