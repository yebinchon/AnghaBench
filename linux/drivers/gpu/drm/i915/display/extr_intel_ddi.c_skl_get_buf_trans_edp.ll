; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_skl_get_buf_trans_edp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_skl_get_buf_trans_edp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddi_buf_trans = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@skl_y_ddi_translations_edp = common dso_local global %struct.ddi_buf_trans* null, align 8
@skl_u_ddi_translations_edp = common dso_local global %struct.ddi_buf_trans* null, align 8
@skl_ddi_translations_edp = common dso_local global %struct.ddi_buf_trans* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ddi_buf_trans* (%struct.drm_i915_private*, i32*)* @skl_get_buf_trans_edp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ddi_buf_trans* @skl_get_buf_trans_edp(%struct.drm_i915_private* %0, i32* %1) #0 {
  %3 = alloca %struct.ddi_buf_trans*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %2
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = call i64 @IS_SKL_ULX(%struct.drm_i915_private* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %18 = call i64 @IS_KBL_ULX(%struct.drm_i915_private* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %22 = call i64 @IS_CFL_ULX(%struct.drm_i915_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %16, %12
  %25 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @skl_y_ddi_translations_edp, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.ddi_buf_trans* %25)
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @skl_y_ddi_translations_edp, align 8
  store %struct.ddi_buf_trans* %28, %struct.ddi_buf_trans** %3, align 8
  br label %67

29:                                               ; preds = %20
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %31 = call i64 @IS_SKL_ULT(%struct.drm_i915_private* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %35 = call i64 @IS_KBL_ULT(%struct.drm_i915_private* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %39 = call i64 @IS_CFL_ULT(%struct.drm_i915_private* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37, %33, %29
  %42 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @skl_u_ddi_translations_edp, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.ddi_buf_trans* %42)
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @skl_u_ddi_translations_edp, align 8
  store %struct.ddi_buf_trans* %45, %struct.ddi_buf_trans** %3, align 8
  br label %67

46:                                               ; preds = %37
  %47 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @skl_ddi_translations_edp, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.ddi_buf_trans* %47)
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  %50 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** @skl_ddi_translations_edp, align 8
  store %struct.ddi_buf_trans* %50, %struct.ddi_buf_trans** %3, align 8
  br label %67

51:                                               ; preds = %2
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %53 = call i64 @IS_KABYLAKE(%struct.drm_i915_private* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %57 = call i64 @IS_COFFEELAKE(%struct.drm_i915_private* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55, %51
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call %struct.ddi_buf_trans* @kbl_get_buf_trans_dp(%struct.drm_i915_private* %60, i32* %61)
  store %struct.ddi_buf_trans* %62, %struct.ddi_buf_trans** %3, align 8
  br label %67

63:                                               ; preds = %55
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call %struct.ddi_buf_trans* @skl_get_buf_trans_dp(%struct.drm_i915_private* %64, i32* %65)
  store %struct.ddi_buf_trans* %66, %struct.ddi_buf_trans** %3, align 8
  br label %67

67:                                               ; preds = %63, %59, %46, %41, %24
  %68 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** %3, align 8
  ret %struct.ddi_buf_trans* %68
}

declare dso_local i64 @IS_SKL_ULX(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_KBL_ULX(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CFL_ULX(%struct.drm_i915_private*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ddi_buf_trans*) #1

declare dso_local i64 @IS_SKL_ULT(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_KBL_ULT(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CFL_ULT(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_KABYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_COFFEELAKE(%struct.drm_i915_private*) #1

declare dso_local %struct.ddi_buf_trans* @kbl_get_buf_trans_dp(%struct.drm_i915_private*, i32*) #1

declare dso_local %struct.ddi_buf_trans* @skl_get_buf_trans_dp(%struct.drm_i915_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
