; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_program_multi_taps_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_program_multi_taps_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dc_context* }
%struct.dc_context = type { i32 }

@SCLV_PHASES = common dso_local global i32 0, align 4
@mmDCFEV_MEM_PWR_CTRL = common dso_local global i32 0, align 4
@DCFEV_MEM_PWR_CTRL = common dso_local global i32 0, align 4
@SCLV_COEFF_MEM_PWR_DIS = common dso_local global i32 0, align 4
@mmDCFEV_MEM_PWR_STATUS = common dso_local global i32 0, align 4
@DCFEV_MEM_PWR_STATUS = common dso_local global i32 0, align 4
@SCLV_COEFF_MEM_PWR_STATE = common dso_local global i32 0, align 4
@SCLV_COEF_RAM_SELECT = common dso_local global i32 0, align 4
@SCL_C_RAM_FILTER_TYPE = common dso_local global i32 0, align 4
@SCL_C_RAM_PHASE = common dso_local global i32 0, align 4
@SCL_C_RAM_TAP_PAIR_IDX = common dso_local global i32 0, align 4
@mmSCLV_COEF_RAM_SELECT = common dso_local global i32 0, align 4
@SCLV_COEF_RAM_TAP_DATA = common dso_local global i32 0, align 4
@SCL_C_RAM_EVEN_TAP_COEF_EN = common dso_local global i32 0, align 4
@SCL_C_RAM_EVEN_TAP_COEF = common dso_local global i32 0, align 4
@SCL_C_RAM_ODD_TAP_COEF_EN = common dso_local global i32 0, align 4
@SCL_C_RAM_ODD_TAP_COEF = common dso_local global i32 0, align 4
@mmSCLV_COEF_RAM_TAP_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, i32, i32*, i32)* @program_multi_taps_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_multi_taps_filter(%struct.dce_transform* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.dce_transform*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dc_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.dce_transform* %0, %struct.dce_transform** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %21 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.dc_context*, %struct.dc_context** %22, align 8
  store %struct.dc_context* %23, %struct.dc_context** %9, align 8
  store i32 0, i32* %13, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* @SCLV_PHASES, align 4
  %28 = sdiv i32 %27, 2
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  br label %155

33:                                               ; preds = %4
  %34 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %35 = load i32, i32* @mmDCFEV_MEM_PWR_CTRL, align 4
  %36 = call i32 @dm_read_reg(%struct.dc_context* %34, i32 %35)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* @DCFEV_MEM_PWR_CTRL, align 4
  %40 = load i32, i32* @SCLV_COEFF_MEM_PWR_DIS, align 4
  %41 = call i32 @set_reg_field_value(i32 %38, i32 1, i32 %39, i32 %40)
  %42 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %43 = load i32, i32* @mmDCFEV_MEM_PWR_CTRL, align 4
  %44 = load i32, i32* %18, align 4
  %45 = call i32 @dm_write_reg(%struct.dc_context* %42, i32 %43, i32 %44)
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %60, %33
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 10
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %51 = load i32, i32* @mmDCFEV_MEM_PWR_STATUS, align 4
  %52 = call i32 @dm_read_reg(%struct.dc_context* %50, i32 %51)
  %53 = load i32, i32* @DCFEV_MEM_PWR_STATUS, align 4
  %54 = load i32, i32* @SCLV_COEFF_MEM_PWR_STATE, align 4
  %55 = call i64 @get_reg_field_value(i32 %52, i32 %53, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %63

58:                                               ; preds = %49
  %59 = call i32 @udelay(i32 1)
  br label %60

60:                                               ; preds = %58
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %46

63:                                               ; preds = %57, %46
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @SCLV_COEF_RAM_SELECT, align 4
  %67 = load i32, i32* @SCL_C_RAM_FILTER_TYPE, align 4
  %68 = call i32 @set_reg_field_value(i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %147, %63
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %150

73:                                               ; preds = %69
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @SCLV_COEF_RAM_SELECT, align 4
  %77 = load i32, i32* @SCL_C_RAM_PHASE, align 4
  %78 = call i32 @set_reg_field_value(i32 %74, i32 %75, i32 %76, i32 %77)
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %143, %73
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %146

83:                                               ; preds = %79
  store i32 0, i32* %19, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @SCLV_COEF_RAM_SELECT, align 4
  %87 = load i32, i32* @SCL_C_RAM_TAP_PAIR_IDX, align 4
  %88 = call i32 @set_reg_field_value(i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %90 = load i32, i32* @mmSCLV_COEF_RAM_SELECT, align 4
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @dm_write_reg(%struct.dc_context* %89, i32 %90, i32 %91)
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* @SCLV_COEF_RAM_TAP_DATA, align 4
  %95 = load i32, i32* @SCL_C_RAM_EVEN_TAP_COEF_EN, align 4
  %96 = call i32 @set_reg_field_value(i32 %93, i32 1, i32 %94, i32 %95)
  %97 = load i32, i32* %19, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SCLV_COEF_RAM_TAP_DATA, align 4
  %104 = load i32, i32* @SCL_C_RAM_EVEN_TAP_COEF, align 4
  %105 = call i32 @set_reg_field_value(i32 %97, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = srem i32 %106, 2
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %83
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %14, align 4
  %112 = sub nsw i32 %111, 1
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* @SCLV_COEF_RAM_TAP_DATA, align 4
  %117 = load i32, i32* @SCL_C_RAM_ODD_TAP_COEF_EN, align 4
  %118 = call i32 @set_reg_field_value(i32 %115, i32 0, i32 %116, i32 %117)
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  br label %138

121:                                              ; preds = %109, %83
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* @SCLV_COEF_RAM_TAP_DATA, align 4
  %124 = load i32, i32* @SCL_C_RAM_ODD_TAP_COEF_EN, align 4
  %125 = call i32 @set_reg_field_value(i32 %122, i32 1, i32 %123, i32 %124)
  %126 = load i32, i32* %19, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @SCLV_COEF_RAM_TAP_DATA, align 4
  %134 = load i32, i32* @SCL_C_RAM_ODD_TAP_COEF, align 4
  %135 = call i32 @set_reg_field_value(i32 %126, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, 2
  store i32 %137, i32* %13, align 4
  br label %138

138:                                              ; preds = %121, %114
  %139 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %140 = load i32, i32* @mmSCLV_COEF_RAM_TAP_DATA, align 4
  %141 = load i32, i32* %19, align 4
  %142 = call i32 @dm_write_reg(%struct.dc_context* %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %79

146:                                              ; preds = %79
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %69

150:                                              ; preds = %69
  %151 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %152 = load i32, i32* @mmDCFEV_MEM_PWR_CTRL, align 4
  %153 = load i32, i32* %17, align 4
  %154 = call i32 @dm_write_reg(%struct.dc_context* %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %150, %32
  ret void
}

declare dso_local i32 @dm_read_reg(%struct.dc_context*, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(%struct.dc_context*, i32, i32) #1

declare dso_local i64 @get_reg_field_value(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
