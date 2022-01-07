; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dsc.c_drm_dsc_compute_rc_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dsc.c_drm_dsc_compute_rc_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dsc_config = type { i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i32, i64, i64, i32, i64, i64, i64, i64, i64 }

@DSC_RC_PIXELS_PER_GROUP = common dso_local global i32 0, align 4
@DSC_SCALE_DECREMENT_INTERVAL_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"FinalOfs < RcModelSze for this InitialXmitDelay\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"NflBpgOffset is too large for this slice height\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"ScaleIncrementInterval is large for slice height\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dsc_compute_rc_parameters(%struct.drm_dsc_config* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_dsc_config*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.drm_dsc_config* %0, %struct.drm_dsc_config** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %12 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %11, i32 0, i32 20
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %17 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %16, i32 0, i32 18
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %15, %1
  %21 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %22 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sdiv i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* @DSC_RC_PIXELS_PER_GROUP, align 4
  %27 = call i64 @DIV_ROUND_UP(i64 %25, i32 %26)
  store i64 %27, i64* %4, align 8
  %28 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %29 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %30, 2
  %32 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %33 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %31, %34
  %36 = sext i32 %35 to i64
  %37 = call i64 @DIV_ROUND_UP(i64 %36, i32 128)
  %38 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %39 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  br label %58

40:                                               ; preds = %15
  %41 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %42 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = load i32, i32* @DSC_RC_PIXELS_PER_GROUP, align 4
  %46 = call i64 @DIV_ROUND_UP(i64 %44, i32 %45)
  store i64 %46, i64* %4, align 8
  %47 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %48 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %51 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %49, %52
  %54 = sext i32 %53 to i64
  %55 = call i64 @DIV_ROUND_UP(i64 %54, i32 128)
  %56 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %57 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %40, %20
  %59 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %60 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %59, i32 0, i32 19
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %65 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %68 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 4, %69
  %71 = add nsw i32 %70, 4
  %72 = add nsw i32 %66, %71
  %73 = sub nsw i32 %72, 2
  %74 = mul nsw i32 3, %73
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %6, align 8
  br label %120

76:                                               ; preds = %58
  %77 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %78 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %77, i32 0, i32 18
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %76
  %82 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %83 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 4, %84
  %86 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %87 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 4, %88
  %90 = add nsw i32 %89, 4
  %91 = add nsw i32 %85, %90
  %92 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %93 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 4, %94
  %96 = mul nsw i32 3, %95
  %97 = add nsw i32 %91, %96
  %98 = sub nsw i32 %97, 2
  %99 = sext i32 %98 to i64
  store i64 %99, i64* %6, align 8
  br label %119

100:                                              ; preds = %76
  %101 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %102 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 3, %103
  %105 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %106 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 4, %107
  %109 = add nsw i32 %108, 4
  %110 = add nsw i32 %104, %109
  %111 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %112 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 4, %113
  %115 = mul nsw i32 2, %114
  %116 = add nsw i32 %110, %115
  %117 = sub nsw i32 %116, 2
  %118 = sext i32 %117 to i64
  store i64 %118, i64* %6, align 8
  br label %119

119:                                              ; preds = %100, %81
  br label %120

120:                                              ; preds = %119, %63
  %121 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %122 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = mul i64 8, %123
  %125 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %126 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 %124, %128
  store i64 %129, i64* %7, align 8
  br label %130

130:                                              ; preds = %145, %120
  %131 = load i64, i64* %6, align 8
  %132 = icmp ugt i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* %6, align 8
  %136 = sub i64 %134, %135
  %137 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %138 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = urem i64 %136, %140
  %142 = icmp ne i64 %141, 0
  br label %143

143:                                              ; preds = %133, %130
  %144 = phi i1 [ false, %130 ], [ %142, %133 ]
  br i1 %144, label %145, label %148

145:                                              ; preds = %143
  %146 = load i64, i64* %6, align 8
  %147 = add i64 %146, -1
  store i64 %147, i64* %6, align 8
  br label %130

148:                                              ; preds = %143
  %149 = load i64, i64* %4, align 8
  %150 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %151 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %152, 8
  %154 = sext i32 %153 to i64
  %155 = icmp ult i64 %149, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %148
  %157 = load i64, i64* %4, align 8
  %158 = add i64 %157, 8
  %159 = trunc i64 %158 to i32
  %160 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %161 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %156, %148
  %163 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %164 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = icmp sgt i32 %165, 8
  br i1 %166, label %167, label %177

167:                                              ; preds = %162
  %168 = load i64, i64* %4, align 8
  %169 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %170 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %171, 8
  %173 = sext i32 %172 to i64
  %174 = udiv i64 %168, %173
  %175 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %176 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %175, i32 0, i32 7
  store i64 %174, i64* %176, align 8
  br label %181

177:                                              ; preds = %162
  %178 = load i64, i64* @DSC_SCALE_DECREMENT_INTERVAL_MAX, align 8
  %179 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %180 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %179, i32 0, i32 7
  store i64 %178, i64* %180, align 8
  br label %181

181:                                              ; preds = %177, %167
  %182 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %183 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %182, i32 0, i32 9
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %186 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %185, i32 0, i32 10
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %189 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = mul nsw i32 %187, %190
  %192 = add nsw i32 %191, 8
  %193 = sdiv i32 %192, 16
  %194 = sext i32 %193 to i64
  %195 = sub nsw i64 %184, %194
  %196 = load i64, i64* %6, align 8
  %197 = add i64 %195, %196
  %198 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %199 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %198, i32 0, i32 8
  store i64 %197, i64* %199, align 8
  %200 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %201 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %200, i32 0, i32 8
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %204 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %203, i32 0, i32 9
  %205 = load i64, i64* %204, align 8
  %206 = icmp sge i64 %202, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %181
  %208 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %209 = load i32, i32* @ERANGE, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %2, align 4
  br label %356

