; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_recover_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_recover_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_thread = type { %struct.mddev* }
%struct.mddev = type { i64, i64, i32, i64, i32, %struct.md_cluster_info* }
%struct.md_cluster_info = type { i32, i64, i32, i64, i64 }
%struct.dlm_lock_resource = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"bitmap%04d\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"md-cluster: Cannot initialize bitmaps\0A\00", align 1
@DLM_LOCK_PW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"md-cluster: Could not DLM lock %s: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"md-cluster: Could not copy data from bitmap %d\0A\00", align 1
@MD_RESYNCING_REMOTE = common dso_local global i32 0, align 4
@MD_RECOVERY_RESHAPE = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.md_thread*)* @recover_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recover_bitmaps(%struct.md_thread* %0) #0 {
  %2 = alloca %struct.md_thread*, align 8
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.md_cluster_info*, align 8
  %5 = alloca %struct.dlm_lock_resource*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.md_thread* %0, %struct.md_thread** %2, align 8
  %11 = load %struct.md_thread*, %struct.md_thread** %2, align 8
  %12 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %11, i32 0, i32 0
  %13 = load %struct.mddev*, %struct.mddev** %12, align 8
  store %struct.mddev* %13, %struct.mddev** %3, align 8
  %14 = load %struct.mddev*, %struct.mddev** %3, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 5
  %16 = load %struct.md_cluster_info*, %struct.md_cluster_info** %15, align 8
  store %struct.md_cluster_info* %16, %struct.md_cluster_info** %4, align 8
  br label %17

17:                                               ; preds = %128, %1
  %18 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %19 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %135

22:                                               ; preds = %17
  %23 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %24 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @fls64(i32 %26)
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @snprintf(i8* %29, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.mddev*, %struct.mddev** %3, align 8
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %34 = call %struct.dlm_lock_resource* @lockres_init(%struct.mddev* %32, i8* %33, i32* null, i32 1)
  store %struct.dlm_lock_resource* %34, %struct.dlm_lock_resource** %5, align 8
  %35 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %36 = icmp ne %struct.dlm_lock_resource* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %22
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %128

39:                                               ; preds = %22
  %40 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %41 = load i32, i32* @DLM_LOCK_PW, align 4
  %42 = load %struct.mddev*, %struct.mddev** %3, align 8
  %43 = call i32 @dlm_lock_sync_interruptible(%struct.dlm_lock_resource* %40, i32 %41, %struct.mddev* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %47, i32 %48)
  br label %128

50:                                               ; preds = %39
  %51 = load %struct.mddev*, %struct.mddev** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @md_bitmap_copy_from_slot(%struct.mddev* %51, i32 %52, i64* %9, i64* %10, i32 1)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %128

59:                                               ; preds = %50
  %60 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %61 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %60, i32 0, i32 2
  %62 = call i32 @spin_lock_irq(i32* %61)
  %63 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %64 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %66 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %68 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %67, i32 0, i32 0
  store i32 -1, i32* %68, align 8
  %69 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %70 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %69, i32 0, i32 2
  %71 = call i32 @spin_unlock_irq(i32* %70)
  %72 = load i32, i32* @MD_RESYNCING_REMOTE, align 4
  %73 = load %struct.mddev*, %struct.mddev** %3, align 8
  %74 = getelementptr inbounds %struct.mddev, %struct.mddev* %73, i32 0, i32 3
  %75 = call i64 @test_bit(i32 %72, i64* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %59
  %78 = load i32, i32* @MD_RECOVERY_RESHAPE, align 4
  %79 = load %struct.mddev*, %struct.mddev** %3, align 8
  %80 = getelementptr inbounds %struct.mddev, %struct.mddev* %79, i32 0, i32 3
  %81 = call i64 @test_bit(i32 %78, i64* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = load %struct.mddev*, %struct.mddev** %3, align 8
  %85 = getelementptr inbounds %struct.mddev, %struct.mddev* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @MaxSector, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.mddev*, %struct.mddev** %3, align 8
  %91 = getelementptr inbounds %struct.mddev, %struct.mddev* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @md_wakeup_thread(i32 %92)
  br label %94

94:                                               ; preds = %89, %83, %77, %59
  %95 = load i64, i64* %10, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %127

97:                                               ; preds = %94
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.mddev*, %struct.mddev** %3, align 8
  %100 = getelementptr inbounds %struct.mddev, %struct.mddev* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.mddev*, %struct.mddev** %3, align 8
  %106 = getelementptr inbounds %struct.mddev, %struct.mddev* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %103, %97
  %108 = load %struct.mddev*, %struct.mddev** %3, align 8
  %109 = getelementptr inbounds %struct.mddev, %struct.mddev* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @MaxSector, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %107
  %114 = load i32, i32* @MD_RESYNCING_REMOTE, align 4
  %115 = load %struct.mddev*, %struct.mddev** %3, align 8
  %116 = getelementptr inbounds %struct.mddev, %struct.mddev* %115, i32 0, i32 3
  %117 = call i32 @clear_bit(i32 %114, i64* %116)
  %118 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %119 = load %struct.mddev*, %struct.mddev** %3, align 8
  %120 = getelementptr inbounds %struct.mddev, %struct.mddev* %119, i32 0, i32 3
  %121 = call i32 @set_bit(i32 %118, i64* %120)
  %122 = load %struct.mddev*, %struct.mddev** %3, align 8
  %123 = getelementptr inbounds %struct.mddev, %struct.mddev* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @md_wakeup_thread(i32 %124)
  br label %126

126:                                              ; preds = %113, %107
  br label %127

127:                                              ; preds = %126, %94
  br label %128

128:                                              ; preds = %127, %56, %46, %37
  %129 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %130 = call i32 @lockres_free(%struct.dlm_lock_resource* %129)
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.md_cluster_info*, %struct.md_cluster_info** %4, align 8
  %133 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %132, i32 0, i32 1
  %134 = call i32 @clear_bit(i32 %131, i64* %133)
  br label %17

135:                                              ; preds = %17
  ret void
}

declare dso_local i32 @fls64(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dlm_lock_resource* @lockres_init(%struct.mddev*, i8*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @dlm_lock_sync_interruptible(%struct.dlm_lock_resource*, i32, %struct.mddev*) #1

declare dso_local i32 @md_bitmap_copy_from_slot(%struct.mddev*, i32, i64*, i64*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @lockres_free(%struct.dlm_lock_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
