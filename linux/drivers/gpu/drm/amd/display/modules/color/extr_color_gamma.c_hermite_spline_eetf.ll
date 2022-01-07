; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_hermite_spline_eetf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_hermite_spline_eetf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i32 }

@dc_fixpt_zero = common dso_local global %struct.fixed31_32 zeroinitializer, align 4
@dc_fixpt_one = common dso_local global %struct.fixed31_32 zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, %struct.fixed31_32*)* @hermite_spline_eetf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hermite_spline_eetf(i32 %0, i32 %1, i32 %2, i32 %3, %struct.fixed31_32* %4) #0 {
  %6 = alloca %struct.fixed31_32, align 4
  %7 = alloca %struct.fixed31_32, align 4
  %8 = alloca %struct.fixed31_32, align 4
  %9 = alloca %struct.fixed31_32, align 4
  %10 = alloca %struct.fixed31_32*, align 8
  %11 = alloca %struct.fixed31_32, align 4
  %12 = alloca %struct.fixed31_32, align 4
  %13 = alloca %struct.fixed31_32, align 4
  %14 = alloca %struct.fixed31_32, align 4
  %15 = alloca %struct.fixed31_32, align 4
  %16 = alloca %struct.fixed31_32, align 4
  %17 = alloca %struct.fixed31_32, align 4
  %18 = alloca %struct.fixed31_32, align 4
  %19 = alloca %struct.fixed31_32, align 4
  %20 = alloca %struct.fixed31_32, align 4
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
  %34 = alloca %struct.fixed31_32, align 4
  %35 = alloca %struct.fixed31_32, align 4
  %36 = alloca %struct.fixed31_32, align 4
  %37 = alloca %struct.fixed31_32, align 4
  %38 = alloca %struct.fixed31_32, align 4
  %39 = alloca %struct.fixed31_32, align 4
  %40 = alloca %struct.fixed31_32, align 4
  %41 = alloca %struct.fixed31_32, align 4
  %42 = alloca %struct.fixed31_32, align 4
  %43 = alloca %struct.fixed31_32, align 4
  %44 = alloca %struct.fixed31_32, align 4
  %45 = alloca %struct.fixed31_32, align 4
  %46 = alloca %struct.fixed31_32, align 4
  %47 = alloca %struct.fixed31_32, align 4
  %48 = alloca %struct.fixed31_32, align 4
  %49 = alloca %struct.fixed31_32, align 4
  %50 = alloca %struct.fixed31_32, align 4
  %51 = alloca %struct.fixed31_32, align 4
  %52 = alloca %struct.fixed31_32, align 4
  %53 = alloca %struct.fixed31_32, align 4
  %54 = alloca %struct.fixed31_32, align 4
  %55 = alloca %struct.fixed31_32, align 4
  %56 = alloca %struct.fixed31_32, align 4
  %57 = alloca %struct.fixed31_32, align 4
  %58 = alloca %struct.fixed31_32, align 4
  %59 = alloca %struct.fixed31_32, align 4
  %60 = alloca %struct.fixed31_32, align 4
  %61 = alloca %struct.fixed31_32, align 4
  %62 = alloca %struct.fixed31_32, align 4
  %63 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %6, i32 0, i32 0
  store i32 %0, i32* %63, align 4
  %64 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %7, i32 0, i32 0
  store i32 %1, i32* %64, align 4
  %65 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  store i32 %2, i32* %65, align 4
  %66 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  store i32 %3, i32* %66, align 4
  store %struct.fixed31_32* %4, %struct.fixed31_32** %10, align 8
  %67 = call i32 @dc_fixpt_from_fraction(i32 15, i32 10)
  %68 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %25, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = call i32 @dc_fixpt_from_fraction(i32 5, i32 10)
  %70 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %26, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = call i32 @dc_fixpt_from_fraction(i32 1, i32 1000000)
  %72 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %27, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_zero, i32 0, i32 0), align 4
  %76 = call i64 @dc_fixpt_eq(i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %5
  %79 = load %struct.fixed31_32*, %struct.fixed31_32** %10, align 8
  %80 = bitcast %struct.fixed31_32* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 bitcast (%struct.fixed31_32* @dc_fixpt_zero to i8*), i64 4, i1 false)
  br label %370

