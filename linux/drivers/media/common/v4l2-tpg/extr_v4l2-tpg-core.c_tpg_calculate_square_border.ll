; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_calculate_square_border.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_calculate_square_border.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32, i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@TPG_VIDEO_ASPECT_16X9_ANAMORPHIC = common dso_local global i32 0, align 4
@TPG_PIXEL_ASPECT_NTSC = common dso_local global i64 0, align 8
@TPG_PIXEL_ASPECT_PAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpg_data*)* @tpg_calculate_square_border to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpg_calculate_square_border(%struct.tpg_data* %0) #0 {
  %2 = alloca %struct.tpg_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tpg_data* %0, %struct.tpg_data** %2, align 8
  %8 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %9 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %12 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = mul i32 %14, 2
  %16 = udiv i32 %15, 5
  %17 = and i32 %16, -2
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sub i32 %18, %19
  %21 = udiv i32 %20, 2
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 2
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %1
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %31 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %34 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TPG_VIDEO_ASPECT_16X9_ANAMORPHIC, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  %40 = udiv i32 %39, 4
  %41 = mul i32 %40, 3
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sub i32 %42, %43
  %45 = udiv i32 %44, 2
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, 2
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %38
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %54 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  br label %56

56:                                               ; preds = %51, %27
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %59 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub i32 %57, %61
  %63 = udiv i32 %62, 2
  %64 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %65 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %68 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TPG_PIXEL_ASPECT_NTSC, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %56
  %73 = load i32, i32* %5, align 4
  %74 = mul i32 %73, 10
  %75 = udiv i32 %74, 11
  store i32 %75, i32* %6, align 4
  br label %87

76:                                               ; preds = %56
  %77 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %78 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TPG_PIXEL_ASPECT_PAL, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* %5, align 4
  %84 = mul i32 %83, 59
  %85 = udiv i32 %84, 54
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %86, %72
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %90 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sub i32 %92, %93
  %95 = udiv i32 %94, 2
  %96 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %97 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  store i32 %95, i32* %98, align 4
  %99 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %100 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %104 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %107 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  store i32 0, i32* %108, align 8
  %109 = load i32, i32* %4, align 4
  %110 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %111 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  store i32 %109, i32* %112, align 4
  %113 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %114 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  switch i32 %115, label %348 [
    i32 128, label %116
    i32 130, label %180
    i32 129, label %264
  ]

116:                                              ; preds = %87
  %117 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %118 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %349

122:                                              ; preds = %116
  %123 = load i32, i32* %3, align 4
  %124 = mul i32 3, %123
  %125 = load i32, i32* %4, align 4
  %126 = mul i32 4, %125
  %127 = icmp uge i32 %124, %126
  br i1 %127, label %128, label %162

128:                                              ; preds = %122
  %129 = load i32, i32* %4, align 4
  %130 = mul i32 4, %129
  %131 = udiv i32 %130, 3
  %132 = and i32 %131, -2
  %133 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %134 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 4
  %136 = load i32, i32* %3, align 4
  %137 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %138 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sub i32 %136, %140
  %142 = udiv i32 %141, 2
  %143 = and i32 %142, -2
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %128
  %146 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %147 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sub i32 %149, 2
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %145, %128
  %152 = load i32, i32* %3, align 4
  %153 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %154 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sub i32 %152, %156
  %158 = udiv i32 %157, 2
  %159 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %160 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 8
  br label %349

162:                                              ; preds = %122
  %163 = load i32, i32* %3, align 4
  %164 = mul i32 3, %163
  %165 = udiv i32 %164, 4
  %166 = and i32 %165, -2
  %167 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %168 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 3
  store i32 %166, i32* %169, align 4
  %170 = load i32, i32* %4, align 4
  %171 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %172 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = sub i32 %170, %174
  %176 = udiv i32 %175, 2
  %177 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %178 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  store i32 %176, i32* %179, align 8
  br label %349

180:                                              ; preds = %87
  %181 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %182 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %206

185:                                              ; preds = %180
  %186 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %187 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @TPG_PIXEL_ASPECT_NTSC, align 8
  %190 = icmp eq i64 %188, %189
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32 420, i32 506
  %193 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %194 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 3
  store i32 %192, i32* %195, align 4
  %196 = load i32, i32* %4, align 4
  %197 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %198 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = sub i32 %196, %200
  %202 = udiv i32 %201, 2
  %203 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %204 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 2
  store i32 %202, i32* %205, align 8
  br label %349

