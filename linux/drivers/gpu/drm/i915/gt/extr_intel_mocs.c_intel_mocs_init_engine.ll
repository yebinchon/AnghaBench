; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_mocs.c_intel_mocs_init_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_mocs.c_intel_mocs_init_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, %struct.intel_gt* }
%struct.intel_gt = type { i32, %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }
%struct.drm_i915_mocs_table = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FORCEWAKE_ALL = common dso_local global i32 0, align 4
@I915_MOCS_PTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_mocs_init_engine(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.intel_gt*, align 8
  %4 = alloca %struct.intel_uncore*, align 8
  %5 = alloca %struct.drm_i915_mocs_table, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %9 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %10 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %9, i32 0, i32 1
  %11 = load %struct.intel_gt*, %struct.intel_gt** %10, align 8
  store %struct.intel_gt* %11, %struct.intel_gt** %3, align 8
  %12 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %13 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %12, i32 0, i32 1
  %14 = load %struct.intel_uncore*, %struct.intel_uncore** %13, align 8
  store %struct.intel_uncore* %14, %struct.intel_uncore** %4, align 8
  %15 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %16 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @HAS_GLOBAL_MOCS_REGISTERS(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %73

21:                                               ; preds = %1
  %22 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %23 = load i32, i32* @FORCEWAKE_ALL, align 4
  %24 = call i32 @assert_forcewakes_active(%struct.intel_uncore* %22, i32 %23)
  %25 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %26 = call i32 @get_mocs_settings(%struct.intel_gt* %25, %struct.drm_i915_mocs_table* %5)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %73

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %5, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* @I915_MOCS_PTE, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %52, %29
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @get_entry_control(%struct.drm_i915_mocs_table* %5, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %45 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %46 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @mocs_register(i32 %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %44, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %36

55:                                               ; preds = %36
  br label %56

56:                                               ; preds = %70, %55
  %57 = load i32, i32* %6, align 4
  %58 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %5, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %63 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %64 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @mocs_register(i32 %65, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %62, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %6, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %56

73:                                               ; preds = %20, %28, %56
  ret void
}

declare dso_local i64 @HAS_GLOBAL_MOCS_REGISTERS(i32) #1

declare dso_local i32 @assert_forcewakes_active(%struct.intel_uncore*, i32) #1

declare dso_local i32 @get_mocs_settings(%struct.intel_gt*, %struct.drm_i915_mocs_table*) #1

declare dso_local i32 @get_entry_control(%struct.drm_i915_mocs_table*, i32) #1

declare dso_local i32 @intel_uncore_write_fw(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @mocs_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
