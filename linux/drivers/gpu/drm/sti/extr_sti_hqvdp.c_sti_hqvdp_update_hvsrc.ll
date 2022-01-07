; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_sti_hqvdp_update_hvsrc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_sti_hqvdp_update_hvsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_hqvdp_hvsrc = type { i32, i32, i32, i32, i32, i32 }

@SCALE_MAX_FOR_LEG_LUT_F = common dso_local global i32 0, align 4
@coef_lut_f_y_legacy = common dso_local global i32* null, align 8
@coef_lut_f_c_legacy = common dso_local global i32* null, align 8
@SHIFT_LUT_F_Y_LEGACY = common dso_local global i32 0, align 4
@SHIFT_LUT_F_C_LEGACY = common dso_local global i32 0, align 4
@SCALE_MAX_FOR_LEG_LUT_E = common dso_local global i32 0, align 4
@coef_lut_e_y_legacy = common dso_local global i32* null, align 8
@coef_lut_e_c_legacy = common dso_local global i32* null, align 8
@SHIFT_LUT_E_Y_LEGACY = common dso_local global i32 0, align 4
@SHIFT_LUT_E_C_LEGACY = common dso_local global i32 0, align 4
@SCALE_MAX_FOR_LEG_LUT_D = common dso_local global i32 0, align 4
@coef_lut_d_y_legacy = common dso_local global i32* null, align 8
@coef_lut_d_c_legacy = common dso_local global i32* null, align 8
@SHIFT_LUT_D_Y_LEGACY = common dso_local global i32 0, align 4
@SHIFT_LUT_D_C_LEGACY = common dso_local global i32 0, align 4
@SCALE_MAX_FOR_LEG_LUT_C = common dso_local global i32 0, align 4
@coef_lut_c_y_legacy = common dso_local global i32* null, align 8
@coef_lut_c_c_legacy = common dso_local global i32* null, align 8
@SHIFT_LUT_C_Y_LEGACY = common dso_local global i32 0, align 4
@SHIFT_LUT_C_C_LEGACY = common dso_local global i32 0, align 4
@coef_lut_b = common dso_local global i32* null, align 8
@SHIFT_LUT_B = common dso_local global i32 0, align 4
@coef_lut_a_legacy = common dso_local global i32* null, align 8
@SHIFT_LUT_A_LEGACY = common dso_local global i32 0, align 4
@HVSRC_HORI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.sti_hqvdp_hvsrc*)* @sti_hqvdp_update_hvsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_hqvdp_update_hvsrc(i32 %0, i32 %1, %struct.sti_hqvdp_hvsrc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sti_hqvdp_hvsrc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.sti_hqvdp_hvsrc* %2, %struct.sti_hqvdp_hvsrc** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SCALE_MAX_FOR_LEG_LUT_F, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32*, i32** @coef_lut_f_y_legacy, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** @coef_lut_f_c_legacy, align 8
  store i32* %16, i32** %7, align 8
  %17 = load i32, i32* @SHIFT_LUT_F_Y_LEGACY, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @SHIFT_LUT_F_C_LEGACY, align 4
  store i32 %18, i32* %9, align 4
  br label %60

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SCALE_MAX_FOR_LEG_LUT_E, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32*, i32** @coef_lut_e_y_legacy, align 8
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** @coef_lut_e_c_legacy, align 8
  store i32* %25, i32** %7, align 8
  %26 = load i32, i32* @SHIFT_LUT_E_Y_LEGACY, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @SHIFT_LUT_E_C_LEGACY, align 4
  store i32 %27, i32* %9, align 4
  br label %59

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SCALE_MAX_FOR_LEG_LUT_D, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32*, i32** @coef_lut_d_y_legacy, align 8
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** @coef_lut_d_c_legacy, align 8
  store i32* %34, i32** %7, align 8
  %35 = load i32, i32* @SHIFT_LUT_D_Y_LEGACY, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @SHIFT_LUT_D_C_LEGACY, align 4
  store i32 %36, i32* %9, align 4
  br label %58

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SCALE_MAX_FOR_LEG_LUT_C, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32*, i32** @coef_lut_c_y_legacy, align 8
  store i32* %42, i32** %8, align 8
  %43 = load i32*, i32** @coef_lut_c_c_legacy, align 8
  store i32* %43, i32** %7, align 8
  %44 = load i32, i32* @SHIFT_LUT_C_Y_LEGACY, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @SHIFT_LUT_C_C_LEGACY, align 4
  store i32 %45, i32* %9, align 4
  br label %57

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @SCALE_MAX_FOR_LEG_LUT_C, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32*, i32** @coef_lut_b, align 8
  store i32* %51, i32** %7, align 8
  store i32* %51, i32** %8, align 8
  %52 = load i32, i32* @SHIFT_LUT_B, align 4
  store i32 %52, i32* %9, align 4
  store i32 %52, i32* %10, align 4
  br label %56

53:                                               ; preds = %46
  %54 = load i32*, i32** @coef_lut_a_legacy, align 8
  store i32* %54, i32** %7, align 8
  store i32* %54, i32** %8, align 8
  %55 = load i32, i32* @SHIFT_LUT_A_LEGACY, align 4
  store i32 %55, i32* %9, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %41
  br label %58

58:                                               ; preds = %57, %32
  br label %59

59:                                               ; preds = %58, %23
  br label %60

60:                                               ; preds = %59, %14
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @HVSRC_HORI, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = shl i32 %65, 16
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.sti_hqvdp_hvsrc*, %struct.sti_hqvdp_hvsrc** %6, align 8
  %70 = getelementptr inbounds %struct.sti_hqvdp_hvsrc, %struct.sti_hqvdp_hvsrc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sti_hqvdp_hvsrc*, %struct.sti_hqvdp_hvsrc** %6, align 8
  %72 = getelementptr inbounds %struct.sti_hqvdp_hvsrc, %struct.sti_hqvdp_hvsrc* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @memcpy(i32 %73, i32* %74, i32 4)
  %76 = load %struct.sti_hqvdp_hvsrc*, %struct.sti_hqvdp_hvsrc** %6, align 8
  %77 = getelementptr inbounds %struct.sti_hqvdp_hvsrc, %struct.sti_hqvdp_hvsrc* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @memcpy(i32 %78, i32* %79, i32 4)
  br label %98

81:                                               ; preds = %60
  %82 = load i32, i32* %9, align 4
  %83 = shl i32 %82, 16
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.sti_hqvdp_hvsrc*, %struct.sti_hqvdp_hvsrc** %6, align 8
  %87 = getelementptr inbounds %struct.sti_hqvdp_hvsrc, %struct.sti_hqvdp_hvsrc* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.sti_hqvdp_hvsrc*, %struct.sti_hqvdp_hvsrc** %6, align 8
  %89 = getelementptr inbounds %struct.sti_hqvdp_hvsrc, %struct.sti_hqvdp_hvsrc* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @memcpy(i32 %90, i32* %91, i32 4)
  %93 = load %struct.sti_hqvdp_hvsrc*, %struct.sti_hqvdp_hvsrc** %6, align 8
  %94 = getelementptr inbounds %struct.sti_hqvdp_hvsrc, %struct.sti_hqvdp_hvsrc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @memcpy(i32 %95, i32* %96, i32 4)
  br label %98

98:                                               ; preds = %81, %64
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
