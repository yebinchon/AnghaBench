; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_hpll_vco.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_hpll_vco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@intel_hpll_vco.blb_vco = internal constant [8 x i32] [i32 3200000, i32 4000000, i32 5333333, i32 4800000, i32 6400000, i32 0, i32 0, i32 0], align 16
@intel_hpll_vco.pnv_vco = internal constant [8 x i32] [i32 3200000, i32 4000000, i32 5333333, i32 4800000, i32 2666667, i32 0, i32 0, i32 0], align 16
@intel_hpll_vco.cl_vco = internal constant [8 x i32] [i32 3200000, i32 4000000, i32 5333333, i32 6400000, i32 3333333, i32 3566667, i32 4266667, i32 0], align 16
@intel_hpll_vco.elk_vco = internal constant [8 x i32] [i32 3200000, i32 4000000, i32 5333333, i32 4800000, i32 0, i32 0, i32 0, i32 0], align 16
@intel_hpll_vco.ctg_vco = internal constant [8 x i32] [i32 3200000, i32 4000000, i32 5333333, i32 6400000, i32 2666667, i32 4266667, i32 0, i32 0], align 16
@HPLLVCO_MOBILE = common dso_local global i32 0, align 4
@HPLLVCO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Bad HPLL VCO (HPLLVCO=0x%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"HPLL VCO %u kHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @intel_hpll_vco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hpll_vco(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = call i64 @IS_GM45(%struct.drm_i915_private* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @intel_hpll_vco.ctg_vco, i64 0, i64 0), i32** %4, align 8
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = call i64 @IS_G45(%struct.drm_i915_private* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @intel_hpll_vco.elk_vco, i64 0, i64 0), i32** %4, align 8
  br label %35

16:                                               ; preds = %11
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = call i64 @IS_I965GM(%struct.drm_i915_private* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @intel_hpll_vco.cl_vco, i64 0, i64 0), i32** %4, align 8
  br label %34

21:                                               ; preds = %16
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @intel_hpll_vco.pnv_vco, i64 0, i64 0), i32** %4, align 8
  br label %33

26:                                               ; preds = %21
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = call i64 @IS_G33(%struct.drm_i915_private* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @intel_hpll_vco.blb_vco, i64 0, i64 0), i32** %4, align 8
  br label %32

31:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %67

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %32, %25
  br label %34

34:                                               ; preds = %33, %20
  br label %35

35:                                               ; preds = %34, %15
  br label %36

36:                                               ; preds = %35, %10
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = call i64 @IS_MOBILE(%struct.drm_i915_private* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %36
  %45 = load i32, i32* @HPLLVCO_MOBILE, align 4
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @HPLLVCO, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = call i32 @I915_READ(i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 7
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %65

62:                                               ; preds = %48
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %31
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @IS_GM45(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G45(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I965GM(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G33(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_MOBILE(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