81:                                               ; preds = %5
  %82 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %6, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @compute_pq(i32 %83, %struct.fixed31_32* %15)
  %85 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dc_fixpt_div(i32 %86, i32 %88)
  %90 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %28, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %28, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @compute_pq(i32 %92, %struct.fixed31_32* %11)
  %94 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %7, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dc_fixpt_div(i32 %95, i32 %97)
  %99 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %29, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %29, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @compute_pq(i32 %101, %struct.fixed31_32* %12)
  %103 = load i32, i32* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_one, i32 0, i32 0), align 4
  %104 = call i32 @compute_pq(i32 %103, %struct.fixed31_32* %13)
  %105 = load i32, i32* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_one, i32 0, i32 0), align 4
  %106 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %26, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dc_fixpt_add(i32 %105, i32 %107)
  %109 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %31, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %31, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %13, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dc_fixpt_div(i32 %111, i32 %113)
  %115 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %30, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  %116 = bitcast %struct.fixed31_32* %25 to i8*
  %117 = bitcast %struct.fixed31_32* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 4, i1 false)
  %118 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %25, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %12, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dc_fixpt_mul(i32 %119, i32 %121)
  %123 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %33, i32 0, i32 0
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %33, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %26, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @dc_fixpt_sub(i32 %125, i32 %127)
  %129 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %32, i32 0, i32 0
  store i32 %128, i32* %129, align 4
  %130 = bitcast %struct.fixed31_32* %14 to i8*
  %131 = bitcast %struct.fixed31_32* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %130, i8* align 4 %131, i64 4, i1 false)
  %132 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %15, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @dc_fixpt_lt(i32 %133, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %81
  %139 = bitcast %struct.fixed31_32* %16 to i8*
  %140 = bitcast %struct.fixed31_32* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %139, i8* align 4 %140, i64 4, i1 false)
  br label %312

141:                                              ; preds = %81
  %142 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %15, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @dc_fixpt_le(i32 %143, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %309

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %15, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_one, i32 0, i32 0), align 4
  %152 = call i64 @dc_fixpt_le(i32 %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %309

154:                                              ; preds = %148
  %155 = load i32, i32* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_one, i32 0, i32 0), align 4
  %156 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @dc_fixpt_sub(i32 %155, i32 %157)
  %159 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %34, i32 0, i32 0
  store i32 %158, i32* %159, align 4
  %160 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %27, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %34, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @dc_fixpt_lt(i32 %161, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %186

166:                                              ; preds = %154
  %167 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %15, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @dc_fixpt_sub(i32 %168, i32 %170)
  %172 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %36, i32 0, i32 0
  store i32 %171, i32* %172, align 4
  %173 = load i32, i32* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_one, i32 0, i32 0), align 4
  %174 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @dc_fixpt_sub(i32 %173, i32 %175)
  %177 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %37, i32 0, i32 0
  store i32 %176, i32* %177, align 4
  %178 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %36, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %37, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @dc_fixpt_div(i32 %179, i32 %181)
  %183 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %35, i32 0, i32 0
  store i32 %182, i32* %183, align 4
  %184 = bitcast %struct.fixed31_32* %18 to i8*
  %185 = bitcast %struct.fixed31_32* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %184, i8* align 4 %185, i64 4, i1 false)
  br label %188

186:                                              ; preds = %154
  %187 = bitcast %struct.fixed31_32* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %187, i8* align 4 bitcast (%struct.fixed31_32* @dc_fixpt_zero to i8*), i64 4, i1 false)
  br label %188