206:                                              ; preds = %180
  %207 = load i32, i32* %3, align 4
  %208 = mul i32 9, %207
  %209 = load i32, i32* %4, align 4
  %210 = mul i32 14, %209
  %211 = icmp uge i32 %208, %210
  br i1 %211, label %212, label %246

212:                                              ; preds = %206
  %213 = load i32, i32* %4, align 4
  %214 = mul i32 14, %213
  %215 = udiv i32 %214, 9
  %216 = and i32 %215, -2
  %217 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %218 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 1
  store i32 %216, i32* %219, align 4
  %220 = load i32, i32* %3, align 4
  %221 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %222 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sub i32 %220, %224
  %226 = udiv i32 %225, 2
  %227 = and i32 %226, -2
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %212
  %230 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %231 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = sub i32 %233, 2
  store i32 %234, i32* %232, align 4
  br label %235

235:                                              ; preds = %229, %212
  %236 = load i32, i32* %3, align 4
  %237 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %238 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = sub i32 %236, %240
  %242 = udiv i32 %241, 2
  %243 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %244 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  store i32 %242, i32* %245, align 8
  br label %349

246:                                              ; preds = %206
  %247 = load i32, i32* %3, align 4
  %248 = mul i32 9, %247
  %249 = udiv i32 %248, 14
  %250 = and i32 %249, -2
  %251 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %252 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 3
  store i32 %250, i32* %253, align 4
  %254 = load i32, i32* %4, align 4
  %255 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %256 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = sub i32 %254, %258
  %260 = udiv i32 %259, 2
  %261 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %262 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 2
  store i32 %260, i32* %263, align 8
  br label %349

264:                                              ; preds = %87
  %265 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %266 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %290

269:                                              ; preds = %264
  %270 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %271 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @TPG_PIXEL_ASPECT_NTSC, align 8
  %274 = icmp eq i64 %272, %273
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i32 368, i32 442
  %277 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %278 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 3
  store i32 %276, i32* %279, align 4
  %280 = load i32, i32* %4, align 4
  %281 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %282 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %281, i32 0, i32 4
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = sub i32 %280, %284
  %286 = udiv i32 %285, 2
  %287 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %288 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %287, i32 0, i32 4
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 2
  store i32 %286, i32* %289, align 8
  br label %349

290:                                              ; preds = %264
  %291 = load i32, i32* %3, align 4
  %292 = mul i32 9, %291
  %293 = load i32, i32* %4, align 4
  %294 = mul i32 16, %293
  %295 = icmp uge i32 %292, %294
  br i1 %295, label %296, label %330

296:                                              ; preds = %290
  %297 = load i32, i32* %4, align 4
  %298 = mul i32 16, %297
  %299 = udiv i32 %298, 9
  %300 = and i32 %299, -2
  %301 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %302 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %301, i32 0, i32 4
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 1
  store i32 %300, i32* %303, align 4
  %304 = load i32, i32* %3, align 4
  %305 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %306 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %305, i32 0, i32 4
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = sub i32 %304, %308
  %310 = udiv i32 %309, 2
  %311 = and i32 %310, -2
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %296
  %314 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %315 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %314, i32 0, i32 4
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = sub i32 %317, 2
  store i32 %318, i32* %316, align 4
  br label %319

319:                                              ; preds = %313, %296
  %320 = load i32, i32* %3, align 4
  %321 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %322 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %321, i32 0, i32 4
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = sub i32 %320, %324
  %326 = udiv i32 %325, 2
  %327 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %328 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %327, i32 0, i32 4
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 0
  store i32 %326, i32* %329, align 8
  br label %349

330:                                              ; preds = %290
  %331 = load i32, i32* %3, align 4
  %332 = mul i32 9, %331
  %333 = udiv i32 %332, 16
  %334 = and i32 %333, -2
  %335 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %336 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %335, i32 0, i32 4
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 3
  store i32 %334, i32* %337, align 4
  %338 = load i32, i32* %4, align 4
  %339 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %340 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %339, i32 0, i32 4
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 4
  %343 = sub i32 %338, %342
  %344 = udiv i32 %343, 2
  %345 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %346 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %345, i32 0, i32 4
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 2
  store i32 %344, i32* %347, align 8
  br label %349

348:                                              ; preds = %87
  br label %349

349:                                              ; preds = %121, %348, %330, %319, %269, %246, %235, %185, %162, %151
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
