; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_ibx_irq_postinstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_ibx_irq_postinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@SDE_GMBUS = common dso_local global i32 0, align 4
@SDE_AUX_MASK = common dso_local global i32 0, align 4
@SDE_POISON = common dso_local global i32 0, align 4
@SDE_GMBUS_CPT = common dso_local global i32 0, align 4
@SDE_AUX_MASK_CPT = common dso_local global i32 0, align 4
@SDEIIR = common dso_local global i32 0, align 4
@SDEIMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @ibx_irq_postinstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibx_irq_postinstall(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = call i64 @HAS_PCH_NOP(%struct.drm_i915_private* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %59

8:                                                ; preds = %1
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, i32* @SDE_GMBUS, align 4
  %14 = load i32, i32* @SDE_AUX_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SDE_POISON, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %3, align 4
  br label %33

18:                                               ; preds = %8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %20 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %24 = call i64 @HAS_PCH_LPT(%struct.drm_i915_private* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %18
  %27 = load i32, i32* @SDE_GMBUS_CPT, align 4
  %28 = load i32, i32* @SDE_AUX_MASK_CPT, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @SDE_GMBUS_CPT, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %26
  br label %33

33:                                               ; preds = %32, %12
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 0
  %36 = load i32, i32* @SDEIIR, align 4
  %37 = call i32 @gen3_assert_iir_is_zero(i32* %35, i32 %36)
  %38 = load i32, i32* @SDEIMR, align 4
  %39 = load i32, i32* %3, align 4
  %40 = xor i32 %39, -1
  %41 = call i32 @I915_WRITE(i32 %38, i32 %40)
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %33
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %47 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %51 = call i64 @HAS_PCH_LPT(%struct.drm_i915_private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %45, %33
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %55 = call i32 @ibx_hpd_detection_setup(%struct.drm_i915_private* %54)
  br label %59

56:                                               ; preds = %49
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %58 = call i32 @spt_hpd_detection_setup(%struct.drm_i915_private* %57)
  br label %59

59:                                               ; preds = %7, %56, %53
  ret void
}

declare dso_local i64 @HAS_PCH_NOP(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_LPT(%struct.drm_i915_private*) #1

declare dso_local i32 @gen3_assert_iir_is_zero(i32*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @ibx_hpd_detection_setup(%struct.drm_i915_private*) #1

declare dso_local i32 @spt_hpd_detection_setup(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
