; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_manual_ratio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_manual_ratio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_dpp = type { i32 }
%struct.scaler_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@SCL_HORZ_FILTER_SCALE_RATIO = common dso_local global i32 0, align 4
@SCL_H_SCALE_RATIO = common dso_local global i32 0, align 4
@SCL_VERT_FILTER_SCALE_RATIO = common dso_local global i32 0, align 4
@SCL_V_SCALE_RATIO = common dso_local global i32 0, align 4
@SCL_HORZ_FILTER_SCALE_RATIO_C = common dso_local global i32 0, align 4
@SCL_H_SCALE_RATIO_C = common dso_local global i32 0, align 4
@SCL_VERT_FILTER_SCALE_RATIO_C = common dso_local global i32 0, align 4
@SCL_V_SCALE_RATIO_C = common dso_local global i32 0, align 4
@SCL_HORZ_FILTER_INIT = common dso_local global i32 0, align 4
@SCL_H_INIT_FRAC = common dso_local global i32 0, align 4
@SCL_H_INIT_INT = common dso_local global i32 0, align 4
@SCL_HORZ_FILTER_INIT_C = common dso_local global i32 0, align 4
@SCL_H_INIT_FRAC_C = common dso_local global i32 0, align 4
@SCL_H_INIT_INT_C = common dso_local global i32 0, align 4
@SCL_VERT_FILTER_INIT = common dso_local global i32 0, align 4
@SCL_V_INIT_FRAC = common dso_local global i32 0, align 4
@SCL_V_INIT_INT = common dso_local global i32 0, align 4
@SCL_VERT_FILTER_INIT_BOT = common dso_local global i32 0, align 4
@SCL_V_INIT_FRAC_BOT = common dso_local global i32 0, align 4
@SCL_V_INIT_INT_BOT = common dso_local global i32 0, align 4
@SCL_VERT_FILTER_INIT_C = common dso_local global i32 0, align 4
@SCL_V_INIT_FRAC_C = common dso_local global i32 0, align 4
@SCL_V_INIT_INT_C = common dso_local global i32 0, align 4
@SCL_VERT_FILTER_INIT_BOT_C = common dso_local global i32 0, align 4
@SCL_V_INIT_FRAC_BOT_C = common dso_local global i32 0, align 4
@SCL_V_INIT_INT_BOT_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_dpp*, %struct.scaler_data*)* @dpp1_dscl_set_manual_ratio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp1_dscl_set_manual_ratio_init(%struct.dcn10_dpp* %0, %struct.scaler_data* %1) #0 {
  %3 = alloca %struct.dcn10_dpp*, align 8
  %4 = alloca %struct.scaler_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dcn10_dpp* %0, %struct.dcn10_dpp** %3, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @SCL_HORZ_FILTER_SCALE_RATIO, align 4
  %8 = load i32, i32* @SCL_H_SCALE_RATIO, align 4
  %9 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %10 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dc_fixpt_u3d19(i32 %12)
  %14 = shl i32 %13, 5
  %15 = call i32 @REG_SET(i32 %7, i32 0, i32 %8, i32 %14)
  %16 = load i32, i32* @SCL_VERT_FILTER_SCALE_RATIO, align 4
  %17 = load i32, i32* @SCL_V_SCALE_RATIO, align 4
  %18 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %19 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dc_fixpt_u3d19(i32 %21)
  %23 = shl i32 %22, 5
  %24 = call i32 @REG_SET(i32 %16, i32 0, i32 %17, i32 %23)
  %25 = load i32, i32* @SCL_HORZ_FILTER_SCALE_RATIO_C, align 4
  %26 = load i32, i32* @SCL_H_SCALE_RATIO_C, align 4
  %27 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %28 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dc_fixpt_u3d19(i32 %30)
  %32 = shl i32 %31, 5
  %33 = call i32 @REG_SET(i32 %25, i32 0, i32 %26, i32 %32)
  %34 = load i32, i32* @SCL_VERT_FILTER_SCALE_RATIO_C, align 4
  %35 = load i32, i32* @SCL_V_SCALE_RATIO_C, align 4
  %36 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %37 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dc_fixpt_u3d19(i32 %39)
  %41 = shl i32 %40, 5
  %42 = call i32 @REG_SET(i32 %34, i32 0, i32 %35, i32 %41)
  %43 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %44 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dc_fixpt_u0d19(i32 %46)
  %48 = shl i32 %47, 5
  store i32 %48, i32* %5, align 4
  %49 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %50 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dc_fixpt_floor(i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @SCL_HORZ_FILTER_INIT, align 4
  %55 = load i32, i32* @SCL_H_INIT_FRAC, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @SCL_H_INIT_INT, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @REG_SET_2(i32 %54, i32 0, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %61 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dc_fixpt_u0d19(i32 %63)
  %65 = shl i32 %64, 5
  store i32 %65, i32* %5, align 4
  %66 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %67 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dc_fixpt_floor(i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @SCL_HORZ_FILTER_INIT_C, align 4
  %72 = load i32, i32* @SCL_H_INIT_FRAC_C, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @SCL_H_INIT_INT_C, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @REG_SET_2(i32 %71, i32 0, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %78 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dc_fixpt_u0d19(i32 %80)
  %82 = shl i32 %81, 5
  store i32 %82, i32* %5, align 4
  %83 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %84 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dc_fixpt_floor(i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* @SCL_VERT_FILTER_INIT, align 4
  %89 = load i32, i32* @SCL_V_INIT_FRAC, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @SCL_V_INIT_INT, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @REG_SET_2(i32 %88, i32 0, i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* @SCL_VERT_FILTER_INIT_BOT, align 4
  %95 = call i64 @REG(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %2
  %98 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %99 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dc_fixpt_u0d19(i32 %101)
  %103 = shl i32 %102, 5
  store i32 %103, i32* %5, align 4
  %104 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %105 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dc_fixpt_floor(i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* @SCL_VERT_FILTER_INIT_BOT, align 4
  %110 = load i32, i32* @SCL_V_INIT_FRAC_BOT, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @SCL_V_INIT_INT_BOT, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @REG_SET_2(i32 %109, i32 0, i32 %110, i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %97, %2
  %116 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %117 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @dc_fixpt_u0d19(i32 %119)
  %121 = shl i32 %120, 5
  store i32 %121, i32* %5, align 4
  %122 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %123 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @dc_fixpt_floor(i32 %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* @SCL_VERT_FILTER_INIT_C, align 4
  %128 = load i32, i32* @SCL_V_INIT_FRAC_C, align 4
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @SCL_V_INIT_INT_C, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @REG_SET_2(i32 %127, i32 0, i32 %128, i32 %129, i32 %130, i32 %131)
  %133 = load i32, i32* @SCL_VERT_FILTER_INIT_BOT_C, align 4
  %134 = call i64 @REG(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %115
  %137 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %138 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @dc_fixpt_u0d19(i32 %140)
  %142 = shl i32 %141, 5
  store i32 %142, i32* %5, align 4
  %143 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %144 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @dc_fixpt_floor(i32 %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* @SCL_VERT_FILTER_INIT_BOT_C, align 4
  %149 = load i32, i32* @SCL_V_INIT_FRAC_BOT_C, align 4
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @SCL_V_INIT_INT_BOT_C, align 4
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @REG_SET_2(i32 %148, i32 0, i32 %149, i32 %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %136, %115
  ret void
}

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @dc_fixpt_u3d19(i32) #1

declare dso_local i32 @dc_fixpt_u0d19(i32) #1

declare dso_local i32 @dc_fixpt_floor(i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
