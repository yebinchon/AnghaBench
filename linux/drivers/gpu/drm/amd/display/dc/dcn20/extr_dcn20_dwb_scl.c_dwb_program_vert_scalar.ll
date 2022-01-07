; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dwb_scl.c_dwb_program_vert_scalar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dwb_scl.c_dwb_program_vert_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn20_dwbc = type { i32 }
%struct.scaling_taps = type { i32, i32 }
%struct.fixed31_32 = type { i32 }

@WBSCL_VERT_FILTER_SCALE_RATIO = common dso_local global i32 0, align 4
@WBSCL_V_SCALE_RATIO = common dso_local global i32 0, align 4
@WBSCL_TAP_CONTROL = common dso_local global i32 0, align 4
@WBSCL_V_NUM_OF_TAPS_Y_RGB = common dso_local global i32 0, align 4
@WBSCL_V_NUM_OF_TAPS_CBCR = common dso_local global i32 0, align 4
@DWB_COSITED_SUBSAMPLING = common dso_local global i32 0, align 4
@WBSCL_VERT_FILTER_INIT_Y_RGB = common dso_local global i32 0, align 4
@WBSCL_V_INIT_INT_Y_RGB = common dso_local global i32 0, align 4
@WBSCL_V_INIT_FRAC_Y_RGB = common dso_local global i32 0, align 4
@WBSCL_VERT_FILTER_INIT_CBCR = common dso_local global i32 0, align 4
@WBSCL_V_INIT_INT_CBCR = common dso_local global i32 0, align 4
@WBSCL_V_INIT_FRAC_CBCR = common dso_local global i32 0, align 4
@WBSCL_COEF_LUMA_VERT_FILTER = common dso_local global i32 0, align 4
@WBSCL_COEF_CHROMA_VERT_FILTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwb_program_vert_scalar(%struct.dcn20_dwbc* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.scaling_taps, align 4
  %7 = alloca %struct.dcn20_dwbc*, align 8
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
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
  %34 = alloca %struct.fixed31_32, align 4
  %35 = alloca %struct.fixed31_32, align 4
  %36 = bitcast %struct.scaling_taps* %6 to i64*
  store i64 %3, i64* %36, align 4
  store %struct.dcn20_dwbc* %0, %struct.dcn20_dwbc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %37 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  %39 = getelementptr inbounds %struct.scaling_taps, %struct.scaling_taps* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  %41 = call i32 @dc_fixpt_from_int(i32 0)
  %42 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = call i32 @dc_fixpt_from_int(i32 0)
  %44 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @dc_fixpt_from_fraction(i32 %45, i32 %46)
  %48 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %25, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %25, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dc_fixpt_floor(i32 %50)
  %52 = icmp eq i32 %51, 8
  br i1 %52, label %53, label %54

53:                                               ; preds = %5
  store i32 -1, i32* %11, align 4
  br label %59

54:                                               ; preds = %5
  %55 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %25, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dc_fixpt_u3d19(i32 %56)
  %58 = shl i32 %57, 5
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %54, %53
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 %60, 2
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* @WBSCL_VERT_FILTER_SCALE_RATIO, align 4
  %63 = load i32, i32* @WBSCL_V_SCALE_RATIO, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @REG_UPDATE(i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* @WBSCL_TAP_CONTROL, align 4
  %67 = load i32, i32* @WBSCL_V_NUM_OF_TAPS_Y_RGB, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sub nsw i32 %68, 1
  %70 = call i32 @REG_UPDATE(i32 %66, i32 %67, i32 %69)
  %71 = load i32, i32* @WBSCL_TAP_CONTROL, align 4
  %72 = load i32, i32* @WBSCL_V_NUM_OF_TAPS_CBCR, align 4
  %73 = load i32, i32* %14, align 4
  %74 = sub nsw i32 %73, 1
  %75 = call i32 @REG_UPDATE(i32 %71, i32 %72, i32 %74)
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  %78 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %25, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dc_fixpt_add_int(i32 %79, i32 %77)
  %81 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %26, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = bitcast %struct.fixed31_32* %23 to i8*
  %83 = bitcast %struct.fixed31_32* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 4, i1 false)
  %84 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dc_fixpt_div_int(i32 %85, i32 2)
  %87 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %27, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = bitcast %struct.fixed31_32* %23 to i8*
  %89 = bitcast %struct.fixed31_32* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 4, i1 false)
  %90 = load i32, i32* %13, align 4
  %91 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dc_fixpt_sub_int(i32 %92, i32 %90)
  %94 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %28, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = bitcast %struct.fixed31_32* %23 to i8*
  %96 = bitcast %struct.fixed31_32* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 4, i1 false)
  %97 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dc_fixpt_s4d19(i32 %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = ashr i32 %100, 19
  %102 = and i32 %101, 31
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %15, align 4
  %104 = and i32 %103, 524287
  %105 = shl i32 %104, 5
  store i32 %105, i32* %18, align 4
  %106 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %25, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dc_fixpt_mul_int(i32 %107, i32 2)
  %109 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %29, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = bitcast %struct.fixed31_32* %24 to i8*
  %111 = bitcast %struct.fixed31_32* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 4 %111, i64 4, i1 false)
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 1
  %114 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dc_fixpt_add_int(i32 %115, i32 %113)
  %117 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %30, i32 0, i32 0
  store i32 %116, i32* %117, align 4
  %118 = bitcast %struct.fixed31_32* %24 to i8*
  %119 = bitcast %struct.fixed31_32* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 4, i1 false)
  %120 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dc_fixpt_div_int(i32 %121, i32 2)
  %123 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %31, i32 0, i32 0
  store i32 %122, i32* %123, align 4
  %124 = bitcast %struct.fixed31_32* %24 to i8*
  %125 = bitcast %struct.fixed31_32* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 %125, i64 4, i1 false)
  %126 = load i32, i32* %14, align 4
  %127 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @dc_fixpt_sub_int(i32 %128, i32 %126)
  %130 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %32, i32 0, i32 0
  store i32 %129, i32* %130, align 4
  %131 = bitcast %struct.fixed31_32* %24 to i8*
  %132 = bitcast %struct.fixed31_32* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %131, i8* align 4 %132, i64 4, i1 false)
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @DWB_COSITED_SUBSAMPLING, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %59
  %137 = call i32 @dc_fixpt_from_fraction(i32 1, i32 4)
  %138 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %34, i32 0, i32 0
  store i32 %137, i32* %138, align 4
  %139 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %34, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @dc_fixpt_add(i32 %140, i32 %142)
  %144 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %33, i32 0, i32 0
  store i32 %143, i32* %144, align 4
  %145 = bitcast %struct.fixed31_32* %24 to i8*
  %146 = bitcast %struct.fixed31_32* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 4 %146, i64 4, i1 false)
  br label %147