188:                                              ; preds = %186, %166
  %189 = call i32 @dc_fixpt_from_int(i32 2)
  %190 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %38, i32 0, i32 0
  store i32 %189, i32* %190, align 4
  %191 = bitcast %struct.fixed31_32* %21 to i8*
  %192 = bitcast %struct.fixed31_32* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %191, i8* align 4 %192, i64 4, i1 false)
  %193 = call i32 @dc_fixpt_from_int(i32 3)
  %194 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %39, i32 0, i32 0
  store i32 %193, i32* %194, align 4
  %195 = bitcast %struct.fixed31_32* %22 to i8*
  %196 = bitcast %struct.fixed31_32* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %195, i8* align 4 %196, i64 4, i1 false)
  %197 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %18, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %18, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @dc_fixpt_mul(i32 %198, i32 %200)
  %202 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %40, i32 0, i32 0
  store i32 %201, i32* %202, align 4
  %203 = bitcast %struct.fixed31_32* %19 to i8*
  %204 = bitcast %struct.fixed31_32* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %203, i8* align 4 %204, i64 4, i1 false)
  %205 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %19, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %18, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @dc_fixpt_mul(i32 %206, i32 %208)
  %210 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %41, i32 0, i32 0
  store i32 %209, i32* %210, align 4
  %211 = bitcast %struct.fixed31_32* %20 to i8*
  %212 = bitcast %struct.fixed31_32* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %211, i8* align 4 %212, i64 4, i1 false)
  %213 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %21, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %20, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @dc_fixpt_mul(i32 %214, i32 %216)
  %218 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %42, i32 0, i32 0
  store i32 %217, i32* %218, align 4
  %219 = bitcast %struct.fixed31_32* %23 to i8*
  %220 = bitcast %struct.fixed31_32* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %219, i8* align 4 %220, i64 4, i1 false)
  %221 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %22, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %19, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @dc_fixpt_mul(i32 %222, i32 %224)
  %226 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %43, i32 0, i32 0
  store i32 %225, i32* %226, align 4
  %227 = bitcast %struct.fixed31_32* %24 to i8*
  %228 = bitcast %struct.fixed31_32* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %227, i8* align 4 %228, i64 4, i1 false)
  %229 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @dc_fixpt_sub(i32 %230, i32 %232)
  %234 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %46, i32 0, i32 0
  store i32 %233, i32* %234, align 4
  %235 = load i32, i32* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_one, i32 0, i32 0), align 4
  %236 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %46, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @dc_fixpt_add(i32 %235, i32 %237)
  %239 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %45, i32 0, i32 0
  store i32 %238, i32* %239, align 4
  %240 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %45, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @dc_fixpt_mul(i32 %241, i32 %243)
  %245 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %44, i32 0, i32 0
  store i32 %244, i32* %245, align 4
  %246 = bitcast %struct.fixed31_32* %16 to i8*
  %247 = bitcast %struct.fixed31_32* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %246, i8* align 4 %247, i64 4, i1 false)
  %248 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @dc_fixpt_sub(i32 %249, i32 %251)
  %253 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %49, i32 0, i32 0
  store i32 %252, i32* %253, align 4
  %254 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %12, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %49, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @dc_fixpt_mul(i32 %255, i32 %257)
  %259 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %48, i32 0, i32 0
  store i32 %258, i32* %259, align 4
  %260 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %16, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %48, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @dc_fixpt_add(i32 %261, i32 %263)
  %265 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %47, i32 0, i32 0
  store i32 %264, i32* %265, align 4
  %266 = bitcast %struct.fixed31_32* %16 to i8*
  %267 = bitcast %struct.fixed31_32* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %266, i8* align 4 %267, i64 4, i1 false)
  %268 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %21, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %19, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @dc_fixpt_mul(i32 %269, i32 %271)
  %273 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %50, i32 0, i32 0
  store i32 %272, i32* %273, align 4
  %274 = bitcast %struct.fixed31_32* %23 to i8*
  %275 = bitcast %struct.fixed31_32* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %274, i8* align 4 %275, i64 4, i1 false)
  %276 = load i32, i32* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_one, i32 0, i32 0), align 4
  %277 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %14, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @dc_fixpt_sub(i32 %276, i32 %278)
  %280 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %51, i32 0, i32 0
  store i32 %279, i32* %280, align 4
  %281 = bitcast %struct.fixed31_32* %24 to i8*
  %282 = bitcast %struct.fixed31_32* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %281, i8* align 4 %282, i64 4, i1 false)
  %283 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %20, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @dc_fixpt_sub(i32 %284, i32 %286)
  %288 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %55, i32 0, i32 0
  store i32 %287, i32* %288, align 4
  %289 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %18, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %55, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @dc_fixpt_add(i32 %290, i32 %292)
  %294 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %54, i32 0, i32 0
  store i32 %293, i32* %294, align 4
  %295 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %54, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @dc_fixpt_mul(i32 %296, i32 %298)
  %300 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %53, i32 0, i32 0
  store i32 %299, i32* %300, align 4
  %301 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %16, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %53, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @dc_fixpt_add(i32 %302, i32 %304)
  %306 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %52, i32 0, i32 0
  store i32 %305, i32* %306, align 4
  %307 = bitcast %struct.fixed31_32* %16 to i8*
  %308 = bitcast %struct.fixed31_32* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %307, i8* align 4 %308, i64 4, i1 false)
  br label %311

