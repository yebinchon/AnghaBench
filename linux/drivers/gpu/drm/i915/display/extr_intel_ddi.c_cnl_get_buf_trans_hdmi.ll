; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_cnl_get_buf_trans_hdmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_cnl_get_buf_trans_hdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnl_ddi_buf_trans = type { i32 }
%struct.drm_i915_private = type { i32 }

@CNL_PORT_COMP_DW3 = common dso_local global i32 0, align 4
@VOLTAGE_INFO_MASK = common dso_local global i64 0, align 8
@VOLTAGE_INFO_0_85V = common dso_local global i64 0, align 8
@cnl_ddi_translations_hdmi_0_85V = common dso_local global %struct.cnl_ddi_buf_trans* null, align 8
@VOLTAGE_INFO_0_95V = common dso_local global i64 0, align 8
@cnl_ddi_translations_hdmi_0_95V = common dso_local global %struct.cnl_ddi_buf_trans* null, align 8
@VOLTAGE_INFO_1_05V = common dso_local global i64 0, align 8
@cnl_ddi_translations_hdmi_1_05V = common dso_local global %struct.cnl_ddi_buf_trans* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cnl_ddi_buf_trans* (%struct.drm_i915_private*, i32*)* @cnl_get_buf_trans_hdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cnl_ddi_buf_trans* @cnl_get_buf_trans_hdmi(%struct.drm_i915_private* %0, i32* %1) #0 {
  %3 = alloca %struct.cnl_ddi_buf_trans*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @CNL_PORT_COMP_DW3, align 4
  %8 = call i64 @I915_READ(i32 %7)
  %9 = load i64, i64* @VOLTAGE_INFO_MASK, align 8
  %10 = and i64 %8, %9
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @VOLTAGE_INFO_0_85V, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @cnl_ddi_translations_hdmi_0_85V, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.cnl_ddi_buf_trans* %15)
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @cnl_ddi_translations_hdmi_0_85V, align 8
  store %struct.cnl_ddi_buf_trans* %18, %struct.cnl_ddi_buf_trans** %3, align 8
  br label %44

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @VOLTAGE_INFO_0_95V, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @cnl_ddi_translations_hdmi_0_95V, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.cnl_ddi_buf_trans* %24)
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @cnl_ddi_translations_hdmi_0_95V, align 8
  store %struct.cnl_ddi_buf_trans* %27, %struct.cnl_ddi_buf_trans** %3, align 8
  br label %44

28:                                               ; preds = %19
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @VOLTAGE_INFO_1_05V, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @cnl_ddi_translations_hdmi_1_05V, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.cnl_ddi_buf_trans* %33)
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @cnl_ddi_translations_hdmi_1_05V, align 8
  store %struct.cnl_ddi_buf_trans* %36, %struct.cnl_ddi_buf_trans** %3, align 8
  br label %44

37:                                               ; preds = %28
  %38 = load i32*, i32** %5, align 8
  store i32 1, i32* %38, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @MISSING_CASE(i64 %39)
  br label %41

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  store %struct.cnl_ddi_buf_trans* null, %struct.cnl_ddi_buf_trans** %3, align 8
  br label %44

44:                                               ; preds = %43, %32, %23, %14
  %45 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** %3, align 8
  ret %struct.cnl_ddi_buf_trans* %45
}

declare dso_local i64 @I915_READ(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.cnl_ddi_buf_trans*) #1

declare dso_local i32 @MISSING_CASE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
