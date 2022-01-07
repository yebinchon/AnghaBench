; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_intel_engine_apply_whitelist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_intel_engine_apply_whitelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, %struct.intel_uncore*, %struct.i915_wa_list }
%struct.intel_uncore = type { i32 }
%struct.i915_wa_list = type { i32, %struct.i915_wa* }
%struct.i915_wa = type { i32 }

@RING_MAX_NONPRIV_SLOTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_engine_apply_whitelist(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.i915_wa_list*, align 8
  %4 = alloca %struct.intel_uncore*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_wa*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %9 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %8, i32 0, i32 2
  store %struct.i915_wa_list* %9, %struct.i915_wa_list** %3, align 8
  %10 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %11 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %10, i32 0, i32 1
  %12 = load %struct.intel_uncore*, %struct.intel_uncore** %11, align 8
  store %struct.intel_uncore* %12, %struct.intel_uncore** %4, align 8
  %13 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %14 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %17 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %63

21:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %22 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %23 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %22, i32 0, i32 1
  %24 = load %struct.i915_wa*, %struct.i915_wa** %23, align 8
  store %struct.i915_wa* %24, %struct.i915_wa** %6, align 8
  br label %25

25:                                               ; preds = %41, %21
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.i915_wa_list*, %struct.i915_wa_list** %3, align 8
  %28 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @RING_FORCE_TO_NONPRIV(i32 %33, i32 %34)
  %36 = load %struct.i915_wa*, %struct.i915_wa** %6, align 8
  %37 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @i915_mmio_reg_offset(i32 %38)
  %40 = call i32 @intel_uncore_write(%struct.intel_uncore* %32, i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %7, align 4
  %44 = load %struct.i915_wa*, %struct.i915_wa** %6, align 8
  %45 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %44, i32 1
  store %struct.i915_wa* %45, %struct.i915_wa** %6, align 8
  br label %25

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %60, %46
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @RING_MAX_NONPRIV_SLOTS, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @RING_FORCE_TO_NONPRIV(i32 %53, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @RING_NOPID(i32 %56)
  %58 = call i32 @i915_mmio_reg_offset(i32 %57)
  %59 = call i32 @intel_uncore_write(%struct.intel_uncore* %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %47

63:                                               ; preds = %20, %47
  ret void
}

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @RING_FORCE_TO_NONPRIV(i32, i32) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @RING_NOPID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
