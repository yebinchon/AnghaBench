; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_drop_caches_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_drop_caches_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Dropping caches: 0x%08llx [0x%08llx]\0A\00", align 1
@DROP_ALL = common dso_local global i32 0, align 4
@DROP_RESET_ACTIVE = common dso_local global i32 0, align 4
@I915_IDLE_ENGINES_TIMEOUT = common dso_local global i32 0, align 4
@DROP_ACTIVE = common dso_local global i32 0, align 4
@DROP_IDLE = common dso_local global i32 0, align 4
@DROP_RETIRE = common dso_local global i32 0, align 4
@DROP_RESET_SEQNO = common dso_local global i32 0, align 4
@I915_WAIT_INTERRUPTIBLE = common dso_local global i32 0, align 4
@I915_WAIT_LOCKED = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@ALL_ENGINES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DROP_BOUND = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i32 0, align 4
@I915_SHRINK_BOUND = common dso_local global i32 0, align 4
@DROP_UNBOUND = common dso_local global i32 0, align 4
@I915_SHRINK_UNBOUND = common dso_local global i32 0, align 4
@DROP_SHRINK_ALL = common dso_local global i32 0, align 4
@DROP_FREED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @i915_drop_caches_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_drop_caches_set(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @DROP_ALL, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @DROP_RESET_ACTIVE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 1
  %22 = call i32 @intel_engines_are_idle(i32* %21)
  %23 = load i32, i32* @I915_IDLE_ENGINES_TIMEOUT, align 4
  %24 = call i64 @wait_for(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 1
  %29 = call i32 @intel_gt_set_wedged(i32* %28)
  br label %30

30:                                               ; preds = %26, %19, %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @DROP_ACTIVE, align 4
  %33 = load i32, i32* @DROP_IDLE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @DROP_RETIRE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @DROP_RESET_SEQNO, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %31, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %107

41:                                               ; preds = %30
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock_interruptible(i32* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %177

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @DROP_IDLE, align 4
  %56 = load i32, i32* @DROP_ACTIVE, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %62 = load i32, i32* @I915_WAIT_INTERRUPTIBLE, align 4
  %63 = load i32, i32* @I915_WAIT_LOCKED, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %66 = call i32 @i915_gem_wait_for_idle(%struct.drm_i915_private* %61, i32 %64, i32 %65)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %60, %53, %50
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @DROP_IDLE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %77 = load i32, i32* @I915_WAIT_INTERRUPTIBLE, align 4
  %78 = load i32, i32* @I915_WAIT_LOCKED, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %81 = call i32 @i915_gem_wait_for_idle(%struct.drm_i915_private* %76, i32 %79, i32 %80)
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %75, %70, %67
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @DROP_RETIRE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %89 = call i32 @i915_retire_requests(%struct.drm_i915_private* %88)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %92 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %90
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @DROP_IDLE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %104 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %103, i32 0, i32 1
  %105 = call i32 @intel_gt_pm_wait_for_idle(i32* %104)
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %102, %97, %90
  br label %107

107:                                              ; preds = %106, %30
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @DROP_RESET_ACTIVE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %114 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %113, i32 0, i32 1
  %115 = call i64 @intel_gt_terminally_wedged(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %119 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %118, i32 0, i32 1
  %120 = load i32, i32* @ALL_ENGINES, align 4
  %121 = call i32 @intel_gt_handle_error(i32* %119, i32 %120, i32 0, i32* null)
  br label %122

122:                                              ; preds = %117, %112, %107
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = call i32 @fs_reclaim_acquire(i32 %123)
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @DROP_BOUND, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %131 = load i32, i32* @LONG_MAX, align 4
  %132 = load i32, i32* @I915_SHRINK_BOUND, align 4
  %133 = call i32 @i915_gem_shrink(%struct.drm_i915_private* %130, i32 %131, i32* null, i32 %132)
  br label %134

134:                                              ; preds = %129, %122
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @DROP_UNBOUND, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %141 = load i32, i32* @LONG_MAX, align 4
  %142 = load i32, i32* @I915_SHRINK_UNBOUND, align 4
  %143 = call i32 @i915_gem_shrink(%struct.drm_i915_private* %140, i32 %141, i32* null, i32 %142)
  br label %144

144:                                              ; preds = %139, %134
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @DROP_SHRINK_ALL, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %151 = call i32 @i915_gem_shrink_all(%struct.drm_i915_private* %150)
  br label %152

152:                                              ; preds = %149, %144
  %153 = load i32, i32* @GFP_KERNEL, align 4
  %154 = call i32 @fs_reclaim_release(i32 %153)
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @DROP_IDLE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %152
  %160 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %161 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = call i32 @flush_delayed_work(i32* %162)
  %164 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %165 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = call i32 @flush_work(i32* %166)
  br label %168

168:                                              ; preds = %159, %152
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @DROP_FREED, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %175 = call i32 @i915_gem_drain_freed_objects(%struct.drm_i915_private* %174)
  br label %176

176:                                              ; preds = %173, %168
  store i32 0, i32* %3, align 4
  br label %177

177:                                              ; preds = %176, %48
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @intel_engines_are_idle(i32*) #1

declare dso_local i32 @intel_gt_set_wedged(i32*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @i915_gem_wait_for_idle(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @i915_retire_requests(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_gt_pm_wait_for_idle(i32*) #1

declare dso_local i64 @intel_gt_terminally_wedged(i32*) #1

declare dso_local i32 @intel_gt_handle_error(i32*, i32, i32, i32*) #1

declare dso_local i32 @fs_reclaim_acquire(i32) #1

declare dso_local i32 @i915_gem_shrink(%struct.drm_i915_private*, i32, i32*, i32) #1

declare dso_local i32 @i915_gem_shrink_all(%struct.drm_i915_private*) #1

declare dso_local i32 @fs_reclaim_release(i32) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @i915_gem_drain_freed_objects(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
