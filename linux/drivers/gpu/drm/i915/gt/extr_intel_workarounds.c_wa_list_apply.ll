; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_wa_list_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_wa_list_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32 }
%struct.i915_wa_list = type { i32, i32, %struct.i915_wa* }
%struct.i915_wa = type { i32, i32, i32 }

@CONFIG_DRM_I915_DEBUG_GEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"application\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore*, %struct.i915_wa_list*)* @wa_list_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wa_list_apply(%struct.intel_uncore* %0, %struct.i915_wa_list* %1) #0 {
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.i915_wa*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_uncore* %0, %struct.intel_uncore** %3, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %4, align 8
  %9 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %10 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %74

14:                                               ; preds = %2
  %15 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %16 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %17 = call i32 @wal_get_fw_for_rmw(%struct.intel_uncore* %15, %struct.i915_wa_list* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %19 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @intel_uncore_forcewake_get__locked(%struct.intel_uncore* %22, i32 %23)
  store i32 0, i32* %8, align 4
  %25 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %26 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %25, i32 0, i32 2
  %27 = load %struct.i915_wa*, %struct.i915_wa** %26, align 8
  store %struct.i915_wa* %27, %struct.i915_wa** %7, align 8
  br label %28

28:                                               ; preds = %61, %14
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %31 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %28
  %35 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %36 = load %struct.i915_wa*, %struct.i915_wa** %7, align 8
  %37 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.i915_wa*, %struct.i915_wa** %7, align 8
  %40 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.i915_wa*, %struct.i915_wa** %7, align 8
  %43 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @intel_uncore_rmw_fw(%struct.intel_uncore* %35, i32 %38, i32 %41, i32 %44)
  %46 = load i32, i32* @CONFIG_DRM_I915_DEBUG_GEM, align 4
  %47 = call i64 @IS_ENABLED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %34
  %50 = load %struct.i915_wa*, %struct.i915_wa** %7, align 8
  %51 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %52 = load %struct.i915_wa*, %struct.i915_wa** %7, align 8
  %53 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @intel_uncore_read_fw(%struct.intel_uncore* %51, i32 %54)
  %56 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %57 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @wa_verify(%struct.i915_wa* %50, i32 %55, i32 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %49, %34
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  %64 = load %struct.i915_wa*, %struct.i915_wa** %7, align 8
  %65 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %64, i32 1
  store %struct.i915_wa* %65, %struct.i915_wa** %7, align 8
  br label %28

66:                                               ; preds = %28
  %67 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @intel_uncore_forcewake_put__locked(%struct.intel_uncore* %67, i32 %68)
  %70 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %71 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %70, i32 0, i32 0
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  br label %74

74:                                               ; preds = %66, %13
  ret void
}

declare dso_local i32 @wal_get_fw_for_rmw(%struct.intel_uncore*, %struct.i915_wa_list*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @intel_uncore_forcewake_get__locked(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_uncore_rmw_fw(%struct.intel_uncore*, i32, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @wa_verify(%struct.i915_wa*, i32, i32, i8*) #1

declare dso_local i32 @intel_uncore_read_fw(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_uncore_forcewake_put__locked(%struct.intel_uncore*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