147:                                              ; preds = %136, %59
  %148 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @dc_fixpt_s4d19(i32 %149)
  store i32 %150, i32* %16, align 4
  %151 = load i32, i32* %16, align 4
  %152 = ashr i32 %151, 19
  %153 = and i32 %152, 31
  store i32 %153, i32* %19, align 4
  %154 = load i32, i32* %16, align 4
  %155 = and i32 %154, 524287
  %156 = shl i32 %155, 5
  store i32 %156, i32* %20, align 4
  %157 = load i32, i32* @WBSCL_VERT_FILTER_INIT_Y_RGB, align 4
  %158 = load i32, i32* @WBSCL_V_INIT_INT_Y_RGB, align 4
  %159 = load i32, i32* %17, align 4
  %160 = call i32 @REG_UPDATE(i32 %157, i32 %158, i32 %159)
  %161 = load i32, i32* @WBSCL_VERT_FILTER_INIT_Y_RGB, align 4
  %162 = load i32, i32* @WBSCL_V_INIT_FRAC_Y_RGB, align 4
  %163 = load i32, i32* %18, align 4
  %164 = call i32 @REG_UPDATE(i32 %161, i32 %162, i32 %163)
  %165 = load i32, i32* @WBSCL_VERT_FILTER_INIT_CBCR, align 4
  %166 = load i32, i32* @WBSCL_V_INIT_INT_CBCR, align 4
  %167 = load i32, i32* %19, align 4
  %168 = call i32 @REG_UPDATE(i32 %165, i32 %166, i32 %167)
  %169 = load i32, i32* @WBSCL_VERT_FILTER_INIT_CBCR, align 4
  %170 = load i32, i32* @WBSCL_V_INIT_FRAC_CBCR, align 4
  %171 = load i32, i32* %20, align 4
  %172 = call i32 @REG_UPDATE(i32 %169, i32 %170, i32 %171)
  %173 = load i32, i32* %13, align 4
  %174 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %25, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32* @wbscl_get_filter_coeffs_16p(i32 %173, i32 %175)
  store i32* %176, i32** %21, align 8
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %11, align 4
  %179 = mul nsw i32 %178, 2
  %180 = call i32 @dc_fixpt_from_int(i32 %179)
  %181 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %35, i32 0, i32 0
  store i32 %180, i32* %181, align 4
  %182 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %35, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32* @wbscl_get_filter_coeffs_16p(i32 %177, i32 %183)
  store i32* %184, i32** %22, align 8
  %185 = load %struct.dcn20_dwbc*, %struct.dcn20_dwbc** %7, align 8
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* @WBSCL_COEF_LUMA_VERT_FILTER, align 4
  %188 = load i32*, i32** %21, align 8
  %189 = call i32 @wbscl_set_scaler_filter(%struct.dcn20_dwbc* %185, i32 %186, i32 %187, i32* %188)
  %190 = load %struct.dcn20_dwbc*, %struct.dcn20_dwbc** %7, align 8
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* @WBSCL_COEF_CHROMA_VERT_FILTER, align 4
  %193 = load i32*, i32** %22, align 8
  %194 = call i32 @wbscl_set_scaler_filter(%struct.dcn20_dwbc* %190, i32 %191, i32 %192, i32* %193)
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
