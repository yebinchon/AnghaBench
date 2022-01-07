; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_scale_gamma_dx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_scale_gamma_dx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i32 }
%struct.pwl_float_data = type { i8*, i8*, i8* }
%struct.dc_gamma = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fixed31_32*, %struct.fixed31_32*, %struct.fixed31_32* }
%struct.dividers = type { i32 }

@dc_fixpt_zero = common dso_local global %struct.fixed31_32 zeroinitializer, align 4
@dc_fixpt_one = common dso_local global %struct.fixed31_32 zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwl_float_data*, %struct.dc_gamma*, i32)* @scale_gamma_dx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_gamma_dx(%struct.pwl_float_data* %0, %struct.dc_gamma* %1, i32 %2) #0 {
  %4 = alloca %struct.dividers, align 4
  %5 = alloca %struct.pwl_float_data*, align 8
  %6 = alloca %struct.dc_gamma*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fixed31_32, align 4
  %9 = alloca %struct.fixed31_32, align 4
  %10 = alloca %struct.fixed31_32, align 4
  %11 = alloca %struct.fixed31_32, align 4
  %12 = alloca %struct.fixed31_32, align 4
  %13 = alloca %struct.fixed31_32, align 4
  %14 = alloca %struct.fixed31_32, align 4
  %15 = alloca %struct.fixed31_32, align 4
  %16 = alloca %struct.fixed31_32, align 4
  %17 = getelementptr inbounds %struct.dividers, %struct.dividers* %4, i32 0, i32 0
  store i32 %2, i32* %17, align 4
  store %struct.pwl_float_data* %0, %struct.pwl_float_data** %5, align 8
  store %struct.dc_gamma* %1, %struct.dc_gamma** %6, align 8
  %18 = bitcast %struct.fixed31_32* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.fixed31_32* @dc_fixpt_zero to i8*), i64 4, i1 false)
  %19 = bitcast %struct.fixed31_32* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.fixed31_32* @dc_fixpt_one to i8*), i64 4, i1 false)
  %20 = bitcast %struct.fixed31_32* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.fixed31_32* @dc_fixpt_zero to i8*), i64 4, i1 false)
  %21 = bitcast %struct.fixed31_32* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.fixed31_32* @dc_fixpt_zero to i8*), i64 4, i1 false)
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %161, %3
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %25 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %164

28:                                               ; preds = %22
  %29 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %30 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load %struct.fixed31_32*, %struct.fixed31_32** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %32, i64 %33
  %35 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @dc_fixpt_lt(i32 %36, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %28
  %42 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %43 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load %struct.fixed31_32*, %struct.fixed31_32** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %45, i64 %46
  %48 = bitcast %struct.fixed31_32* %8 to i8*
  %49 = bitcast %struct.fixed31_32* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  br label %50

50:                                               ; preds = %41, %28
  %51 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %52 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load %struct.fixed31_32*, %struct.fixed31_32** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %54, i64 %55
  %57 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @dc_fixpt_lt(i32 %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %50
  %64 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %65 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load %struct.fixed31_32*, %struct.fixed31_32** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %67, i64 %68
  %70 = bitcast %struct.fixed31_32* %8 to i8*
  %71 = bitcast %struct.fixed31_32* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  br label %72

72:                                               ; preds = %63, %50
  %73 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %74 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.fixed31_32*, %struct.fixed31_32** %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %76, i64 %77
  %79 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @dc_fixpt_lt(i32 %80, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %72
  %86 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %87 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load %struct.fixed31_32*, %struct.fixed31_32** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %89, i64 %90
  %92 = bitcast %struct.fixed31_32* %8 to i8*
  %93 = bitcast %struct.fixed31_32* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 4, i1 false)
  br label %94

94:                                               ; preds = %85, %72
  %95 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %96 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load %struct.fixed31_32*, %struct.fixed31_32** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %98, i64 %99
  %101 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %100, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @dc_fixpt_lt(i32 %102, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %94
  %108 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %109 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load %struct.fixed31_32*, %struct.fixed31_32** %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %111, i64 %112
  %114 = bitcast %struct.fixed31_32* %9 to i8*
  %115 = bitcast %struct.fixed31_32* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 4, i1 false)
  br label %116

116:                                              ; preds = %107, %94
  %117 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %118 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load %struct.fixed31_32*, %struct.fixed31_32** %119, align 8
  %121 = load i64, i64* %7, align 8
  %122 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %120, i64 %121
  %123 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %122, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @dc_fixpt_lt(i32 %124, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %116
  %130 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %131 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load %struct.fixed31_32*, %struct.fixed31_32** %132, align 8
  %134 = load i64, i64* %7, align 8
  %135 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %133, i64 %134
  %136 = bitcast %struct.fixed31_32* %9 to i8*
  %137 = bitcast %struct.fixed31_32* %135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 4 %137, i64 4, i1 false)
  br label %138

138:                                              ; preds = %129, %116
  %139 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %140 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load %struct.fixed31_32*, %struct.fixed31_32** %141, align 8
  %143 = load i64, i64* %7, align 8
  %144 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %142, i64 %143
  %145 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %144, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @dc_fixpt_lt(i32 %146, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %138
  %152 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %153 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load %struct.fixed31_32*, %struct.fixed31_32** %154, align 8
  %156 = load i64, i64* %7, align 8
  %157 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %155, i64 %156
  %158 = bitcast %struct.fixed31_32* %9 to i8*
  %159 = bitcast %struct.fixed31_32* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %158, i8* align 4 %159, i64 4, i1 false)
  br label %160

160:                                              ; preds = %151, %138
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %7, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %7, align 8
  br label %22

164:                                              ; preds = %22
  %165 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_zero, i32 0, i32 0), align 4
  %168 = call i64 @dc_fixpt_lt(i32 %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @dc_fixpt_neg(i32 %172)
  %174 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %12, i32 0, i32 0
  store i32 %173, i32* %174, align 4
  %175 = bitcast %struct.fixed31_32* %10 to i8*
  %176 = bitcast %struct.fixed31_32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %175, i8* align 4 %176, i64 4, i1 false)
  br label %177

177:                                              ; preds = %170, %164
  %178 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @dc_fixpt_add(i32 %179, i32 %181)
  %183 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  store i32 %182, i32* %183, align 4
  %184 = bitcast %struct.fixed31_32* %11 to i8*
  %185 = bitcast %struct.fixed31_32* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %184, i8* align 4 %185, i64 4, i1 false)
  store i64 0, i64* %7, align 8
  br label %186

