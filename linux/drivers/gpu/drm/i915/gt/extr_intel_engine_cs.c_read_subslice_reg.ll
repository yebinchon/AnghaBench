; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_read_subslice_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_read_subslice_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.intel_uncore*, %struct.drm_i915_private* }
%struct.intel_uncore = type { i32 }
%struct.drm_i915_private = type { i32 }

@GEN11_MCR_SLICE_MASK = common dso_local global i32 0, align 4
@GEN11_MCR_SUBSLICE_MASK = common dso_local global i32 0, align 4
@GEN8_MCR_SLICE_MASK = common dso_local global i32 0, align 4
@GEN8_MCR_SUBSLICE_MASK = common dso_local global i32 0, align 4
@FW_REG_READ = common dso_local global i32 0, align 4
@GEN8_MCR_SELECTOR = common dso_local global i32 0, align 4
@FW_REG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*, i32, i32, i32)* @read_subslice_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_subslice_reg(%struct.intel_engine_cs* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.intel_engine_cs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca %struct.intel_uncore*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %18 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %17, i32 0, i32 1
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %18, align 8
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %9, align 8
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %21 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %20, i32 0, i32 0
  %22 = load %struct.intel_uncore*, %struct.intel_uncore** %21, align 8
  store %struct.intel_uncore* %22, %struct.intel_uncore** %10, align 8
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %24 = call i32 @INTEL_GEN(%struct.drm_i915_private* %23)
  %25 = icmp sge i32 %24, 11
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load i32, i32* @GEN11_MCR_SLICE_MASK, align 4
  %28 = load i32, i32* @GEN11_MCR_SUBSLICE_MASK, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @GEN11_MCR_SLICE(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @GEN11_MCR_SUBSLICE(i32 %32)
  %34 = or i32 %31, %33
  store i32 %34, i32* %12, align 4
  br label %44

35:                                               ; preds = %4
  %36 = load i32, i32* @GEN8_MCR_SLICE_MASK, align 4
  %37 = load i32, i32* @GEN8_MCR_SUBSLICE_MASK, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @GEN8_MCR_SLICE(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @GEN8_MCR_SUBSLICE(i32 %41)
  %43 = or i32 %40, %42
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %35, %26
  %45 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @FW_REG_READ, align 4
  %48 = call i32 @intel_uncore_forcewake_for_reg(%struct.intel_uncore* %45, i32 %46, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %50 = load i32, i32* @GEN8_MCR_SELECTOR, align 4
  %51 = load i32, i32* @FW_REG_READ, align 4
  %52 = load i32, i32* @FW_REG_WRITE, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @intel_uncore_forcewake_for_reg(%struct.intel_uncore* %49, i32 %50, i32 %53)
  %55 = load i32, i32* %16, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %16, align 4
  %57 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %58 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %57, i32 0, i32 0
  %59 = call i32 @spin_lock_irq(i32* %58)
  %60 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @intel_uncore_forcewake_get__locked(%struct.intel_uncore* %60, i32 %61)
  %63 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %64 = load i32, i32* @GEN8_MCR_SELECTOR, align 4
  %65 = call i32 @intel_uncore_read_fw(%struct.intel_uncore* %63, i32 %64)
  store i32 %65, i32* %13, align 4
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %11, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %13, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %13, align 4
  %73 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %74 = load i32, i32* @GEN8_MCR_SELECTOR, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %73, i32 %74, i32 %75)
  %77 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @intel_uncore_read_fw(%struct.intel_uncore* %77, i32 %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %11, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %13, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %13, align 4
  %89 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %90 = load i32, i32* @GEN8_MCR_SELECTOR, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %89, i32 %90, i32 %91)
  %93 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @intel_uncore_forcewake_put__locked(%struct.intel_uncore* %93, i32 %94)
  %96 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %97 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock_irq(i32* %97)
  %99 = load i32, i32* %15, align 4
  ret i32 %99
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @GEN11_MCR_SLICE(i32) #1

declare dso_local i32 @GEN11_MCR_SUBSLICE(i32) #1

declare dso_local i32 @GEN8_MCR_SLICE(i32) #1

declare dso_local i32 @GEN8_MCR_SUBSLICE(i32) #1

declare dso_local i32 @intel_uncore_forcewake_for_reg(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @intel_uncore_forcewake_get__locked(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_uncore_read_fw(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_uncore_write_fw(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @intel_uncore_forcewake_put__locked(%struct.intel_uncore*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
