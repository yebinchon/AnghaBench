; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen8_de_port_aux_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen8_de_port_aux_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@TGL_DE_PORT_AUX_DDIA = common dso_local global i32 0, align 4
@TGL_DE_PORT_AUX_DDIB = common dso_local global i32 0, align 4
@TGL_DE_PORT_AUX_DDIC = common dso_local global i32 0, align 4
@GEN8_AUX_CHANNEL_A = common dso_local global i32 0, align 4
@GEN9_AUX_CHANNEL_B = common dso_local global i32 0, align 4
@GEN9_AUX_CHANNEL_C = common dso_local global i32 0, align 4
@GEN9_AUX_CHANNEL_D = common dso_local global i32 0, align 4
@CNL_AUX_CHANNEL_F = common dso_local global i32 0, align 4
@ICL_AUX_CHANNEL_E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @gen8_de_port_aux_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen8_de_port_aux_mask(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %6 = call i32 @INTEL_GEN(%struct.drm_i915_private* %5)
  %7 = icmp sge i32 %6, 12
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @TGL_DE_PORT_AUX_DDIA, align 4
  %10 = load i32, i32* @TGL_DE_PORT_AUX_DDIB, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @TGL_DE_PORT_AUX_DDIC, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %2, align 4
  br label %49

14:                                               ; preds = %1
  %15 = load i32, i32* @GEN8_AUX_CHANNEL_A, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = call i32 @INTEL_GEN(%struct.drm_i915_private* %16)
  %18 = icmp sge i32 %17, 9
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i32, i32* @GEN9_AUX_CHANNEL_B, align 4
  %21 = load i32, i32* @GEN9_AUX_CHANNEL_C, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @GEN9_AUX_CHANNEL_D, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %19, %14
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = call i64 @IS_CNL_WITH_PORT_F(%struct.drm_i915_private* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %33 = call i64 @IS_GEN(%struct.drm_i915_private* %32, i32 11)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @CNL_AUX_CHANNEL_F, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %41 = call i64 @IS_GEN(%struct.drm_i915_private* %40, i32 11)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @ICL_AUX_CHANNEL_E, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %8
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CNL_WITH_PORT_F(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
