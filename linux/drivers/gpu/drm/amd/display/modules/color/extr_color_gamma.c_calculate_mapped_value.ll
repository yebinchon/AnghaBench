; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_calculate_mapped_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_calculate_mapped_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i32 }
%struct.pwl_float_data = type { i32, i32, i32 }
%struct.pixel_gamma_point = type { %struct.gamma_point, %struct.gamma_point, %struct.gamma_point }
%struct.gamma_point = type { i64, i64, i64, i32 }

@CHANNEL_NAME_RED = common dso_local global i32 0, align 4
@CHANNEL_NAME_GREEN = common dso_local global i32 0, align 4
@dc_fixpt_zero = common dso_local global %struct.fixed31_32 zeroinitializer, align 4
@HW_POINT_POSITION_MIDDLE = common dso_local global i64 0, align 8
@HW_POINT_POSITION_LEFT = common dso_local global i64 0, align 8
@dc_fixpt_one = common dso_local global %struct.fixed31_32 zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwl_float_data*, %struct.pixel_gamma_point*, i32, i64)* @calculate_mapped_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_mapped_value(%struct.pwl_float_data* %0, %struct.pixel_gamma_point* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.fixed31_32, align 4
  %6 = alloca %struct.pwl_float_data*, align 8
  %7 = alloca %struct.pixel_gamma_point*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.gamma_point*, align 8
  %11 = alloca %struct.fixed31_32, align 4
  %12 = alloca %struct.fixed31_32, align 4
  %13 = alloca %struct.fixed31_32, align 4
  %14 = alloca %struct.fixed31_32, align 4
  store %struct.pwl_float_data* %0, %struct.pwl_float_data** %6, align 8
  store %struct.pixel_gamma_point* %1, %struct.pixel_gamma_point** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @CHANNEL_NAME_RED, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.pixel_gamma_point*, %struct.pixel_gamma_point** %7, align 8
  %20 = getelementptr inbounds %struct.pixel_gamma_point, %struct.pixel_gamma_point* %19, i32 0, i32 2
  store %struct.gamma_point* %20, %struct.gamma_point** %10, align 8
  br label %32

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @CHANNEL_NAME_GREEN, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.pixel_gamma_point*, %struct.pixel_gamma_point** %7, align 8
  %27 = getelementptr inbounds %struct.pixel_gamma_point, %struct.pixel_gamma_point* %26, i32 0, i32 1
  store %struct.gamma_point* %27, %struct.gamma_point** %10, align 8
  br label %31

28:                                               ; preds = %21
  %29 = load %struct.pixel_gamma_point*, %struct.pixel_gamma_point** %7, align 8
  %30 = getelementptr inbounds %struct.pixel_gamma_point, %struct.pixel_gamma_point* %29, i32 0, i32 0
  store %struct.gamma_point* %30, %struct.gamma_point** %10, align 8
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %18
  %33 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %34 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %39 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %32
  %44 = call i32 (...) @BREAK_TO_DEBUGGER()
  %45 = bitcast %struct.fixed31_32* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 bitcast (%struct.fixed31_32* @dc_fixpt_zero to i8*), i64 4, i1 false)
  br label %185

46:                                               ; preds = %37
  %47 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %48 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %53 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %46
  %58 = call i32 (...) @BREAK_TO_DEBUGGER()
  %59 = bitcast %struct.fixed31_32* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 bitcast (%struct.fixed31_32* @dc_fixpt_zero to i8*), i64 4, i1 false)
  br label %185

