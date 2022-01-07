; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i32, %struct.md_cluster_info* }
%struct.md_cluster_info = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MaxSector = common dso_local global i64 0, align 8
@MD_CLOSING = common dso_local global i32 0, align 4
@MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leave(%struct.mddev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.md_cluster_info*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %5 = load %struct.mddev*, %struct.mddev** %3, align 8
  %6 = getelementptr inbounds %struct.mddev, %struct.mddev* %5, i32 0, i32 3
  %7 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  store %struct.md_cluster_info* %7, %struct.md_cluster_info** %4, align 8
  %8 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %9 = icmp ne %struct.md_cluster_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

11:                                               ; preds = %1
  %12 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %13 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.mddev*, %struct.mddev** %3, align 8
  %18 = getelementptr inbounds %struct.mddev, %struct.mddev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MaxSector, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %16, %11
  %23 = load %struct.mddev*, %struct.mddev** %3, align 8
  %24 = getelementptr inbounds %struct.mddev, %struct.mddev* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MaxSector, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i32, i32* @MD_CLOSING, align 4
  %30 = load %struct.mddev*, %struct.mddev** %3, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 2
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %16
  %35 = load %struct.mddev*, %struct.mddev** %3, align 8
  %36 = call i32 @resync_bitmap(%struct.mddev* %35)
  br label %37

37:                                               ; preds = %34, %28, %22
  %38 = load i32, i32* @MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD, align 4
  %39 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %40 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %39, i32 0, i32 10
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  %42 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %43 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %42, i32 0, i32 9
  %44 = call i32 @md_unregister_thread(i32* %43)
  %45 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %46 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %45, i32 0, i32 8
  %47 = call i32 @md_unregister_thread(i32* %46)
  %48 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %49 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @lockres_free(i32 %50)
  %52 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %53 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @lockres_free(i32 %54)
  %56 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %57 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @lockres_free(i32 %58)
  %60 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %61 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @lockres_free(i32 %62)
  %64 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %65 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @lockres_free(i32 %66)
  %68 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %69 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @lockres_free(i32 %70)
  %72 = load %struct.mddev*, %struct.mddev** %3, align 8
  %73 = call i32 @unlock_all_bitmaps(%struct.mddev* %72)
  %74 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %75 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dlm_release_lockspace(i32 %76, i32 2)
  %78 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %79 = call i32 @kfree(%struct.md_cluster_info* %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %37, %10
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @resync_bitmap(%struct.mddev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @md_unregister_thread(i32*) #1

declare dso_local i32 @lockres_free(i32) #1

declare dso_local i32 @unlock_all_bitmaps(%struct.mddev*) #1

declare dso_local i32 @dlm_release_lockspace(i32, i32) #1

declare dso_local i32 @kfree(%struct.md_cluster_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
