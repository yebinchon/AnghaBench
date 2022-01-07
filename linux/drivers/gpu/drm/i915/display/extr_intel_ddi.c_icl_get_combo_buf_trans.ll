; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_get_combo_buf_trans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_get_combo_buf_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnl_ddi_buf_trans = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@icl_combo_phy_ddi_translations_hdmi = common dso_local global %struct.cnl_ddi_buf_trans* null, align 8
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@icl_combo_phy_ddi_translations_edp_hbr3 = common dso_local global %struct.cnl_ddi_buf_trans* null, align 8
@icl_combo_phy_ddi_translations_edp_hbr2 = common dso_local global %struct.cnl_ddi_buf_trans* null, align 8
@icl_combo_phy_ddi_translations_dp_hbr2 = common dso_local global %struct.cnl_ddi_buf_trans* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cnl_ddi_buf_trans* (%struct.drm_i915_private*, i32, i32, i32*)* @icl_get_combo_buf_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cnl_ddi_buf_trans* @icl_get_combo_buf_trans(%struct.drm_i915_private* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.cnl_ddi_buf_trans*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @icl_combo_phy_ddi_translations_hdmi, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.cnl_ddi_buf_trans* %14)
  %16 = load i32*, i32** %9, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @icl_combo_phy_ddi_translations_hdmi, align 8
  store %struct.cnl_ddi_buf_trans* %17, %struct.cnl_ddi_buf_trans** %5, align 8
  br label %53

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 540000
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @icl_combo_phy_ddi_translations_edp_hbr3, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.cnl_ddi_buf_trans* %26)
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @icl_combo_phy_ddi_translations_edp_hbr3, align 8
  store %struct.cnl_ddi_buf_trans* %29, %struct.cnl_ddi_buf_trans** %5, align 8
  br label %53

30:                                               ; preds = %21, %18
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @icl_combo_phy_ddi_translations_edp_hbr2, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.cnl_ddi_buf_trans* %42)
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @icl_combo_phy_ddi_translations_edp_hbr2, align 8
  store %struct.cnl_ddi_buf_trans* %45, %struct.cnl_ddi_buf_trans** %5, align 8
  br label %53

46:                                               ; preds = %34, %30
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @icl_combo_phy_ddi_translations_dp_hbr2, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.cnl_ddi_buf_trans* %49)
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @icl_combo_phy_ddi_translations_dp_hbr2, align 8
  store %struct.cnl_ddi_buf_trans* %52, %struct.cnl_ddi_buf_trans** %5, align 8
  br label %53

53:                                               ; preds = %48, %41, %25, %13
  %54 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** %5, align 8
  ret %struct.cnl_ddi_buf_trans* %54
}

declare dso_local i32 @ARRAY_SIZE(%struct.cnl_ddi_buf_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
