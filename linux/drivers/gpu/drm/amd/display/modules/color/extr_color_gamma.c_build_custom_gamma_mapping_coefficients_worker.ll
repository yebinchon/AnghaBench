; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_build_custom_gamma_mapping_coefficients_worker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_build_custom_gamma_mapping_coefficients_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_gamma = type { i64 }
%struct.pixel_gamma_point = type { %struct.gamma_point, %struct.gamma_point, %struct.gamma_point }
%struct.gamma_point = type { i64, i64, i32, i32 }
%struct.hw_x_point = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.fixed31_32 = type { i32 }
%struct.gamma_pixel = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }

@CHANNEL_NAME_RED = common dso_local global i32 0, align 4
@CHANNEL_NAME_GREEN = common dso_local global i32 0, align 4
@HW_POINT_POSITION_MIDDLE = common dso_local global i32 0, align 4
@HW_POINT_POSITION_LEFT = common dso_local global i32 0, align 4
@dc_fixpt_zero = common dso_local global i32 0, align 4
@HW_POINT_POSITION_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_gamma*, %struct.pixel_gamma_point*, %struct.hw_x_point*, %struct.gamma_pixel*, i32, i64)* @build_custom_gamma_mapping_coefficients_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_custom_gamma_mapping_coefficients_worker(%struct.dc_gamma* %0, %struct.pixel_gamma_point* %1, %struct.hw_x_point* %2, %struct.gamma_pixel* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_gamma*, align 8
  %9 = alloca %struct.pixel_gamma_point*, align 8
  %10 = alloca %struct.hw_x_point*, align 8
  %11 = alloca %struct.gamma_pixel*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.fixed31_32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.gamma_point*, align 8
  %21 = alloca %struct.fixed31_32, align 4
  %22 = alloca %struct.fixed31_32, align 4
  store %struct.dc_gamma* %0, %struct.dc_gamma** %8, align 8
  store %struct.pixel_gamma_point* %1, %struct.pixel_gamma_point** %9, align 8
  store %struct.hw_x_point* %2, %struct.hw_x_point** %10, align 8
  store %struct.gamma_pixel* %3, %struct.gamma_pixel** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %23

23:                                               ; preds = %183, %6
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* %13, align 8
  %26 = icmp ule i64 %24, %25
  br i1 %26, label %27, label %195

27:                                               ; preds = %23
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @CHANNEL_NAME_RED, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.hw_x_point*, %struct.hw_x_point** %10, align 8
  %33 = load i64, i64* %14, align 8
  %34 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %32, i64 %33
  %35 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %34, i32 0, i32 2
  %36 = bitcast %struct.fixed31_32* %15 to i8*
  %37 = bitcast %struct.fixed31_32* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  br label %57

38:                                               ; preds = %27
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @CHANNEL_NAME_GREEN, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.hw_x_point*, %struct.hw_x_point** %10, align 8
  %44 = load i64, i64* %14, align 8
  %45 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %43, i64 %44
  %46 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %45, i32 0, i32 1
  %47 = bitcast %struct.fixed31_32* %15 to i8*
  %48 = bitcast %struct.fixed31_32* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  br label %56

49:                                               ; preds = %38
  %50 = load %struct.hw_x_point*, %struct.hw_x_point** %10, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %50, i64 %51
  %53 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %52, i32 0, i32 0
  %54 = bitcast %struct.fixed31_32* %15 to i8*
  %55 = bitcast %struct.fixed31_32* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  br label %56

56:                                               ; preds = %49, %42
  br label %57

57:                                               ; preds = %56, %31
  %58 = load %struct.dc_gamma*, %struct.dc_gamma** %8, align 8
  %59 = load %struct.gamma_pixel*, %struct.gamma_pixel** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %15, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @find_software_points(%struct.dc_gamma* %58, %struct.gamma_pixel* %59, i32 %62, i32 %60, i64* %16, i64* %17, i64* %18, i32* %19)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %57
  %66 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %7, align 4
  br label %196

67:                                               ; preds = %57
  %68 = load i64, i64* %17, align 8
  %69 = load %struct.dc_gamma*, %struct.dc_gamma** %8, align 8
  %70 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 3
  %73 = icmp uge i64 %68, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %7, align 4
  br label %196

76:                                               ; preds = %67
  %77 = load i64, i64* %18, align 8
  %78 = load %struct.dc_gamma*, %struct.dc_gamma** %8, align 8
  %79 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 3
  %82 = icmp uge i64 %77, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %7, align 4
  br label %196

85:                                               ; preds = %76
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @CHANNEL_NAME_RED, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %85
  %90 = load %struct.pixel_gamma_point*, %struct.pixel_gamma_point** %9, align 8
  %91 = load i64, i64* %14, align 8
  %92 = getelementptr inbounds %struct.pixel_gamma_point, %struct.pixel_gamma_point* %90, i64 %91
  %93 = getelementptr inbounds %struct.pixel_gamma_point, %struct.pixel_gamma_point* %92, i32 0, i32 2
  store %struct.gamma_point* %93, %struct.gamma_point** %20, align 8
  %94 = load %struct.gamma_pixel*, %struct.gamma_pixel** %11, align 8
  %95 = load i64, i64* %17, align 8
  %96 = getelementptr inbounds %struct.gamma_pixel, %struct.gamma_pixel* %94, i64 %95
  %97 = getelementptr inbounds %struct.gamma_pixel, %struct.gamma_pixel* %96, i32 0, i32 2
  %98 = bitcast %struct.fixed31_32* %21 to i8*
  %99 = bitcast %struct.fixed31_32* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 4, i1 false)
  %100 = load %struct.gamma_pixel*, %struct.gamma_pixel** %11, align 8
  %101 = load i64, i64* %18, align 8
  %102 = getelementptr inbounds %struct.gamma_pixel, %struct.gamma_pixel* %100, i64 %101
  %103 = getelementptr inbounds %struct.gamma_pixel, %struct.gamma_pixel* %102, i32 0, i32 2
  %104 = bitcast %struct.fixed31_32* %22 to i8*
  %105 = bitcast %struct.fixed31_32* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 %105, i64 4, i1 false)
  br label %145

