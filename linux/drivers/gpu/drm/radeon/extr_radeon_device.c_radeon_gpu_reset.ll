; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_gpu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_gpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__, i64, i32*, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Saved %d dwords of commands on ring %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"GPU reset succeeded, trying to resume\0A\00", align 1
@PM_METHOD_DPM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"radeon_pm_late_init failed, disabling dpm\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"GPU reset failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gpu_reset(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %13 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32*, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 2
  %22 = call i32 @down_write(i32* %21)
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %1
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 2
  %30 = call i32 @up_write(i32* %29)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %266

31:                                               ; preds = %1
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 10
  %34 = call i32 @atomic_inc(i32* %33)
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = call i32 @radeon_save_bios_scratch_regs(%struct.radeon_device* %35)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = call i32 @ttm_bo_lock_delayed_workqueue(i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = call i32 @radeon_suspend(%struct.radeon_device* %41)
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = call i32 @radeon_hpd_fini(%struct.radeon_device* %43)
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %80, %31
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %45
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 9
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %19, i64 %58
  %60 = call i32 @radeon_ring_backup(%struct.radeon_device* %50, i32* %56, i32** %59)
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %16, i64 %62
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %16, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %16, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (i32, i8*, ...) @dev_info(i32 %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %69, %49
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %45

83:                                               ; preds = %45
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = call i32 @radeon_asic_reset(%struct.radeon_device* %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %83
  %89 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, ...) @dev_info(i32 %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %94 = call i32 @radeon_resume(%struct.radeon_device* %93)
  br label %95

95:                                               ; preds = %88, %83
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = call i32 @radeon_restore_bios_scratch_regs(%struct.radeon_device* %96)
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %138, %95
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %141

102:                                              ; preds = %98
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %128, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %19, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %128

111:                                              ; preds = %105
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 9
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %16, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %19, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @radeon_ring_restore(%struct.radeon_device* %112, i32* %118, i32 %122, i32* %126)
  br label %137

128:                                              ; preds = %105, %102
  %129 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @radeon_fence_driver_force_completion(%struct.radeon_device* %129, i32 %130)
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %19, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @kfree(i32* %135)
  br label %137

137:                                              ; preds = %128, %111
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %98

141:                                              ; preds = %98
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @PM_METHOD_DPM, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %165

148:                                              ; preds = %141
  %149 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %150 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %148
  %155 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %156 = call i32 @radeon_pm_late_init(%struct.radeon_device* %155)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %161 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  store i32 0, i32* %162, align 8
  %163 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %164

164:                                              ; preds = %159, %154
  br label %168

165:                                              ; preds = %148, %141
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = call i32 @radeon_pm_resume(%struct.radeon_device* %166)
  br label %168

168:                                              ; preds = %165, %164
  %169 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %170 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %169, i32 0, i32 8
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %198

173:                                              ; preds = %168
  %174 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %175 = call i32 @radeon_atom_encoder_init(%struct.radeon_device* %174)
  %176 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %177 = call i32 @radeon_atom_disp_eng_pll_init(%struct.radeon_device* %176)
  %178 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %179 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %178, i32 0, i32 7
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %197

183:                                              ; preds = %173
  %184 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %185 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %186 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %185, i32 0, i32 7
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @radeon_get_backlight_level(%struct.radeon_device* %184, i64 %188)
  store i32 %189, i32* %12, align 4
  %190 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %191 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %192 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %191, i32 0, i32 7
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* %12, align 4
  %196 = call i32 @radeon_set_backlight_level(%struct.radeon_device* %190, i64 %194, i32 %195)
  br label %197

197:                                              ; preds = %183, %173
  br label %198

198:                                              ; preds = %197, %168
  %199 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %200 = call i32 @radeon_hpd_init(%struct.radeon_device* %199)
  %201 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %202 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %201, i32 0, i32 6
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @ttm_bo_unlock_delayed_workqueue(i32* %203, i32 %204)
  %206 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %207 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %206, i32 0, i32 1
  store i32 1, i32* %207, align 4
  %208 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %209 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %208, i32 0, i32 0
  store i32 0, i32* %209, align 8
  %210 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %211 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %210, i32 0, i32 2
  %212 = call i32 @downgrade_write(i32* %211)
  %213 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %214 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @drm_helper_resume_force_mode(i32 %215)
  %217 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %218 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @PM_METHOD_DPM, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %232

223:                                              ; preds = %198
  %224 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %225 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %223
  %230 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %231 = call i32 @radeon_pm_compute_clocks(%struct.radeon_device* %230)
  br label %232

232:                                              ; preds = %229, %223, %198
  %233 = load i32, i32* %9, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %247, label %235

235:                                              ; preds = %232
  %236 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %237 = call i32 @radeon_ib_ring_tests(%struct.radeon_device* %236)
  store i32 %237, i32* %9, align 4
  %238 = load i32, i32* %9, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %235
  %241 = load i32, i32* %7, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i32, i32* @EAGAIN, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %9, align 4
  br label %246

246:                                              ; preds = %243, %240, %235
  br label %252

247:                                              ; preds = %232
  %248 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %249 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = call i32 (i32, i8*, ...) @dev_info(i32 %250, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %252

252:                                              ; preds = %247, %246
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* @EAGAIN, align 4
  %255 = sub nsw i32 0, %254
  %256 = icmp eq i32 %253, %255
  %257 = zext i1 %256 to i32
  %258 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %259 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %258, i32 0, i32 0
  store i32 %257, i32* %259, align 8
  %260 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %261 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %260, i32 0, i32 1
  store i32 0, i32* %261, align 4
  %262 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %263 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %262, i32 0, i32 2
  %264 = call i32 @up_read(i32* %263)
  %265 = load i32, i32* %9, align 4
  store i32 %265, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %266

266:                                              ; preds = %252, %27
  %267 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %267)
  %268 = load i32, i32* %2, align 4
  ret i32 %268
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @down_write(i32*) #2

declare dso_local i32 @up_write(i32*) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @radeon_save_bios_scratch_regs(%struct.radeon_device*) #2

declare dso_local i32 @ttm_bo_lock_delayed_workqueue(i32*) #2

declare dso_local i32 @radeon_suspend(%struct.radeon_device*) #2

declare dso_local i32 @radeon_hpd_fini(%struct.radeon_device*) #2

declare dso_local i32 @radeon_ring_backup(%struct.radeon_device*, i32*, i32**) #2

declare dso_local i32 @dev_info(i32, i8*, ...) #2

declare dso_local i32 @radeon_asic_reset(%struct.radeon_device*) #2

declare dso_local i32 @radeon_resume(%struct.radeon_device*) #2

declare dso_local i32 @radeon_restore_bios_scratch_regs(%struct.radeon_device*) #2

declare dso_local i32 @radeon_ring_restore(%struct.radeon_device*, i32*, i32, i32*) #2

declare dso_local i32 @radeon_fence_driver_force_completion(%struct.radeon_device*, i32) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @radeon_pm_late_init(%struct.radeon_device*) #2

declare dso_local i32 @DRM_ERROR(i8*) #2

declare dso_local i32 @radeon_pm_resume(%struct.radeon_device*) #2

declare dso_local i32 @radeon_atom_encoder_init(%struct.radeon_device*) #2

declare dso_local i32 @radeon_atom_disp_eng_pll_init(%struct.radeon_device*) #2

declare dso_local i32 @radeon_get_backlight_level(%struct.radeon_device*, i64) #2

declare dso_local i32 @radeon_set_backlight_level(%struct.radeon_device*, i64, i32) #2

declare dso_local i32 @radeon_hpd_init(%struct.radeon_device*) #2

declare dso_local i32 @ttm_bo_unlock_delayed_workqueue(i32*, i32) #2

declare dso_local i32 @downgrade_write(i32*) #2

declare dso_local i32 @drm_helper_resume_force_mode(i32) #2

declare dso_local i32 @radeon_pm_compute_clocks(%struct.radeon_device*) #2

declare dso_local i32 @radeon_ib_ring_tests(%struct.radeon_device*) #2

declare dso_local i32 @up_read(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
