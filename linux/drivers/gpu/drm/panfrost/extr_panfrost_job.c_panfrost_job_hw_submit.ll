; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_hw_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_hw_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_job = type { i32, i32, i32, %struct.TYPE_2__*, %struct.panfrost_device* }
%struct.TYPE_2__ = type { i32 }
%struct.panfrost_device = type { i32 }

@JS_CONFIG_START_FLUSH_CLEAN_INVALIDATE = common dso_local global i32 0, align 4
@JS_CONFIG_END_FLUSH_CLEAN_INVALIDATE = common dso_local global i32 0, align 4
@HW_FEATURE_FLUSH_REDUCTION = common dso_local global i32 0, align 4
@JS_CONFIG_ENABLE_FLUSH_REDUCTION = common dso_local global i32 0, align 4
@HW_ISSUE_10649 = common dso_local global i32 0, align 4
@JS_CONFIG_START_MMU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"JS: Submitting atom %p to js[%d] with head=0x%llx\00", align 1
@JS_COMMAND_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.panfrost_job*, i32)* @panfrost_job_hw_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panfrost_job_hw_submit(%struct.panfrost_job* %0, i32 %1) #0 {
  %3 = alloca %struct.panfrost_job*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.panfrost_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.panfrost_job* %0, %struct.panfrost_job** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %10 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %9, i32 0, i32 4
  %11 = load %struct.panfrost_device*, %struct.panfrost_device** %10, align 8
  store %struct.panfrost_device* %11, %struct.panfrost_device** %5, align 8
  %12 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %13 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %16 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pm_runtime_get_sync(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %116

22:                                               ; preds = %2
  %23 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @JS_COMMAND_NEXT(i32 %24)
  %26 = call i32 @job_read(%struct.panfrost_device* %23, i32 %25)
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %31 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pm_runtime_put_sync_autosuspend(i32 %32)
  br label %116

34:                                               ; preds = %22
  %35 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %36 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %37 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @panfrost_mmu_as_get(%struct.panfrost_device* %35, i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @panfrost_devfreq_record_transition(%struct.panfrost_device* %41, i32 %42)
  %44 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @JS_HEAD_NEXT_LO(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @job_write(%struct.panfrost_device* %44, i32 %46, i32 %47)
  %49 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @JS_HEAD_NEXT_HI(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 32
  %54 = call i32 @job_write(%struct.panfrost_device* %49, i32 %51, i32 %53)
  %55 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %56 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %57 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @panfrost_job_write_affinity(%struct.panfrost_device* %55, i32 %58, i32 %59)
  %61 = call i32 @JS_CONFIG_THREAD_PRI(i32 8)
  %62 = load i32, i32* @JS_CONFIG_START_FLUSH_CLEAN_INVALIDATE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @JS_CONFIG_END_FLUSH_CLEAN_INVALIDATE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %69 = load i32, i32* @HW_FEATURE_FLUSH_REDUCTION, align 4
  %70 = call i64 @panfrost_has_hw_feature(%struct.panfrost_device* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %34
  %73 = load i32, i32* @JS_CONFIG_ENABLE_FLUSH_REDUCTION, align 4
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %34
  %77 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %78 = load i32, i32* @HW_ISSUE_10649, align 4
  %79 = call i64 @panfrost_has_hw_issue(%struct.panfrost_device* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @JS_CONFIG_START_MMU, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @JS_CONFIG_NEXT(i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @job_write(%struct.panfrost_device* %86, i32 %88, i32 %89)
  %91 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %92 = load i32, i32* @HW_FEATURE_FLUSH_REDUCTION, align 4
  %93 = call i64 @panfrost_has_hw_feature(%struct.panfrost_device* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %85
  %96 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @JS_FLUSH_ID_NEXT(i32 %97)
  %99 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %100 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @job_write(%struct.panfrost_device* %96, i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %95, %85
  %104 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %105 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @dev_dbg(i32 %106, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.panfrost_job* %107, i32 %108, i32 %109)
  %111 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @JS_COMMAND_NEXT(i32 %112)
  %114 = load i32, i32* @JS_COMMAND_START, align 4
  %115 = call i32 @job_write(%struct.panfrost_device* %111, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %103, %29, %21
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @job_read(%struct.panfrost_device*, i32) #1

declare dso_local i32 @JS_COMMAND_NEXT(i32) #1

declare dso_local i32 @pm_runtime_put_sync_autosuspend(i32) #1

declare dso_local i32 @panfrost_mmu_as_get(%struct.panfrost_device*, i32*) #1

declare dso_local i32 @panfrost_devfreq_record_transition(%struct.panfrost_device*, i32) #1

declare dso_local i32 @job_write(%struct.panfrost_device*, i32, i32) #1

declare dso_local i32 @JS_HEAD_NEXT_LO(i32) #1

declare dso_local i32 @JS_HEAD_NEXT_HI(i32) #1

declare dso_local i32 @panfrost_job_write_affinity(%struct.panfrost_device*, i32, i32) #1

declare dso_local i32 @JS_CONFIG_THREAD_PRI(i32) #1

declare dso_local i64 @panfrost_has_hw_feature(%struct.panfrost_device*, i32) #1

declare dso_local i64 @panfrost_has_hw_issue(%struct.panfrost_device*, i32) #1

declare dso_local i32 @JS_CONFIG_NEXT(i32) #1

declare dso_local i32 @JS_FLUSH_ID_NEXT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.panfrost_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