106:                                              ; preds = %85
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @CHANNEL_NAME_GREEN, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %106
  %111 = load %struct.pixel_gamma_point*, %struct.pixel_gamma_point** %9, align 8
  %112 = load i64, i64* %14, align 8
  %113 = getelementptr inbounds %struct.pixel_gamma_point, %struct.pixel_gamma_point* %111, i64 %112
  %114 = getelementptr inbounds %struct.pixel_gamma_point, %struct.pixel_gamma_point* %113, i32 0, i32 1
  store %struct.gamma_point* %114, %struct.gamma_point** %20, align 8
  %115 = load %struct.gamma_pixel*, %struct.gamma_pixel** %11, align 8
  %116 = load i64, i64* %17, align 8
  %117 = getelementptr inbounds %struct.gamma_pixel, %struct.gamma_pixel* %115, i64 %116
  %118 = getelementptr inbounds %struct.gamma_pixel, %struct.gamma_pixel* %117, i32 0, i32 1
  %119 = bitcast %struct.fixed31_32* %21 to i8*
  %120 = bitcast %struct.fixed31_32* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 4, i1 false)
  %121 = load %struct.gamma_pixel*, %struct.gamma_pixel** %11, align 8
  %122 = load i64, i64* %18, align 8
  %123 = getelementptr inbounds %struct.gamma_pixel, %struct.gamma_pixel* %121, i64 %122
  %124 = getelementptr inbounds %struct.gamma_pixel, %struct.gamma_pixel* %123, i32 0, i32 1
  %125 = bitcast %struct.fixed31_32* %22 to i8*
  %126 = bitcast %struct.fixed31_32* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %125, i8* align 4 %126, i64 4, i1 false)
  br label %144

