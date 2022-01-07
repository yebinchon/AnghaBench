; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_apply_below_the_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_apply_below_the_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core_freesync = type { i32 }
%struct.dc_stream_state = type { i32 }
%struct.mod_vrr_params = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8* }

@BTR_EXIT_MARGIN = common dso_local global i32 0, align 4
@BTR_DRIFT_MARGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.core_freesync*, %struct.dc_stream_state*, i32, %struct.mod_vrr_params*)* @apply_below_the_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_below_the_range(%struct.core_freesync* %0, %struct.dc_stream_state* %1, i32 %2, %struct.mod_vrr_params* %3) #0 {
  %5 = alloca %struct.core_freesync*, align 8
  %6 = alloca %struct.dc_stream_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mod_vrr_params*, align 8
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
  store %struct.core_freesync* %0, %struct.core_freesync** %5, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mod_vrr_params* %3, %struct.mod_vrr_params** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %20 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %17, align 4
  %22 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %23 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @div64_u64(i64 1000000000000000, i32 %24)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @BTR_EXIT_MARGIN, align 4
  %29 = add i32 %27, %28
  %30 = load i32, i32* %17, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %4
  %33 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %34 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %40 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %43 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %38, %32
  br label %55

46:                                               ; preds = %4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %52 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %45
  %56 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %57 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %87, label %61

61:                                               ; preds = %55
  %62 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %63 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store i32 0, i32* %64, align 8
  %65 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %66 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  store i32 0, i32* %67, align 4
  %68 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %69 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %72 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %73 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @calc_v_total_from_refresh(%struct.dc_stream_state* %71, i32 %74)
  %76 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %77 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i8* %75, i8** %78, align 8
  %79 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %80 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %81 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @calc_v_total_from_refresh(%struct.dc_stream_state* %79, i32 %82)
  %84 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %85 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i8* %83, i8** %86, align 8
  br label %260

87:                                               ; preds = %55
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %90 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = add i32 %88, %92
  %94 = sub i32 %93, 1
  %95 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %96 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = udiv i32 %94, %98
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ugt i32 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %87
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %10, align 4
  %105 = udiv i32 %103, %104
  store i32 %105, i32* %12, align 4
  %106 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %107 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = icmp ugt i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %102
  %113 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %114 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sub i32 %116, %117
  br label %126

119:                                              ; preds = %102
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %122 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = sub i32 %120, %124
  br label %126

126:                                              ; preds = %119, %112
  %127 = phi i32 [ %118, %112 ], [ %125, %119 ]
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %126, %87
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %131 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = udiv i32 %129, %133
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp ugt i32 %135, 0
  br i1 %136, label %137, label %163

137:                                              ; preds = %128
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %11, align 4
  %140 = udiv i32 %138, %139
  store i32 %140, i32* %12, align 4
  %141 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %142 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = icmp ugt i32 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %137
  %148 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %149 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sub i32 %151, %152
  br label %161

154:                                              ; preds = %137
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %157 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = sub i32 %155, %159
  br label %161

161:                                              ; preds = %154, %147
  %162 = phi i32 [ %153, %147 ], [ %160, %154 ]
  store i32 %162, i32* %14, align 4
  br label %163

163:                                              ; preds = %161, %128
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp ult i32 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load i32, i32* %10, align 4
  store i32 %168, i32* %15, align 4
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %13, align 4
  %171 = sub i32 %169, %170
  store i32 %171, i32* %18, align 4
  br label %177

172:                                              ; preds = %163
  %173 = load i32, i32* %11, align 4
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %14, align 4
  %176 = sub i32 %174, %175
  store i32 %176, i32* %18, align 4
  br label %177

177:                                              ; preds = %172, %167
  %178 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %179 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %215

183:                                              ; preds = %177
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* @BTR_DRIFT_MARGIN, align 4
  %186 = icmp ult i32 %184, %185
  br i1 %186, label %187, label %215

187:                                              ; preds = %183
  %188 = load i32, i32* %7, align 4
  %189 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %190 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = udiv i32 %188, %192
  %194 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %195 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp ult i32 %193, %196
  br i1 %197, label %198, label %214

198:                                              ; preds = %187
  %199 = load i32, i32* %7, align 4
  %200 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %201 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = udiv i32 %199, %203
  %205 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %206 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp ugt i32 %204, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %198
  %210 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %211 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %15, align 4
  br label %214

214:                                              ; preds = %209, %198, %187
  br label %215

215:                                              ; preds = %214, %183, %177
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* %15, align 4
  %218 = udiv i32 %216, %217
  %219 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %220 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp ult i32 %218, %221
  br i1 %222, label %223, label %230

223:                                              ; preds = %215
  %224 = load i32, i32* %15, align 4
  %225 = icmp ugt i32 %224, 1
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i32 1, i32 0
  %228 = load i32, i32* %15, align 4
  %229 = sub i32 %228, %227
  store i32 %229, i32* %15, align 4
  br label %230

230:                                              ; preds = %223, %215
  %231 = load i32, i32* %15, align 4
  %232 = icmp ugt i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* %15, align 4
  %236 = udiv i32 %234, %235
  store i32 %236, i32* %9, align 4
  br label %237

237:                                              ; preds = %233, %230
  %238 = load i32, i32* %9, align 4
  %239 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %240 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp ult i32 %238, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %237
  %244 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %245 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %9, align 4
  br label %247

247:                                              ; preds = %243, %237
  %248 = load i32, i32* %9, align 4
  %249 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %250 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 2
  store i32 %248, i32* %251, align 8
  %252 = load i32, i32* %15, align 4
  %253 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %254 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 3
  store i32 %252, i32* %255, align 4
  %256 = load i32, i32* %15, align 4
  %257 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %258 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 1
  store i32 %256, i32* %259, align 4
  br label %260

260:                                              ; preds = %247, %61
  ret void
}

declare dso_local i64 @div64_u64(i64, i32) #1

declare dso_local i8* @calc_v_total_from_refresh(%struct.dc_stream_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
