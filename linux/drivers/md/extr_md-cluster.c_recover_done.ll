; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_recover_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_recover_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_slot = type { i32 }
%struct.mddev = type { %struct.md_cluster_info* }
%struct.md_cluster_info = type { i32, i32, i32 }

@MD_CLUSTER_BEGIN_JOIN_CLUSTER = common dso_local global i32 0, align 4
@MD_CLUSTER_SUSPEND_READ_BALANCING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dlm_slot*, i32, i32, i32)* @recover_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recover_done(i8* %0, %struct.dlm_slot* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dlm_slot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mddev*, align 8
  %12 = alloca %struct.md_cluster_info*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.dlm_slot* %1, %struct.dlm_slot** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.mddev*
  store %struct.mddev* %14, %struct.mddev** %11, align 8
  %15 = load %struct.mddev*, %struct.mddev** %11, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 0
  %17 = load %struct.md_cluster_info*, %struct.md_cluster_info** %16, align 8
  store %struct.md_cluster_info* %17, %struct.md_cluster_info** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.md_cluster_info*, %struct.md_cluster_info** %12, align 8
  %20 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MD_CLUSTER_BEGIN_JOIN_CLUSTER, align 4
  %22 = load %struct.md_cluster_info*, %struct.md_cluster_info** %12, align 8
  %23 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %22, i32 0, i32 1
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %5
  %27 = load %struct.md_cluster_info*, %struct.md_cluster_info** %12, align 8
  %28 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %27, i32 0, i32 2
  %29 = call i32 @complete(i32* %28)
  %30 = load i32, i32* @MD_CLUSTER_BEGIN_JOIN_CLUSTER, align 4
  %31 = load %struct.md_cluster_info*, %struct.md_cluster_info** %12, align 8
  %32 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %31, i32 0, i32 1
  %33 = call i32 @clear_bit(i32 %30, i32* %32)
  br label %34

34:                                               ; preds = %26, %5
  %35 = load i32, i32* @MD_CLUSTER_SUSPEND_READ_BALANCING, align 4
  %36 = load %struct.md_cluster_info*, %struct.md_cluster_info** %12, align 8
  %37 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %36, i32 0, i32 1
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
