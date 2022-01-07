; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_workload_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_workload_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workload_thread_param = type { i32, %struct.intel_gvt* }
%struct.intel_gvt = type { %struct.TYPE_2__*, %struct.intel_gvt_workload_scheduler }
%struct.TYPE_2__ = type { i32, %struct.intel_runtime_pm }
%struct.intel_runtime_pm = type { i32 }
%struct.intel_gvt_workload_scheduler = type { i32* }
%struct.intel_vgpu_workload = type { %struct.intel_vgpu_workload*, i32, %struct.intel_vgpu_workload*, %struct.intel_vgpu* }
%struct.intel_vgpu = type { i32 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"workload thread for ring %d started\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"ring id %d next workload %p vgpu %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"ring id %d will dispatch workload %p\0A\00", align 1
@FORCEWAKE_ALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"fail to dispatch workload, skip\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"ring id %d wait workload %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"will complete workload %p, status: %d\0A\00", align 1
@GVT_FAILSAFE_GUEST_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @workload_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workload_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.workload_thread_param*, align 8
  %4 = alloca %struct.intel_gvt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_gvt_workload_scheduler*, align 8
  %7 = alloca %struct.intel_vgpu_workload*, align 8
  %8 = alloca %struct.intel_vgpu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_runtime_pm*, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.workload_thread_param*
  store %struct.workload_thread_param* %13, %struct.workload_thread_param** %3, align 8
  %14 = load %struct.workload_thread_param*, %struct.workload_thread_param** %3, align 8
  %15 = getelementptr inbounds %struct.workload_thread_param, %struct.workload_thread_param* %14, i32 0, i32 1
  %16 = load %struct.intel_gvt*, %struct.intel_gvt** %15, align 8
  store %struct.intel_gvt* %16, %struct.intel_gvt** %4, align 8
  %17 = load %struct.workload_thread_param*, %struct.workload_thread_param** %3, align 8
  %18 = getelementptr inbounds %struct.workload_thread_param, %struct.workload_thread_param* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %21 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %20, i32 0, i32 1
  store %struct.intel_gvt_workload_scheduler* %21, %struct.intel_gvt_workload_scheduler** %6, align 8
  store %struct.intel_vgpu_workload* null, %struct.intel_vgpu_workload** %7, align 8
  store %struct.intel_vgpu* null, %struct.intel_vgpu** %8, align 8
  %22 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %23 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call i32 @INTEL_GEN(%struct.TYPE_2__* %24)
  %26 = icmp sge i32 %25, 9
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @wait, align 4
  %29 = load i32, i32* @woken_wake_function, align 4
  %30 = call i32 @DEFINE_WAIT_FUNC(i32 %28, i32 %29)
  %31 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %32 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store %struct.intel_runtime_pm* %34, %struct.intel_runtime_pm** %11, align 8
  %35 = load %struct.workload_thread_param*, %struct.workload_thread_param** %3, align 8
  %36 = call i32 @kfree(%struct.workload_thread_param* %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %158, %1
  %40 = call i32 (...) @kthread_should_stop()
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %159

43:                                               ; preds = %39
  %44 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %6, align 8
  %45 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @add_wait_queue(i32* %49, i32* @wait)
  br label %51

51:                                               ; preds = %62, %43
  %52 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call %struct.intel_vgpu_workload* @pick_next_workload(%struct.intel_gvt* %52, i32 %53)
  store %struct.intel_vgpu_workload* %54, %struct.intel_vgpu_workload** %7, align 8
  %55 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %7, align 8
  %56 = icmp ne %struct.intel_vgpu_workload* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %66

58:                                               ; preds = %51
  %59 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %60 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %61 = call i32 @wait_woken(i32* @wait, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %58
  %63 = call i32 (...) @kthread_should_stop()
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br i1 %65, label %51, label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %6, align 8
  %68 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i32 @remove_wait_queue(i32* %72, i32* @wait)
  %74 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %7, align 8
  %75 = icmp ne %struct.intel_vgpu_workload* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %66
  br label %159

77:                                               ; preds = %66
  %78 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %7, align 8
  %79 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %78, i32 0, i32 2
  %80 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %79, align 8
  %81 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %7, align 8
  %82 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %7, align 8
  %83 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %82, i32 0, i32 3
  %84 = load %struct.intel_vgpu*, %struct.intel_vgpu** %83, align 8
  %85 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload*, ...) @gvt_dbg_sched(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.intel_vgpu_workload* %80, %struct.intel_vgpu_workload* %81, i32 %86)
  %88 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %11, align 8
  %89 = call i32 @intel_runtime_pm_get(%struct.intel_runtime_pm* %88)
  %90 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %7, align 8
  %91 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %90, i32 0, i32 2
  %92 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %91, align 8
  %93 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %7, align 8
  %94 = call i32 (i8*, %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload*, ...) @gvt_dbg_sched(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), %struct.intel_vgpu_workload* %92, %struct.intel_vgpu_workload* %93)
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %77
  %98 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %99 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* @FORCEWAKE_ALL, align 4
  %103 = call i32 @intel_uncore_forcewake_get(i32* %101, i32 %102)
  br label %104

104:                                              ; preds = %97, %77
  %105 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %7, align 8
  %106 = call i32 @update_vreg_in_ctx(%struct.intel_vgpu_workload* %105)
  %107 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %7, align 8
  %108 = call i32 @dispatch_workload(%struct.intel_vgpu_workload* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %7, align 8
  %113 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %112, i32 0, i32 3
  %114 = load %struct.intel_vgpu*, %struct.intel_vgpu** %113, align 8
  store %struct.intel_vgpu* %114, %struct.intel_vgpu** %8, align 8
  %115 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %127

116:                                              ; preds = %104
  %117 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %7, align 8
  %118 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %117, i32 0, i32 2
  %119 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %118, align 8
  %120 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %7, align 8
  %121 = call i32 (i8*, %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload*, ...) @gvt_dbg_sched(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), %struct.intel_vgpu_workload* %119, %struct.intel_vgpu_workload* %120)
  %122 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %7, align 8
  %123 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %126 = call i32 @i915_request_wait(i32 %124, i32 0, i32 %125)
  br label %127

127:                                              ; preds = %116, %111
  %128 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %7, align 8
  %129 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %7, align 8
  %130 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %129, i32 0, i32 0
  %131 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %130, align 8
  %132 = call i32 (i8*, %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload*, ...) @gvt_dbg_sched(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), %struct.intel_vgpu_workload* %128, %struct.intel_vgpu_workload* %131)
  %133 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @complete_current_workload(%struct.intel_gvt* %133, i32 %134)
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %127
  %139 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %140 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %139, i32 0, i32 0
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* @FORCEWAKE_ALL, align 4
  %144 = call i32 @intel_uncore_forcewake_put(i32* %142, i32 %143)
  br label %145