186:                                              ; preds = %256, %177
  %187 = load i64, i64* %7, align 8
  %188 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %189 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ult i64 %187, %190
  br i1 %191, label %192, label %259

192:                                              ; preds = %186
  %193 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %194 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 2
  %196 = load %struct.fixed31_32*, %struct.fixed31_32** %195, align 8
  %197 = load i64, i64* %7, align 8
  %198 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %196, i64 %197
  %199 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @dc_fixpt_add(i32 %200, i32 %202)
  %204 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  store i32 %203, i32* %204, align 4
  %205 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %11, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i8* @dc_fixpt_div(i32 %206, i32 %208)
  %210 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %211 = load i64, i64* %7, align 8
  %212 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %210, i64 %211
  %213 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %212, i32 0, i32 2
  store i8* %209, i8** %213, align 8
  %214 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %215 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  %217 = load %struct.fixed31_32*, %struct.fixed31_32** %216, align 8
  %218 = load i64, i64* %7, align 8
  %219 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %217, i64 %218
  %220 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @dc_fixpt_add(i32 %221, i32 %223)
  %225 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %15, i32 0, i32 0
  store i32 %224, i32* %225, align 4
  %226 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %15, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %11, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i8* @dc_fixpt_div(i32 %227, i32 %229)
  %231 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %232 = load i64, i64* %7, align 8
  %233 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %231, i64 %232
  %234 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %233, i32 0, i32 1
  store i8* %230, i8** %234, align 8
  %235 = load %struct.dc_gamma*, %struct.dc_gamma** %6, align 8
  %236 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = load %struct.fixed31_32*, %struct.fixed31_32** %237, align 8
  %239 = load i64, i64* %7, align 8
  %240 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %238, i64 %239
  %241 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @dc_fixpt_add(i32 %242, i32 %244)
  %246 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %16, i32 0, i32 0
  store i32 %245, i32* %246, align 4
  %247 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %16, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %11, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i8* @dc_fixpt_div(i32 %248, i32 %250)
  %252 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %253 = load i64, i64* %7, align 8
  %254 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %252, i64 %253
  %255 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %254, i32 0, i32 0
  store i8* %251, i8** %255, align 8
  br label %256

256:                                              ; preds = %192
  %257 = load i64, i64* %7, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %7, align 8
  br label %186

