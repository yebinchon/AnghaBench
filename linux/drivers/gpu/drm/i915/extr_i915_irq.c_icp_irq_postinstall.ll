; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_icp_irq_postinstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_icp_irq_postinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@SDE_GMBUS_ICP = common dso_local global i32 0, align 4
@SDEIER = common dso_local global i32 0, align 4
@SDEIIR = common dso_local global i32 0, align 4
@SDEIMR = common dso_local global i32 0, align 4
@TGP_DDI_HPD_ENABLE_MASK = common dso_local global i32 0, align 4
@TGP_TC_HPD_ENABLE_MASK = common dso_local global i32 0, align 4
@ICP_DDI_HPD_ENABLE_MASK = common dso_local global i32 0, align 4
@ICP_TC_HPD_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @icp_irq_postinstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icp_irq_postinstall(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load i32, i32* @SDE_GMBUS_ICP, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @SDEIER, align 4
  %6 = call i64 @I915_READ(i32 %5)
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load i32, i32* @SDEIER, align 4
  %11 = call i32 @I915_WRITE(i32 %10, i32 -1)
  %12 = load i32, i32* @SDEIER, align 4
  %13 = call i32 @POSTING_READ(i32 %12)
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = load i32, i32* @SDEIIR, align 4
  %17 = call i32 @gen3_assert_iir_is_zero(i32* %15, i32 %16)
  %18 = load i32, i32* @SDEIMR, align 4
  %19 = load i32, i32* %3, align 4
  %20 = xor i32 %19, -1
  %21 = call i32 @I915_WRITE(i32 %18, i32 %20)
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = call i64 @HAS_PCH_TGP(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %27 = load i32, i32* @TGP_DDI_HPD_ENABLE_MASK, align 4
  %28 = load i32, i32* @TGP_TC_HPD_ENABLE_MASK, align 4
  %29 = call i32 @icp_hpd_detection_setup(%struct.drm_i915_private* %26, i32 %27, i32 %28)
  br label %44

30:                                               ; preds = %1
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %32 = call i64 @HAS_PCH_MCC(%struct.drm_i915_private* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %36 = load i32, i32* @TGP_DDI_HPD_ENABLE_MASK, align 4
  %37 = call i32 @icp_hpd_detection_setup(%struct.drm_i915_private* %35, i32 %36, i32 0)
  br label %43

38:                                               ; preds = %30
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %40 = load i32, i32* @ICP_DDI_HPD_ENABLE_MASK, align 4
  %41 = load i32, i32* @ICP_TC_HPD_ENABLE_MASK, align 4
  %42 = call i32 @icp_hpd_detection_setup(%struct.drm_i915_private* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %34
  br label %44

44:                                               ; preds = %43, %25
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @gen3_assert_iir_is_zero(i32*, i32) #1

declare dso_local i64 @HAS_PCH_TGP(%struct.drm_i915_private*) #1

declare dso_local i32 @icp_hpd_detection_setup(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @HAS_PCH_MCC(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
