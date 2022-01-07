; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_cnl_get_buf_trans_edp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_cnl_get_buf_trans_edp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnl_ddi_buf_trans = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CNL_PORT_COMP_DW3 = common dso_local global i32 0, align 4
@VOLTAGE_INFO_MASK = common dso_local global i64 0, align 8
@VOLTAGE_INFO_0_85V = common dso_local global i64 0, align 8
@cnl_ddi_translations_edp_0_85V = common dso_local global %struct.cnl_ddi_buf_trans* null, align 8
@VOLTAGE_INFO_0_95V = common dso_local global i64 0, align 8
@cnl_ddi_translations_edp_0_95V = common dso_local global %struct.cnl_ddi_buf_trans* null, align 8
@VOLTAGE_INFO_1_05V = common dso_local global i64 0, align 8
@cnl_ddi_translations_edp_1_05V = common dso_local global %struct.cnl_ddi_buf_trans* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cnl_ddi_buf_trans* (%struct.drm_i915_private*, i32*)* @cnl_get_buf_trans_edp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cnl_ddi_buf_trans* @cnl_get_buf_trans_edp(%struct.drm_i915_private* %0, i32* %1) #0 {
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
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @VOLTAGE_INFO_0_85V, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @cnl_ddi_translations_edp_0_85V, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.cnl_ddi_buf_trans* %22)
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @cnl_ddi_translations_edp_0_85V, align 8
  store %struct.cnl_ddi_buf_trans* %25, %struct.cnl_ddi_buf_trans** %3, align 8
  br label %55

26:                                               ; preds = %17
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @VOLTAGE_INFO_0_95V, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @cnl_ddi_translations_edp_0_95V, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.cnl_ddi_buf_trans* %31)
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @cnl_ddi_translations_edp_0_95V, align 8
  store %struct.cnl_ddi_buf_trans* %34, %struct.cnl_ddi_buf_trans** %3, align 8
  br label %55

35:                                               ; preds = %26
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @VOLTAGE_INFO_1_05V, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @cnl_ddi_translations_edp_1_05V, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.cnl_ddi_buf_trans* %40)
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** @cnl_ddi_translations_edp_1_05V, align 8
  store %struct.cnl_ddi_buf_trans* %43, %struct.cnl_ddi_buf_trans** %3, align 8
  br label %55

44:                                               ; preds = %35
  %45 = load i32*, i32** %5, align 8
  store i32 1, i32* %45, align 4
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @MISSING_CASE(i64 %46)
  br label %48

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  store %struct.cnl_ddi_buf_trans* null, %struct.cnl_ddi_buf_trans** %3, align 8
  br label %55

51:                                               ; preds = %2
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call %struct.cnl_ddi_buf_trans* @cnl_get_buf_trans_dp(%struct.drm_i915_private* %52, i32* %53)
  store %struct.cnl_ddi_buf_trans* %54, %struct.cnl_ddi_buf_trans** %3, align 8
  br label %55

55:                                               ; preds = %51, %50, %39, %30, %21
  %56 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** %3, align 8
  ret %struct.cnl_ddi_buf_trans* %56
}

declare dso_local i64 @I915_READ(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.cnl_ddi_buf_trans*) #1

declare dso_local i32 @MISSING_CASE(i64) #1

declare dso_local %struct.cnl_ddi_buf_trans* @cnl_get_buf_trans_dp(%struct.drm_i915_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