145:                                              ; preds = %138, %127
  %146 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %11, align 8
  %147 = call i32 @intel_runtime_pm_put_unchecked(%struct.intel_runtime_pm* %146)
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load i32, i32* %9, align 4
  %152 = call i64 @vgpu_is_vm_unhealthy(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load %struct.intel_vgpu*, %struct.intel_vgpu** %8, align 8
  %156 = load i32, i32* @GVT_FAILSAFE_GUEST_ERR, align 4
  %157 = call i32 @enter_failsafe_mode(%struct.intel_vgpu* %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %150, %145
  br label %39

159:                                              ; preds = %76, %39
  ret i32 0
}

declare dso_local i32 @INTEL_GEN(%struct.TYPE_2__*) #1

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @kfree(%struct.workload_thread_param*) #1

declare dso_local i32 @gvt_dbg_core(i8*, i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local %struct.intel_vgpu_workload* @pick_next_workload(%struct.intel_gvt*, i32) #1

declare dso_local i32 @wait_woken(i32*, i32, i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @gvt_dbg_sched(i8*, %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload*, ...) #1

declare dso_local i32 @intel_runtime_pm_get(%struct.intel_runtime_pm*) #1

declare dso_local i32 @intel_uncore_forcewake_get(i32*, i32) #1

declare dso_local i32 @update_vreg_in_ctx(%struct.intel_vgpu_workload*) #1

declare dso_local i32 @dispatch_workload(%struct.intel_vgpu_workload*) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

declare dso_local i32 @i915_request_wait(i32, i32, i32) #1

declare dso_local i32 @complete_current_workload(%struct.intel_gvt*, i32) #1

declare dso_local i32 @intel_uncore_forcewake_put(i32*, i32) #1

declare dso_local i32 @intel_runtime_pm_put_unchecked(%struct.intel_runtime_pm*) #1

declare dso_local i64 @vgpu_is_vm_unhealthy(i32) #1

declare dso_local i32 @enter_failsafe_mode(%struct.intel_vgpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