211:                                              ; preds = %181
  %212 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %213 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %212, i32 0, i32 9
  %214 = load i64, i64* %213, align 8
  %215 = mul nsw i64 %214, 8
  %216 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %217 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %216, i32 0, i32 9
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %220 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %219, i32 0, i32 8
  %221 = load i64, i64* %220, align 8
  %222 = sub nsw i64 %218, %221
  %223 = sdiv i64 %215, %222
  store i64 %223, i64* %9, align 8
  %224 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %225 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = icmp sgt i32 %226, 1
  br i1 %227, label %228, label %241

228:                                              ; preds = %211
  %229 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %230 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %229, i32 0, i32 12
  %231 = load i32, i32* %230, align 8
  %232 = shl i32 %231, 11
  %233 = sext i32 %232 to i64
  %234 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %235 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 %236, 1
  %238 = call i64 @DIV_ROUND_UP(i64 %233, i32 %237)
  %239 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %240 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %239, i32 0, i32 11
  store i64 %238, i64* %240, align 8
  br label %244

241:                                              ; preds = %211
  %242 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %243 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %242, i32 0, i32 11
  store i64 0, i64* %243, align 8
  br label %244

244:                                              ; preds = %241, %228
  %245 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %246 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %245, i32 0, i32 11
  %247 = load i64, i64* %246, align 8
  %248 = icmp ugt i64 %247, 65535
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %251 = load i32, i32* @ERANGE, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %2, align 4
  br label %356

253:                                              ; preds = %244
  %254 = load i64, i64* %4, align 8
  %255 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %256 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = mul i64 %254, %258
  store i64 %259, i64* %5, align 8
  %260 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %261 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %260, i32 0, i32 9
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %264 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %263, i32 0, i32 14
  %265 = load i64, i64* %264, align 8
  %266 = sub i64 %262, %265
  %267 = load i64, i64* %6, align 8
  %268 = add i64 %266, %267
  %269 = shl i64 %268, 11
  %270 = load i64, i64* %5, align 8
  %271 = trunc i64 %270 to i32
  %272 = call i64 @DIV_ROUND_UP(i64 %269, i32 %271)
  %273 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %274 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %273, i32 0, i32 13
  store i64 %272, i64* %274, align 8
  %275 = load i64, i64* %9, align 8
  %276 = icmp ugt i64 %275, 9
  br i1 %276, label %277, label %296

277:                                              ; preds = %253
  %278 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %279 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %278, i32 0, i32 8
  %280 = load i64, i64* %279, align 8
  %281 = mul nsw i64 %280, 2048
  %282 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %283 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %282, i32 0, i32 11
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %286 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %285, i32 0, i32 13
  %287 = load i64, i64* %286, align 8
  %288 = add i64 %284, %287
  %289 = load i64, i64* %9, align 8
  %290 = sub i64 %289, 9
  %291 = mul i64 %288, %290
  %292 = udiv i64 %281, %291
  %293 = trunc i64 %292 to i32
  %294 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %295 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %294, i32 0, i32 15
  store i32 %293, i32* %295, align 8
  br label %299

296:                                              ; preds = %253
  %297 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %298 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %297, i32 0, i32 15
  store i32 0, i32* %298, align 8
  br label %299

299:                                              ; preds = %296, %277
  %300 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %301 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %300, i32 0, i32 15
  %302 = load i32, i32* %301, align 8
  %303 = icmp sgt i32 %302, 65535
  br i1 %303, label %304, label %308

304:                                              ; preds = %299
  %305 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %306 = load i32, i32* @ERANGE, align 4
  %307 = sub nsw i32 0, %306
  store i32 %307, i32* %2, align 4
  br label %356

308:                                              ; preds = %299
  %309 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %310 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %309, i32 0, i32 9
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %313 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %312, i32 0, i32 14
  %314 = load i64, i64* %313, align 8
  %315 = sub i64 %311, %314
  %316 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %317 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %316, i32 0, i32 10
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %320 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = mul nsw i32 %318, %321
  %323 = sext i32 %322 to i64
  %324 = call i64 @DIV_ROUND_UP(i64 %323, i32 16)
  %325 = add i64 %315, %324
  %326 = load i64, i64* %4, align 8
  %327 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %328 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %327, i32 0, i32 12
  %329 = load i32, i32* %328, align 8
  %330 = sext i32 %329 to i64
  %331 = mul i64 %326, %330
  %332 = add i64 %325, %331
  store i64 %332, i64* %10, align 8
  %333 = load i64, i64* %10, align 8
  %334 = mul i64 %333, 16
  %335 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %336 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = call i64 @DIV_ROUND_UP(i64 %334, i32 %337)
  store i64 %338, i64* %8, align 8
  %339 = load i64, i64* %8, align 8
  %340 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %341 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = sext i32 %342 to i64
  %344 = mul i64 %339, %343
  %345 = udiv i64 %344, 16
  %346 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %347 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %346, i32 0, i32 16
  store i64 %345, i64* %347, align 8
  %348 = load i64, i64* %8, align 8
  %349 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %350 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %349, i32 0, i32 10
  %351 = load i32, i32* %350, align 8
  %352 = sext i32 %351 to i64
  %353 = sub i64 %348, %352
  %354 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %3, align 8
  %355 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %354, i32 0, i32 17
  store i64 %353, i64* %355, align 8
  store i32 0, i32* %2, align 4
  br label %356

356:                                              ; preds = %308, %304, %249, %207
  %357 = load i32, i32* %2, align 4
  ret i32 %357
}

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