259:                                              ; preds = %186
  %260 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %261 = load i64, i64* %7, align 8
  %262 = sub i64 %261, 1
  %263 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %260, i64 %262
  %264 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %263, i32 0, i32 2
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @dc_fixpt_mul_int(i8* %265, i32 2)
  %267 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %268 = load i64, i64* %7, align 8
  %269 = sub i64 %268, 2
  %270 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %267, i64 %269
  %271 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %270, i32 0, i32 2
  %272 = load i8*, i8** %271, align 8
  %273 = call i8* @dc_fixpt_sub(i32 %266, i8* %272)
  %274 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %275 = load i64, i64* %7, align 8
  %276 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %274, i64 %275
  %277 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %276, i32 0, i32 2
  store i8* %273, i8** %277, align 8
  %278 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %279 = load i64, i64* %7, align 8
  %280 = sub i64 %279, 1
  %281 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %278, i64 %280
  %282 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %281, i32 0, i32 1
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @dc_fixpt_mul_int(i8* %283, i32 2)
  %285 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %286 = load i64, i64* %7, align 8
  %287 = sub i64 %286, 2
  %288 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %285, i64 %287
  %289 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %288, i32 0, i32 1
  %290 = load i8*, i8** %289, align 8
  %291 = call i8* @dc_fixpt_sub(i32 %284, i8* %290)
  %292 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %293 = load i64, i64* %7, align 8
  %294 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %292, i64 %293
  %295 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %294, i32 0, i32 1
  store i8* %291, i8** %295, align 8
  %296 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %297 = load i64, i64* %7, align 8
  %298 = sub i64 %297, 1
  %299 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %296, i64 %298
  %300 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %299, i32 0, i32 0
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @dc_fixpt_mul_int(i8* %301, i32 2)
  %303 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %304 = load i64, i64* %7, align 8
  %305 = sub i64 %304, 2
  %306 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %303, i64 %305
  %307 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  %309 = call i8* @dc_fixpt_sub(i32 %302, i8* %308)
  %310 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %311 = load i64, i64* %7, align 8
  %312 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %310, i64 %311
  %313 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %312, i32 0, i32 0
  store i8* %309, i8** %313, align 8
  %314 = load i64, i64* %7, align 8
  %315 = add i64 %314, 1
  store i64 %315, i64* %7, align 8
  %316 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %317 = load i64, i64* %7, align 8
  %318 = sub i64 %317, 1
  %319 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %316, i64 %318
  %320 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %319, i32 0, i32 2
  %321 = load i8*, i8** %320, align 8
  %322 = call i32 @dc_fixpt_mul_int(i8* %321, i32 2)
  %323 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %324 = load i64, i64* %7, align 8
  %325 = sub i64 %324, 2
  %326 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %323, i64 %325
  %327 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %326, i32 0, i32 2
  %328 = load i8*, i8** %327, align 8
  %329 = call i8* @dc_fixpt_sub(i32 %322, i8* %328)
  %330 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %331 = load i64, i64* %7, align 8
  %332 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %330, i64 %331
  %333 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %332, i32 0, i32 2
  store i8* %329, i8** %333, align 8
  %334 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %335 = load i64, i64* %7, align 8
  %336 = sub i64 %335, 1
  %337 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %334, i64 %336
  %338 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %337, i32 0, i32 1
  %339 = load i8*, i8** %338, align 8
  %340 = call i32 @dc_fixpt_mul_int(i8* %339, i32 2)
  %341 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %342 = load i64, i64* %7, align 8
  %343 = sub i64 %342, 2
  %344 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %341, i64 %343
  %345 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %344, i32 0, i32 1
  %346 = load i8*, i8** %345, align 8
  %347 = call i8* @dc_fixpt_sub(i32 %340, i8* %346)
  %348 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %349 = load i64, i64* %7, align 8
  %350 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %348, i64 %349
  %351 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %350, i32 0, i32 1
  store i8* %347, i8** %351, align 8
  %352 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %353 = load i64, i64* %7, align 8
  %354 = sub i64 %353, 1
  %355 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %352, i64 %354
  %356 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %355, i32 0, i32 0
  %357 = load i8*, i8** %356, align 8
  %358 = call i32 @dc_fixpt_mul_int(i8* %357, i32 2)
  %359 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %360 = load i64, i64* %7, align 8
  %361 = sub i64 %360, 2
  %362 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %359, i64 %361
  %363 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %362, i32 0, i32 0
  %364 = load i8*, i8** %363, align 8
  %365 = call i8* @dc_fixpt_sub(i32 %358, i8* %364)
  %366 = load %struct.pwl_float_data*, %struct.pwl_float_data** %5, align 8
  %367 = load i64, i64* %7, align 8
  %368 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %366, i64 %367
  %369 = getelementptr inbounds %struct.pwl_float_data, %struct.pwl_float_data* %368, i32 0, i32 0
  store i8* %365, i8** %369, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @dc_fixpt_lt(i32, i32) #2

declare dso_local i32 @dc_fixpt_neg(i32) #2

declare dso_local i32 @dc_fixpt_add(i32, i32) #2

declare dso_local i8* @dc_fixpt_div(i32, i32) #2

declare dso_local i8* @dc_fixpt_sub(i32, i8*) #2

declare dso_local i32 @dc_fixpt_mul_int(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
