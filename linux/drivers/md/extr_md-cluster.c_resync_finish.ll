; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_resync_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_resync_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, %struct.md_cluster_info* }
%struct.md_cluster_info = type { i32 }

@MD_RESYNCING_REMOTE = common dso_local global i32 0, align 4
@MD_CLOSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @resync_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resync_finish(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.md_cluster_info*, align 8
  %4 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %5 = load %struct.mddev*, %struct.mddev** %2, align 8
  %6 = getelementptr inbounds %struct.mddev, %struct.mddev* %5, i32 0, i32 2
  %7 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  store %struct.md_cluster_info* %7, %struct.md_cluster_info** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @MD_RESYNCING_REMOTE, align 4
  %9 = load %struct.mddev*, %struct.mddev** %2, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 1
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = load i32, i32* @MD_CLOSING, align 4
  %13 = load %struct.mddev*, %struct.mddev** %2, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 0
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load %struct.mddev*, %struct.mddev** %2, align 8
  %19 = call i32 @resync_info_update(%struct.mddev* %18, i32 0, i32 0)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.md_cluster_info*, %struct.md_cluster_info** %3, align 8
  %22 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dlm_unlock_sync(i32 %23)
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @resync_info_update(%struct.mddev*, i32, i32) #1

declare dso_local i32 @dlm_unlock_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
