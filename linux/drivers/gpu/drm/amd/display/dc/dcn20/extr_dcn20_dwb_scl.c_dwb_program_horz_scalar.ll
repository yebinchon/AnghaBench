; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dwb_scl.c_dwb_program_horz_scalar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dwb_scl.c_dwb_program_horz_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn20_dwbc = type { i32 }
%struct.scaling_taps = type { i32, i32 }
%struct.fixed31_32 = type { i32 }

@WBSCL_HORZ_FILTER_SCALE_RATIO = common dso_local global i32 0, align 4
@WBSCL_H_SCALE_RATIO = common dso_local global i32 0, align 4
@WBSCL_TAP_CONTROL = common dso_local global i32 0, align 4
@WBSCL_H_NUM_OF_TAPS_Y_RGB = common dso_local global i32 0, align 4
@WBSCL_H_NUM_OF_TAPS_CBCR = common dso_local global i32 0, align 4
@WBSCL_HORZ_FILTER_INIT_Y_RGB = common dso_local global i32 0, align 4
@WBSCL_H_INIT_INT_Y_RGB = common dso_local global i32 0, align 4
@WBSCL_H_INIT_FRAC_Y_RGB = common dso_local global i32 0, align 4
@WBSCL_HORZ_FILTER_INIT_CBCR = common dso_local global i32 0, align 4
@WBSCL_H_INIT_INT_CBCR = common dso_local global i32 0, align 4
@WBSCL_H_INIT_FRAC_CBCR = common dso_local global i32 0, align 4
@WBSCL_COEF_LUMA_HORZ_FILTER = common dso_local global i32 0, align 4
@WBSCL_COEF_CHROMA_HORZ_FILTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwb_program_horz_scalar(%struct.dcn20_dwbc* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.scaling_taps, align 4
  %6 = alloca %struct.dcn20_dwbc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.fixed31_32, align 4
  %22 = alloca %struct.fixed31_32, align 4
  %23 = alloca %struct.fixed31_32, align 4
  %24 = alloca %struct.fixed31_32, align 4
  %25 = alloca %struct.fixed31_32, align 4
  %26 = alloca %struct.fixed31_32, align 4
  %27 = alloca %struct.fixed31_32, align 4
  %28 = alloca %struct.fixed31_32, align 4
  %29 = alloca %struct.fixed31_32, align 4
  %30 = alloca %struct.fixed31_32, align 4
  %31 = alloca %struct.fixed31_32, align 4
  %32 = alloca %struct.fixed31_32, align 4
  %33 = alloca %struct.fixed31_32, align 4
  %34 = bitcast %struct.scaling_taps* %5 to i64*
  store i64 %3, i64* %34, align 4
  store %struct.dcn20_dwbc* %0, %struct.dcn20_dwbc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %35 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %5, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %39 = call i32 @dc_fixpt_from_int(i32 0)
  %40 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %21, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = call i32 @dc_fixpt_from_int(i32 0)
  %42 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %22, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @dc_fixpt_from_fraction(i32 %43, i32 %44)
  %46 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dc_fixpt_floor(i32 %48)
  %50 = icmp eq i32 %49, 8
  br i1 %50, label %51, label %52

51:                                               ; preds = %4
  store i32 -1, i32* %9, align 4
  br label %57

52:                                               ; preds = %4
  %53 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dc_fixpt_u3d19(i32 %54)
  %56 = shl i32 %55, 5
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %52, %51
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %58, 2
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @WBSCL_HORZ_FILTER_SCALE_RATIO, align 4
  %61 = load i32, i32* @WBSCL_H_SCALE_RATIO, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @REG_UPDATE(i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* @WBSCL_TAP_CONTROL, align 4
  %65 = load i32, i32* @WBSCL_H_NUM_OF_TAPS_Y_RGB, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %66, 1
  %68 = call i32 @REG_UPDATE(i32 %64, i32 %65, i32 %67)
  %69 = load i32, i32* @WBSCL_TAP_CONTROL, align 4
  %70 = load i32, i32* @WBSCL_H_NUM_OF_TAPS_CBCR, align 4
  %71 = load i32, i32* %12, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i32 @REG_UPDATE(i32 %69, i32 %70, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  %76 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dc_fixpt_add_int(i32 %77, i32 %75)
  %79 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = bitcast %struct.fixed31_32* %21 to i8*
  %81 = bitcast %struct.fixed31_32* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 4, i1 false)
  %82 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %21, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dc_fixpt_div_int(i32 %83, i32 2)
  %85 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %25, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = bitcast %struct.fixed31_32* %21 to i8*
  %87 = bitcast %struct.fixed31_32* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 4, i1 false)
  %88 = load i32, i32* %11, align 4
  %89 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %21, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dc_fixpt_sub_int(i32 %90, i32 %88)
  %92 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %26, i32 0, i32 0
  store i32 %91, i32* %92, align 4
  %93 = bitcast %struct.fixed31_32* %21 to i8*
  %94 = bitcast %struct.fixed31_32* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 4, i1 false)
  %95 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %21, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dc_fixpt_s4d19(i32 %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = ashr i32 %98, 19
  %100 = and i32 %99, 31
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %13, align 4
  %102 = and i32 %101, 524287
  %103 = shl i32 %102, 5
  store i32 %103, i32* %16, align 4
  %104 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dc_fixpt_mul_int(i32 %105, i32 2)
  %107 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %27, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = bitcast %struct.fixed31_32* %22 to i8*
  %109 = bitcast %struct.fixed31_32* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %108, i8* align 4 %109, i64 4, i1 false)
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  %112 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %22, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dc_fixpt_add_int(i32 %113, i32 %111)
  %115 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %28, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  %116 = bitcast %struct.fixed31_32* %22 to i8*
  %117 = bitcast %struct.fixed31_32* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 4, i1 false)
  %118 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %22, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @dc_fixpt_div_int(i32 %119, i32 2)
  %121 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %29, i32 0, i32 0
  store i32 %120, i32* %121, align 4
  %122 = bitcast %struct.fixed31_32* %22 to i8*
  %123 = bitcast %struct.fixed31_32* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 4, i1 false)
  %124 = load i32, i32* %12, align 4
  %125 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %22, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @dc_fixpt_sub_int(i32 %126, i32 %124)
  %128 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %30, i32 0, i32 0
  store i32 %127, i32* %128, align 4
  %129 = bitcast %struct.fixed31_32* %22 to i8*
  %130 = bitcast %struct.fixed31_32* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %129, i8* align 4 %130, i64 4, i1 false)
  %131 = call i32 @dc_fixpt_from_fraction(i32 1, i32 4)
  %132 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %32, i32 0, i32 0
  store i32 %131, i32* %132, align 4
  %133 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %22, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %32, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @dc_fixpt_add(i32 %134, i32 %136)
  %138 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %31, i32 0, i32 0
  store i32 %137, i32* %138, align 4
  %139 = bitcast %struct.fixed31_32* %22 to i8*
  %140 = bitcast %struct.fixed31_32* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %139, i8* align 4 %140, i64 4, i1 false)
  %141 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %22, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @dc_fixpt_s4d19(i32 %142)
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %14, align 4
  %145 = ashr i32 %144, 19
  %146 = and i32 %145, 31
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %14, align 4
  %148 = and i32 %147, 524287
  %149 = shl i32 %148, 5
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* @WBSCL_HORZ_FILTER_INIT_Y_RGB, align 4
  %151 = load i32, i32* @WBSCL_H_INIT_INT_Y_RGB, align 4
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @REG_UPDATE(i32 %150, i32 %151, i32 %152)
  %154 = load i32, i32* @WBSCL_HORZ_FILTER_INIT_Y_RGB, align 4
  %155 = load i32, i32* @WBSCL_H_INIT_FRAC_Y_RGB, align 4
  %156 = load i32, i32* %16, align 4
  %157 = call i32 @REG_UPDATE(i32 %154, i32 %155, i32 %156)
  %158 = load i32, i32* @WBSCL_HORZ_FILTER_INIT_CBCR, align 4
  %159 = load i32, i32* @WBSCL_H_INIT_INT_CBCR, align 4
  %160 = load i32, i32* %17, align 4
  %161 = call i32 @REG_UPDATE(i32 %158, i32 %159, i32 %160)
  %162 = load i32, i32* @WBSCL_HORZ_FILTER_INIT_CBCR, align 4
  %163 = load i32, i32* @WBSCL_H_INIT_FRAC_CBCR, align 4
  %164 = load i32, i32* %18, align 4
  %165 = call i32 @REG_UPDATE(i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* %11, align 4
  %167 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32* @wbscl_get_filter_coeffs_16p(i32 %166, i32 %168)
  store i32* %169, i32** %19, align 8
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %9, align 4
  %172 = mul nsw i32 %171, 2
  %173 = call i32 @dc_fixpt_from_int(i32 %172)
  %174 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %33, i32 0, i32 0
  store i32 %173, i32* %174, align 4
  %175 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %33, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32* @wbscl_get_filter_coeffs_16p(i32 %170, i32 %176)
  store i32* %177, i32** %20, align 8
  %178 = load %struct.dcn20_dwbc*, %struct.dcn20_dwbc** %6, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* @WBSCL_COEF_LUMA_HORZ_FILTER, align 4
  %181 = load i32*, i32** %19, align 8
  %182 = call i32 @wbscl_set_scaler_filter(%struct.dcn20_dwbc* %178, i32 %179, i32 %180, i32* %181)
  %183 = load %struct.dcn20_dwbc*, %struct.dcn20_dwbc** %6, align 8
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* @WBSCL_COEF_CHROMA_HORZ_FILTER, align 4
  %186 = load i32*, i32** %20, align 8
  %187 = call i32 @wbscl_set_scaler_filter(%struct.dcn20_dwbc* %183, i32 %184, i32 %185, i32* %186)
  ret i32 1
}

declare dso_local i32 @dc_fixpt_from_int(i32) #1

declare dso_local i32 @dc_fixpt_from_fraction(i32, i32) #1

declare dso_local i32 @dc_fixpt_floor(i32) #1

declare dso_local i32 @dc_fixpt_u3d19(i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @dc_fixpt_add_int(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dc_fixpt_div_int(i32, i32) #1

declare dso_local i32 @dc_fixpt_sub_int(i32, i32) #1

declare dso_local i32 @dc_fixpt_s4d19(i32) #1

declare dso_local i32 @dc_fixpt_mul_int(i32, i32) #1

declare dso_local i32 @dc_fixpt_add(i32, i32) #1

declare dso_local i32* @wbscl_get_filter_coeffs_16p(i32, i32) #1

declare dso_local i32 @wbscl_set_scaler_filter(%struct.dcn20_dwbc*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