60:                                               ; preds = %51
  %61 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %62 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @HW_POINT_POSITION_MIDDLE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %169

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @CHANNEL_NAME_RED, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %66
  %71 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %72 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.pwl_float_data*, %struct.pwl_float_data** %6, align 8
  %75 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %76 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %74, i64 %77
  %79 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.pwl_float_data*, %struct.pwl_float_data** %6, align 8
  %82 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %83 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %81, i64 %84
  %86 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dc_fixpt_sub(i32 %80, i32 %87)
  %89 = call i32 @dc_fixpt_mul(i32 %73, i32 %88)
  %90 = load %struct.pwl_float_data*, %struct.pwl_float_data** %6, align 8
  %91 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %92 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %90, i64 %93
  %95 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dc_fixpt_add(i32 %89, i32 %96)
  %98 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %12, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  %99 = bitcast %struct.fixed31_32* %11 to i8*
  %100 = bitcast %struct.fixed31_32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 4, i1 false)
  br label %168

101:                                              ; preds = %66
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @CHANNEL_NAME_GREEN, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %136

105:                                              ; preds = %101
  %106 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %107 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.pwl_float_data*, %struct.pwl_float_data** %6, align 8
  %110 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %111 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %109, i64 %112
  %114 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.pwl_float_data*, %struct.pwl_float_data** %6, align 8
  %117 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %118 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %116, i64 %119
  %121 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @dc_fixpt_sub(i32 %115, i32 %122)
  %124 = call i32 @dc_fixpt_mul(i32 %108, i32 %123)
  %125 = load %struct.pwl_float_data*, %struct.pwl_float_data** %6, align 8
  %126 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %127 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %125, i64 %128
  %130 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dc_fixpt_add(i32 %124, i32 %131)
  %133 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  store i32 %132, i32* %133, align 4
  %134 = bitcast %struct.fixed31_32* %11 to i8*
  %135 = bitcast %struct.fixed31_32* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %134, i8* align 4 %135, i64 4, i1 false)
  br label %167

136:                                              ; preds = %101
  %137 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %138 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.pwl_float_data*, %struct.pwl_float_data** %6, align 8
  %141 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %142 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %140, i64 %143
  %145 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.pwl_float_data*, %struct.pwl_float_data** %6, align 8
  %148 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %149 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %147, i64 %150
  %152 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @dc_fixpt_sub(i32 %146, i32 %153)
  %155 = call i32 @dc_fixpt_mul(i32 %139, i32 %154)
  %156 = load %struct.pwl_float_data*, %struct.pwl_float_data** %6, align 8
  %157 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %158 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %156, i64 %159
  %161 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @dc_fixpt_add(i32 %155, i32 %162)
  %164 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  store i32 %163, i32* %164, align 4
  %165 = bitcast %struct.fixed31_32* %11 to i8*
  %166 = bitcast %struct.fixed31_32* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %165, i8* align 4 %166, i64 4, i1 false)
  br label %167

167:                                              ; preds = %136, %105
  br label %168

168:                                              ; preds = %167, %70
  br label %182

169:                                              ; preds = %60
  %170 = load %struct.gamma_point*, %struct.gamma_point** %10, align 8
  %171 = getelementptr inbounds %struct.gamma_point, %struct.gamma_point* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @HW_POINT_POSITION_LEFT, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = call i32 (...) @BREAK_TO_DEBUGGER()
  %177 = bitcast %struct.fixed31_32* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %177, i8* align 4 bitcast (%struct.fixed31_32* @dc_fixpt_zero to i8*), i64 4, i1 false)
  br label %181

178:                                              ; preds = %169
  %179 = call i32 (...) @BREAK_TO_DEBUGGER()
  %180 = bitcast %struct.fixed31_32* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %180, i8* align 4 bitcast (%struct.fixed31_32* @dc_fixpt_one to i8*), i64 4, i1 false)
  br label %181

181:                                              ; preds = %178, %175
  br label %182

182:                                              ; preds = %181, %168
  %183 = bitcast %struct.fixed31_32* %5 to i8*
  %184 = bitcast %struct.fixed31_32* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %183, i8* align 4 %184, i64 4, i1 false)
  br label %185

185:                                              ; preds = %182, %57, %43
  %186 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %5, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  ret i32 %187
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dc_fixpt_add(i32, i32) #1

declare dso_local i32 @dc_fixpt_mul(i32, i32) #1

declare dso_local i32 @dc_fixpt_sub(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