309:                                              ; preds = %148, %141
  %310 = bitcast %struct.fixed31_32* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %310, i8* align 4 bitcast (%struct.fixed31_32* @dc_fixpt_one to i8*), i64 4, i1 false)
  br label %311

311:                                              ; preds = %309, %188
  br label %312

312:                                              ; preds = %311, %138
  %313 = load i32, i32* getelementptr inbounds (%struct.fixed31_32, %struct.fixed31_32* @dc_fixpt_one, i32 0, i32 0), align 4
  %314 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %16, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @dc_fixpt_sub(i32 %313, i32 %315)
  %317 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %56, i32 0, i32 0
  store i32 %316, i32* %317, align 4
  %318 = bitcast %struct.fixed31_32* %23 to i8*
  %319 = bitcast %struct.fixed31_32* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %318, i8* align 4 %319, i64 4, i1 false)
  %320 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %23, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @dc_fixpt_mul(i32 %321, i32 %323)
  %325 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %57, i32 0, i32 0
  store i32 %324, i32* %325, align 4
  %326 = bitcast %struct.fixed31_32* %24 to i8*
  %327 = bitcast %struct.fixed31_32* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %326, i8* align 4 %327, i64 4, i1 false)
  %328 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @dc_fixpt_mul(i32 %329, i32 %331)
  %333 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %58, i32 0, i32 0
  store i32 %332, i32* %333, align 4
  %334 = bitcast %struct.fixed31_32* %24 to i8*
  %335 = bitcast %struct.fixed31_32* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %334, i8* align 4 %335, i64 4, i1 false)
  %336 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %11, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @dc_fixpt_mul(i32 %337, i32 %339)
  %341 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %60, i32 0, i32 0
  store i32 %340, i32* %341, align 4
  %342 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %16, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %60, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @dc_fixpt_add(i32 %343, i32 %345)
  %347 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %59, i32 0, i32 0
  store i32 %346, i32* %347, align 4
  %348 = bitcast %struct.fixed31_32* %17 to i8*
  %349 = bitcast %struct.fixed31_32* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %348, i8* align 4 %349, i64 4, i1 false)
  %350 = load %struct.fixed31_32*, %struct.fixed31_32** %10, align 8
  %351 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %17, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @compute_de_pq(i32 %352, %struct.fixed31_32* %350)
  %354 = load %struct.fixed31_32*, %struct.fixed31_32** %10, align 8
  %355 = load %struct.fixed31_32*, %struct.fixed31_32** %10, align 8
  %356 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %7, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @dc_fixpt_div(i32 %357, i32 %359)
  %361 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %62, i32 0, i32 0
  store i32 %360, i32* %361, align 4
  %362 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %355, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %62, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @dc_fixpt_div(i32 %363, i32 %365)
  %367 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %61, i32 0, i32 0
  store i32 %366, i32* %367, align 4
  %368 = bitcast %struct.fixed31_32* %354 to i8*
  %369 = bitcast %struct.fixed31_32* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %368, i8* align 4 %369, i64 4, i1 false)
  br label %370

370:                                              ; preds = %312, %78
  ret void
}

declare dso_local i32 @dc_fixpt_from_fraction(i32, i32) #1

declare dso_local i64 @dc_fixpt_eq(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @compute_pq(i32, %struct.fixed31_32*) #1

declare dso_local i32 @dc_fixpt_div(i32, i32) #1

declare dso_local i32 @dc_fixpt_add(i32, i32) #1

declare dso_local i32 @dc_fixpt_sub(i32, i32) #1

declare dso_local i32 @dc_fixpt_mul(i32, i32) #1

declare dso_local i64 @dc_fixpt_lt(i32, i32) #1

declare dso_local i64 @dc_fixpt_le(i32, i32) #1

declare dso_local i32 @dc_fixpt_from_int(i32) #1

declare dso_local i32 @compute_de_pq(i32, %struct.fixed31_32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
