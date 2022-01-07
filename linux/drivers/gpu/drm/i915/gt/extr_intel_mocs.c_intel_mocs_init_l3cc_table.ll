; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_mocs.c_intel_mocs_init_l3cc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_mocs.c_intel_mocs_init_l3cc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }
%struct.drm_i915_mocs_table = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@I915_MOCS_PTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gt*)* @intel_mocs_init_l3cc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_mocs_init_l3cc_table(%struct.intel_gt* %0) #0 {
  %2 = alloca %struct.intel_gt*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca %struct.drm_i915_mocs_table, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %2, align 8
  %10 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %11 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %10, i32 0, i32 0
  %12 = load %struct.intel_uncore*, %struct.intel_uncore** %11, align 8
  store %struct.intel_uncore* %12, %struct.intel_uncore** %3, align 8
  %13 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %14 = call i32 @get_mocs_settings(%struct.intel_gt* %13, %struct.drm_i915_mocs_table* %4)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %84

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %4, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* @I915_MOCS_PTE, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %45, %17
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sdiv i32 %27, 2
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = mul i32 2, %31
  %33 = call i32 @get_entry_l3cc(%struct.drm_i915_mocs_table* %4, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = mul i32 2, %34
  %36 = add i32 %35, 1
  %37 = call i32 @get_entry_l3cc(%struct.drm_i915_mocs_table* %4, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @GEN9_LNCFCMOCS(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @l3cc_combine(%struct.drm_i915_mocs_table* %4, i32 %41, i32 %42)
  %44 = call i32 @intel_uncore_write(%struct.intel_uncore* %38, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %30
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %24

48:                                               ; preds = %24
  %49 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = mul i32 2, %54
  %56 = call i32 @get_entry_l3cc(%struct.drm_i915_mocs_table* %4, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @GEN9_LNCFCMOCS(i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @l3cc_combine(%struct.drm_i915_mocs_table* %4, i32 %60, i32 %61)
  %63 = call i32 @intel_uncore_write(%struct.intel_uncore* %57, i32 %59, i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %53, %48
  br label %67

67:                                               ; preds = %81, %66
  %68 = load i32, i32* %5, align 4
  %69 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %4, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %70, 2
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @GEN9_LNCFCMOCS(i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @l3cc_combine(%struct.drm_i915_mocs_table* %4, i32 %77, i32 %78)
  %80 = call i32 @intel_uncore_write(%struct.intel_uncore* %74, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %5, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %67

84:                                               ; preds = %16, %67
  ret void
}

declare dso_local i32 @get_mocs_settings(%struct.intel_gt*, %struct.drm_i915_mocs_table*) #1

declare dso_local i32 @get_entry_l3cc(%struct.drm_i915_mocs_table*, i32) #1

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @GEN9_LNCFCMOCS(i32) #1

declare dso_local i32 @l3cc_combine(%struct.drm_i915_mocs_table*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