127:                                              ; preds = %106
  %128 = load %struct.pixel_gamma_point*, %struct.pixel_gamma_point** %9, align 8
  %129 = load i64, i64* %14, align 8
  %130 = getelementptr inbounds %struct.pixel_gamma_point, %struct.pixel_gamma_point* %128, i64 %129
  %131 = getelementptr inbounds %struct.pixel_gamma_point, %struct.pixel_gamma_point* %130, i32 0, i32 0
  store %struct.gamma_point* %131, %struct.gamma_point** %20, align 8
  %132 = load %struct.gamma_pixel*, %struct.gamma_pixel** %11, align 8
  %133 = load i64, i64* %17, align 8
  %134 = getelementptr inbounds %struct.gamma_pixel, %struct.gamma_pixel* %132, i64 %133
  %135 = getelementptr inbounds %struct.gamma_pixel, %struct.gamma_pixel* %134, i32 0, i32 0
  %136 = bitcast %struct.fixed31_32* %21 to i8*
  %137 = bitcast %struct.fixed31_32* %135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 4 %137, i64 4, i1 false)
  %138 = load %struct.gamma_pixel*, %struct.gamma_pixel** %11, align 8
  %139 = load i64, i64* %18, align 8
  %140 = getelementptr inbounds %struct.gamma_pixel, %struct.gamma_pixel* %138, i64 %139
  %141 = getelementptr inbounds %struct.gamma_pixel, %struct.gamma_pixel* %140, i32 0, i32 0
  %142 = bitcast %struct.fixed31_32* %22 to i8*
  %143 = bitcast %struct.fixed31_32* %141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %142, i8* align 4 %143, i64 4, i1 false)
  br label %144

144:                                              ; preds = %127, %110
  br label %145

145:                                              ; preds = %144, %89
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* @HW_POINT_POSITION_MIDDLE, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %163

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %15, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %21, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @dc_fixpt_sub(i32 %151, i32 %153)
  %155 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %22, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %21, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @dc_fixpt_sub(i32 %156, i32 %158)
  %160 = call i32 @dc_fixpt_div(i32 %154, i32 %159)
  %161 = load %struct.gamma_point*, %struct.gamma_point** %20, align 8
  %162 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  br label %183

163:                                              ; preds = %145
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* @HW_POINT_POSITION_LEFT, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i32, i32* @dc_fixpt_zero, align 4
  %169 = load %struct.gamma_point*, %struct.gamma_point** %20, align 8
  %170 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  br label %182

171:                                              ; preds = %163
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* @HW_POINT_POSITION_RIGHT, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = call i32 @dc_fixpt_from_int(i32 2)
  %177 = load %struct.gamma_point*, %struct.gamma_point** %20, align 8
  %178 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  br label %181

179:                                              ; preds = %171
  %180 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %7, align 4
  br label %196

181:                                              ; preds = %175
  br label %182

182:                                              ; preds = %181, %167
  br label %183

183:                                              ; preds = %182, %149
  %184 = load i64, i64* %17, align 8
  %185 = load %struct.gamma_point*, %struct.gamma_point** %20, align 8
  %186 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  %187 = load i64, i64* %18, align 8
  %188 = load %struct.gamma_point*, %struct.gamma_point** %20, align 8
  %189 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %188, i32 0, i32 1
  store i64 %187, i64* %189, align 8
  %190 = load i32, i32* %19, align 4
  %191 = load %struct.gamma_point*, %struct.gamma_point** %20, align 8
  %192 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 8
  %193 = load i64, i64* %14, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %14, align 8
  br label %23

195:                                              ; preds = %23
  store i32 1, i32* %7, align 4
  br label %196

196:                                              ; preds = %195, %179, %83, %74, %65
  %197 = load i32, i32* %7, align 4
  ret i32 %197
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @find_software_points(%struct.dc_gamma*, %struct.gamma_pixel*, i32, i32, i64*, i64*, i64*, i32*) #2

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #2

declare dso_local i32 @dc_fixpt_div(i32, i32) #2

declare dso_local i32 @dc_fixpt_sub(i32, i32) #2

declare dso_local i32 @dc_fixpt_from_int(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
