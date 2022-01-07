; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_initial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop = type { i32, i32, i32, %struct.reset_control*, %struct.reset_control*, %struct.reset_control*, %struct.reset_control*, %struct.vop_win*, %struct.TYPE_2__*, i64, i32* }
%struct.reset_control = type { i32 }
%struct.vop_win = type { %struct.vop_win_data* }
%struct.vop_win_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"hclk_vop\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to get hclk source\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"aclk_vop\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to get aclk source\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"dclk_vop\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to get dclk source\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to get pm runtime: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"failed to prepare dclk\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to prepare/enable hclk\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"failed to prepare/enable aclk\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"failed to get ahb reset\0A\00", align 1
@clear = common dso_local global i32 0, align 4
@INTR_MASK = common dso_local global i32 0, align 4
@enable = common dso_local global i32 0, align 4
@misc = common dso_local global i32 0, align 4
@global_regdone_en = common dso_local global i32 0, align 4
@common = common dso_local global i32 0, align 4
@dsp_blank = common dso_local global i32 0, align 4
@gate = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"dclk\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"failed to get dclk reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop*)* @vop_initial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vop_initial(%struct.vop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop*, align 8
  %4 = alloca %struct.reset_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vop_win*, align 8
  %8 = alloca %struct.vop_win_data*, align 8
  %9 = alloca i32, align 4
  store %struct.vop* %0, %struct.vop** %3, align 8
  %10 = load %struct.vop*, %struct.vop** %3, align 8
  %11 = getelementptr inbounds %struct.vop, %struct.vop* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @devm_clk_get(i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = bitcast i8* %13 to %struct.reset_control*
  %15 = load %struct.vop*, %struct.vop** %3, align 8
  %16 = getelementptr inbounds %struct.vop, %struct.vop* %15, i32 0, i32 4
  store %struct.reset_control* %14, %struct.reset_control** %16, align 8
  %17 = load %struct.vop*, %struct.vop** %3, align 8
  %18 = getelementptr inbounds %struct.vop, %struct.vop* %17, i32 0, i32 4
  %19 = load %struct.reset_control*, %struct.reset_control** %18, align 8
  %20 = call i64 @IS_ERR(%struct.reset_control* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.vop*, %struct.vop** %3, align 8
  %24 = getelementptr inbounds %struct.vop, %struct.vop* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.vop*, %struct.vop** %3, align 8
  %28 = getelementptr inbounds %struct.vop, %struct.vop* %27, i32 0, i32 4
  %29 = load %struct.reset_control*, %struct.reset_control** %28, align 8
  %30 = call i32 @PTR_ERR(%struct.reset_control* %29)
  store i32 %30, i32* %2, align 4
  br label %299

31:                                               ; preds = %1
  %32 = load %struct.vop*, %struct.vop** %3, align 8
  %33 = getelementptr inbounds %struct.vop, %struct.vop* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @devm_clk_get(i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %36 = bitcast i8* %35 to %struct.reset_control*
  %37 = load %struct.vop*, %struct.vop** %3, align 8
  %38 = getelementptr inbounds %struct.vop, %struct.vop* %37, i32 0, i32 5
  store %struct.reset_control* %36, %struct.reset_control** %38, align 8
  %39 = load %struct.vop*, %struct.vop** %3, align 8
  %40 = getelementptr inbounds %struct.vop, %struct.vop* %39, i32 0, i32 5
  %41 = load %struct.reset_control*, %struct.reset_control** %40, align 8
  %42 = call i64 @IS_ERR(%struct.reset_control* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %31
  %45 = load %struct.vop*, %struct.vop** %3, align 8
  %46 = getelementptr inbounds %struct.vop, %struct.vop* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.vop*, %struct.vop** %3, align 8
  %50 = getelementptr inbounds %struct.vop, %struct.vop* %49, i32 0, i32 5
  %51 = load %struct.reset_control*, %struct.reset_control** %50, align 8
  %52 = call i32 @PTR_ERR(%struct.reset_control* %51)
  store i32 %52, i32* %2, align 4
  br label %299

53:                                               ; preds = %31
  %54 = load %struct.vop*, %struct.vop** %3, align 8
  %55 = getelementptr inbounds %struct.vop, %struct.vop* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @devm_clk_get(i32 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %58 = bitcast i8* %57 to %struct.reset_control*
  %59 = load %struct.vop*, %struct.vop** %3, align 8
  %60 = getelementptr inbounds %struct.vop, %struct.vop* %59, i32 0, i32 3
  store %struct.reset_control* %58, %struct.reset_control** %60, align 8
  %61 = load %struct.vop*, %struct.vop** %3, align 8
  %62 = getelementptr inbounds %struct.vop, %struct.vop* %61, i32 0, i32 3
  %63 = load %struct.reset_control*, %struct.reset_control** %62, align 8
  %64 = call i64 @IS_ERR(%struct.reset_control* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %53
  %67 = load %struct.vop*, %struct.vop** %3, align 8
  %68 = getelementptr inbounds %struct.vop, %struct.vop* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %71 = load %struct.vop*, %struct.vop** %3, align 8
  %72 = getelementptr inbounds %struct.vop, %struct.vop* %71, i32 0, i32 3
  %73 = load %struct.reset_control*, %struct.reset_control** %72, align 8
  %74 = call i32 @PTR_ERR(%struct.reset_control* %73)
  store i32 %74, i32* %2, align 4
  br label %299

75:                                               ; preds = %53
  %76 = load %struct.vop*, %struct.vop** %3, align 8
  %77 = getelementptr inbounds %struct.vop, %struct.vop* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @pm_runtime_get_sync(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load %struct.vop*, %struct.vop** %3, align 8
  %84 = getelementptr inbounds %struct.vop, %struct.vop* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %299

89:                                               ; preds = %75
  %90 = load %struct.vop*, %struct.vop** %3, align 8
  %91 = getelementptr inbounds %struct.vop, %struct.vop* %90, i32 0, i32 3
  %92 = load %struct.reset_control*, %struct.reset_control** %91, align 8
  %93 = call i32 @clk_prepare(%struct.reset_control* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load %struct.vop*, %struct.vop** %3, align 8
  %98 = getelementptr inbounds %struct.vop, %struct.vop* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %293

101:                                              ; preds = %89
  %102 = load %struct.vop*, %struct.vop** %3, align 8
  %103 = getelementptr inbounds %struct.vop, %struct.vop* %102, i32 0, i32 4
  %104 = load %struct.reset_control*, %struct.reset_control** %103, align 8
  %105 = call i32 @clk_prepare_enable(%struct.reset_control* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.vop*, %struct.vop** %3, align 8
  %110 = getelementptr inbounds %struct.vop, %struct.vop* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %288

113:                                              ; preds = %101
  %114 = load %struct.vop*, %struct.vop** %3, align 8
  %115 = getelementptr inbounds %struct.vop, %struct.vop* %114, i32 0, i32 5
  %116 = load %struct.reset_control*, %struct.reset_control** %115, align 8
  %117 = call i32 @clk_prepare_enable(%struct.reset_control* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load %struct.vop*, %struct.vop** %3, align 8
  %122 = getelementptr inbounds %struct.vop, %struct.vop* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %123, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %283

125:                                              ; preds = %113
  %126 = load %struct.vop*, %struct.vop** %3, align 8
  %127 = getelementptr inbounds %struct.vop, %struct.vop* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i8* @devm_reset_control_get(i32 %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %130 = bitcast i8* %129 to %struct.reset_control*
  store %struct.reset_control* %130, %struct.reset_control** %4, align 8
  %131 = load %struct.reset_control*, %struct.reset_control** %4, align 8
  %132 = call i64 @IS_ERR(%struct.reset_control* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %125
  %135 = load %struct.vop*, %struct.vop** %3, align 8
  %136 = getelementptr inbounds %struct.vop, %struct.vop* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %139 = load %struct.reset_control*, %struct.reset_control** %4, align 8
  %140 = call i32 @PTR_ERR(%struct.reset_control* %139)
  store i32 %140, i32* %6, align 4
  br label %278

141:                                              ; preds = %125
  %142 = load %struct.reset_control*, %struct.reset_control** %4, align 8
  %143 = call i32 @reset_control_assert(%struct.reset_control* %142)
  %144 = call i32 @usleep_range(i32 10, i32 20)
  %145 = load %struct.reset_control*, %struct.reset_control** %4, align 8
  %146 = call i32 @reset_control_deassert(%struct.reset_control* %145)
  %147 = load %struct.vop*, %struct.vop** %3, align 8
  %148 = load i32, i32* @clear, align 4
  %149 = load i32, i32* @INTR_MASK, align 4
  %150 = call i32 @VOP_INTR_SET_TYPE(%struct.vop* %147, i32 %148, i32 %149, i32 1)
  %151 = load %struct.vop*, %struct.vop** %3, align 8
  %152 = load i32, i32* @enable, align 4
  %153 = load i32, i32* @INTR_MASK, align 4
  %154 = call i32 @VOP_INTR_SET_TYPE(%struct.vop* %151, i32 %152, i32 %153, i32 0)
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %176, %141
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.vop*, %struct.vop** %3, align 8
  %158 = getelementptr inbounds %struct.vop, %struct.vop* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %181

161:                                              ; preds = %155
  %162 = load %struct.vop*, %struct.vop** %3, align 8
  %163 = getelementptr inbounds %struct.vop, %struct.vop* %162, i32 0, i32 9
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %164, %166
  %168 = call i32 @readl_relaxed(i64 %167)
  %169 = load %struct.vop*, %struct.vop** %3, align 8
  %170 = getelementptr inbounds %struct.vop, %struct.vop* %169, i32 0, i32 10
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sdiv i32 %172, 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  store i32 %168, i32* %175, align 4
  br label %176

176:                                              ; preds = %161
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = add i64 %178, 4
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %5, align 4
  br label %155

181:                                              ; preds = %155
  %182 = load %struct.vop*, %struct.vop** %3, align 8
  %183 = load i32, i32* @misc, align 4
  %184 = load i32, i32* @global_regdone_en, align 4
  %185 = call i32 @VOP_REG_SET(%struct.vop* %182, i32 %183, i32 %184, i32 1)
  %186 = load %struct.vop*, %struct.vop** %3, align 8
  %187 = load i32, i32* @common, align 4
  %188 = load i32, i32* @dsp_blank, align 4
  %189 = call i32 @VOP_REG_SET(%struct.vop* %186, i32 %187, i32 %188, i32 0)
  store i32 0, i32* %5, align 4
  br label %190

190:                                              ; preds = %227, %181
  %191 = load i32, i32* %5, align 4
  %192 = load %struct.vop*, %struct.vop** %3, align 8
  %193 = getelementptr inbounds %struct.vop, %struct.vop* %192, i32 0, i32 8
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %191, %196
  br i1 %197, label %198, label %230

198:                                              ; preds = %190
  %199 = load %struct.vop*, %struct.vop** %3, align 8
  %200 = getelementptr inbounds %struct.vop, %struct.vop* %199, i32 0, i32 7
  %201 = load %struct.vop_win*, %struct.vop_win** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.vop_win, %struct.vop_win* %201, i64 %203
  store %struct.vop_win* %204, %struct.vop_win** %7, align 8
  %205 = load %struct.vop_win*, %struct.vop_win** %7, align 8
  %206 = getelementptr inbounds %struct.vop_win, %struct.vop_win* %205, i32 0, i32 0
  %207 = load %struct.vop_win_data*, %struct.vop_win_data** %206, align 8
  store %struct.vop_win_data* %207, %struct.vop_win_data** %8, align 8
  %208 = load i32, i32* %5, align 4
  %209 = mul nsw i32 %208, 2
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  %211 = load %struct.vop*, %struct.vop** %3, align 8
  %212 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  %216 = shl i32 %215, 4
  %217 = load i32, i32* %9, align 4
  %218 = or i32 %216, %217
  %219 = call i32 @VOP_WIN_SET(%struct.vop* %211, %struct.vop_win_data* %212, i32 %213, i32 %218)
  %220 = load %struct.vop*, %struct.vop** %3, align 8
  %221 = load %struct.vop_win*, %struct.vop_win** %7, align 8
  %222 = call i32 @vop_win_disable(%struct.vop* %220, %struct.vop_win* %221)
  %223 = load %struct.vop*, %struct.vop** %3, align 8
  %224 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %225 = load i32, i32* @gate, align 4
  %226 = call i32 @VOP_WIN_SET(%struct.vop* %223, %struct.vop_win_data* %224, i32 %225, i32 1)
  br label %227

227:                                              ; preds = %198
  %228 = load i32, i32* %5, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %5, align 4
  br label %190

230:                                              ; preds = %190
  %231 = load %struct.vop*, %struct.vop** %3, align 8
  %232 = call i32 @vop_cfg_done(%struct.vop* %231)
  %233 = load %struct.vop*, %struct.vop** %3, align 8
  %234 = getelementptr inbounds %struct.vop, %struct.vop* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = call i8* @devm_reset_control_get(i32 %235, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %237 = bitcast i8* %236 to %struct.reset_control*
  %238 = load %struct.vop*, %struct.vop** %3, align 8
  %239 = getelementptr inbounds %struct.vop, %struct.vop* %238, i32 0, i32 6
  store %struct.reset_control* %237, %struct.reset_control** %239, align 8
  %240 = load %struct.vop*, %struct.vop** %3, align 8
  %241 = getelementptr inbounds %struct.vop, %struct.vop* %240, i32 0, i32 6
  %242 = load %struct.reset_control*, %struct.reset_control** %241, align 8
  %243 = call i64 @IS_ERR(%struct.reset_control* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %230
  %246 = load %struct.vop*, %struct.vop** %3, align 8
  %247 = getelementptr inbounds %struct.vop, %struct.vop* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %248, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %250 = load %struct.vop*, %struct.vop** %3, align 8
  %251 = getelementptr inbounds %struct.vop, %struct.vop* %250, i32 0, i32 6
  %252 = load %struct.reset_control*, %struct.reset_control** %251, align 8
  %253 = call i32 @PTR_ERR(%struct.reset_control* %252)
  store i32 %253, i32* %6, align 4
  br label %278

254:                                              ; preds = %230
  %255 = load %struct.vop*, %struct.vop** %3, align 8
  %256 = getelementptr inbounds %struct.vop, %struct.vop* %255, i32 0, i32 6
  %257 = load %struct.reset_control*, %struct.reset_control** %256, align 8
  %258 = call i32 @reset_control_assert(%struct.reset_control* %257)
  %259 = call i32 @usleep_range(i32 10, i32 20)
  %260 = load %struct.vop*, %struct.vop** %3, align 8
  %261 = getelementptr inbounds %struct.vop, %struct.vop* %260, i32 0, i32 6
  %262 = load %struct.reset_control*, %struct.reset_control** %261, align 8
  %263 = call i32 @reset_control_deassert(%struct.reset_control* %262)
  %264 = load %struct.vop*, %struct.vop** %3, align 8
  %265 = getelementptr inbounds %struct.vop, %struct.vop* %264, i32 0, i32 4
  %266 = load %struct.reset_control*, %struct.reset_control** %265, align 8
  %267 = call i32 @clk_disable(%struct.reset_control* %266)
  %268 = load %struct.vop*, %struct.vop** %3, align 8
  %269 = getelementptr inbounds %struct.vop, %struct.vop* %268, i32 0, i32 5
  %270 = load %struct.reset_control*, %struct.reset_control** %269, align 8
  %271 = call i32 @clk_disable(%struct.reset_control* %270)
  %272 = load %struct.vop*, %struct.vop** %3, align 8
  %273 = getelementptr inbounds %struct.vop, %struct.vop* %272, i32 0, i32 1
  store i32 0, i32* %273, align 4
  %274 = load %struct.vop*, %struct.vop** %3, align 8
  %275 = getelementptr inbounds %struct.vop, %struct.vop* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @pm_runtime_put_sync(i32 %276)
  store i32 0, i32* %2, align 4
  br label %299

278:                                              ; preds = %245, %134
  %279 = load %struct.vop*, %struct.vop** %3, align 8
  %280 = getelementptr inbounds %struct.vop, %struct.vop* %279, i32 0, i32 5
  %281 = load %struct.reset_control*, %struct.reset_control** %280, align 8
  %282 = call i32 @clk_disable_unprepare(%struct.reset_control* %281)
  br label %283

283:                                              ; preds = %278, %120
  %284 = load %struct.vop*, %struct.vop** %3, align 8
  %285 = getelementptr inbounds %struct.vop, %struct.vop* %284, i32 0, i32 4
  %286 = load %struct.reset_control*, %struct.reset_control** %285, align 8
  %287 = call i32 @clk_disable_unprepare(%struct.reset_control* %286)
  br label %288

288:                                              ; preds = %283, %108
  %289 = load %struct.vop*, %struct.vop** %3, align 8
  %290 = getelementptr inbounds %struct.vop, %struct.vop* %289, i32 0, i32 3
  %291 = load %struct.reset_control*, %struct.reset_control** %290, align 8
  %292 = call i32 @clk_unprepare(%struct.reset_control* %291)
  br label %293

293:                                              ; preds = %288, %96
  %294 = load %struct.vop*, %struct.vop** %3, align 8
  %295 = getelementptr inbounds %struct.vop, %struct.vop* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @pm_runtime_put_sync(i32 %296)
  %298 = load i32, i32* %6, align 4
  store i32 %298, i32* %2, align 4
  br label %299

299:                                              ; preds = %293, %254, %82, %66, %44, %22
  %300 = load i32, i32* %2, align 4
  ret i32 %300
}

declare dso_local i8* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @clk_prepare(%struct.reset_control*) #1

declare dso_local i32 @clk_prepare_enable(%struct.reset_control*) #1

declare dso_local i8* @devm_reset_control_get(i32, i8*) #1

declare dso_local i32 @reset_control_assert(%struct.reset_control*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @reset_control_deassert(%struct.reset_control*) #1

declare dso_local i32 @VOP_INTR_SET_TYPE(%struct.vop*, i32, i32, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @VOP_REG_SET(%struct.vop*, i32, i32, i32) #1

declare dso_local i32 @VOP_WIN_SET(%struct.vop*, %struct.vop_win_data*, i32, i32) #1

declare dso_local i32 @vop_win_disable(%struct.vop*, %struct.vop_win*) #1

declare dso_local i32 @vop_cfg_done(%struct.vop*) #1

declare dso_local i32 @clk_disable(%struct.reset_control*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @clk_disable_unprepare(%struct.reset_control*) #1

declare dso_local i32 @clk_unprepare(%struct.reset_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
