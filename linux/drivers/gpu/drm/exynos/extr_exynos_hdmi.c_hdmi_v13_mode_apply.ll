; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_v13_mode_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_v13_mode_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@HDMI_H_BLANK_0 = common dso_local global i32 0, align 4
@HDMI_V13_H_V_LINE_0 = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@HDMI_VSYNC_POL = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@HDMI_INT_PRO_MODE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@HDMI_V13_H_SYNC_GEN_0 = common dso_local global i32 0, align 4
@HDMI_V13_V_SYNC_GEN_1_0 = common dso_local global i32 0, align 4
@HDMI_V13_V_BLANK_0 = common dso_local global i32 0, align 4
@HDMI_V13_V_BLANK_F_0 = common dso_local global i32 0, align 4
@HDMI_V13_V_SYNC_GEN_2_0 = common dso_local global i32 0, align 4
@HDMI_V13_V_SYNC_GEN_3_0 = common dso_local global i32 0, align 4
@HDMI_TG_VACT_ST_L = common dso_local global i32 0, align 4
@HDMI_TG_VACT_SZ_L = common dso_local global i32 0, align 4
@HDMI_TG_VACT_ST2_L = common dso_local global i32 0, align 4
@HDMI_TG_H_FSZ_L = common dso_local global i32 0, align 4
@HDMI_TG_HACT_ST_L = common dso_local global i32 0, align 4
@HDMI_TG_HACT_SZ_L = common dso_local global i32 0, align 4
@HDMI_TG_V_FSZ_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_context*)* @hdmi_v13_mode_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_v13_mode_apply(%struct.hdmi_context* %0) #0 {
  %2 = alloca %struct.hdmi_context*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca i32, align 4
  store %struct.hdmi_context* %0, %struct.hdmi_context** %2, align 8
  %5 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %6 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.drm_display_mode* %11, %struct.drm_display_mode** %3, align 8
  %12 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %13 = load i32, i32* @HDMI_H_BLANK_0, align 4
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %15 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  %21 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %12, i32 %13, i32 2, i32 %20)
  %22 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %23 = load i32, i32* @HDMI_V13_H_V_LINE_0, align 4
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 12
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  %32 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %22, i32 %23, i32 3, i32 %31)
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  store i32 %40, i32* %4, align 4
  %41 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %42 = load i32, i32* @HDMI_VSYNC_POL, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %41, i32 %42, i32 1, i32 %43)
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  store i32 %52, i32* %4, align 4
  %53 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %54 = load i32, i32* @HDMI_INT_PRO_MODE, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %53, i32 %54, i32 1, i32 %55)
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  %64 = sub nsw i32 %63, 2
  store i32 %64, i32* %4, align 4
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %69 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  %72 = sub nsw i32 %71, 2
  %73 = shl i32 %72, 10
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %77 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 0
  %84 = shl i32 %83, 20
  %85 = load i32, i32* %4, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %4, align 4
  %87 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %88 = load i32, i32* @HDMI_V13_H_SYNC_GEN_0, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %87, i32 %88, i32 3, i32 %89)
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %92 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %233

97:                                               ; preds = %1
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %102 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %100, %103
  %105 = sdiv i32 %104, 2
  store i32 %105, i32* %4, align 4
  %106 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %107 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %110 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %108, %111
  %113 = sdiv i32 %112, 2
  %114 = shl i32 %113, 12
  %115 = load i32, i32* %4, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %4, align 4
  %117 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %118 = load i32, i32* @HDMI_V13_V_SYNC_GEN_1_0, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %117, i32 %118, i32 3, i32 %119)
  %121 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %122 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = sdiv i32 %123, 2
  store i32 %124, i32* %4, align 4
  %125 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %126 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %129 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %127, %130
  %132 = sdiv i32 %131, 2
  %133 = shl i32 %132, 11
  %134 = load i32, i32* %4, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %4, align 4
  %136 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %137 = load i32, i32* @HDMI_V13_V_BLANK_0, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %136, i32 %137, i32 3, i32 %138)
  %140 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %141 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %144 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %147 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %145, %148
  %150 = mul nsw i32 %149, 4
  %151 = add nsw i32 %142, %150
  %152 = add nsw i32 %151, 5
  %153 = sdiv i32 %152, 2
  store i32 %153, i32* %4, align 4
  %154 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %155 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 11
  %158 = load i32, i32* %4, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %4, align 4
  %160 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %161 = load i32, i32* @HDMI_V13_V_BLANK_F_0, align 4
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %160, i32 %161, i32 3, i32 %162)
  %164 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %165 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = sdiv i32 %166, 2
  %168 = add nsw i32 %167, 7
  store i32 %168, i32* %4, align 4
  %169 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %170 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = sdiv i32 %171, 2
  %173 = add nsw i32 %172, 2
  %174 = shl i32 %173, 12
  %175 = load i32, i32* %4, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %4, align 4
  %177 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %178 = load i32, i32* @HDMI_V13_V_SYNC_GEN_2_0, align 4
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %177, i32 %178, i32 3, i32 %179)
  %181 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %182 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = sdiv i32 %183, 2
  %185 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %186 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %189 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sub nsw i32 %187, %190
  %192 = add nsw i32 %184, %191
  store i32 %192, i32* %4, align 4
  %193 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %194 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = sdiv i32 %195, 2
  %197 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %198 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %201 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 %199, %202
  %204 = add nsw i32 %196, %203
  %205 = shl i32 %204, 12
  %206 = load i32, i32* %4, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %4, align 4
  %208 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %209 = load i32, i32* @HDMI_V13_V_SYNC_GEN_3_0, align 4
  %210 = load i32, i32* %4, align 4
  %211 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %208, i32 %209, i32 3, i32 %210)
  %212 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %213 = load i32, i32* @HDMI_TG_VACT_ST_L, align 4
  %214 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %215 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %218 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %217, i32 0, i32 7
  %219 = load i32, i32* %218, align 4
  %220 = sub nsw i32 %216, %219
  %221 = sdiv i32 %220, 2
  %222 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %212, i32 %213, i32 2, i32 %221)
  %223 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %224 = load i32, i32* @HDMI_TG_VACT_SZ_L, align 4
  %225 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %226 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %225, i32 0, i32 7
  %227 = load i32, i32* %226, align 4
  %228 = sdiv i32 %227, 2
  %229 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %223, i32 %224, i32 2, i32 %228)
  %230 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %231 = load i32, i32* @HDMI_TG_VACT_ST2_L, align 4
  %232 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %230, i32 %231, i32 2, i32 585)
  br label %297

233:                                              ; preds = %1
  %234 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %235 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %4, align 4
  %237 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %238 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %241 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 4
  %243 = sub nsw i32 %239, %242
  %244 = shl i32 %243, 11
  %245 = load i32, i32* %4, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %4, align 4
  %247 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %248 = load i32, i32* @HDMI_V13_V_BLANK_0, align 4
  %249 = load i32, i32* %4, align 4
  %250 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %247, i32 %248, i32 3, i32 %249)
  %251 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %252 = load i32, i32* @HDMI_V13_V_BLANK_F_0, align 4
  %253 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %251, i32 %252, i32 3, i32 0)
  %254 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %255 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %254, i32 0, i32 6
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %258 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 4
  %260 = sub nsw i32 %256, %259
  store i32 %260, i32* %4, align 4
  %261 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %262 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %265 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 4
  %267 = sub nsw i32 %263, %266
  %268 = shl i32 %267, 12
  %269 = load i32, i32* %4, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %4, align 4
  %271 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %272 = load i32, i32* @HDMI_V13_V_SYNC_GEN_1_0, align 4
  %273 = load i32, i32* %4, align 4
  %274 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %271, i32 %272, i32 3, i32 %273)
  %275 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %276 = load i32, i32* @HDMI_V13_V_SYNC_GEN_2_0, align 4
  %277 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %275, i32 %276, i32 3, i32 4097)
  %278 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %279 = load i32, i32* @HDMI_V13_V_SYNC_GEN_3_0, align 4
  %280 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %278, i32 %279, i32 3, i32 4097)
  %281 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %282 = load i32, i32* @HDMI_TG_VACT_ST_L, align 4
  %283 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %284 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %287 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %286, i32 0, i32 7
  %288 = load i32, i32* %287, align 4
  %289 = sub nsw i32 %285, %288
  %290 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %281, i32 %282, i32 2, i32 %289)
  %291 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %292 = load i32, i32* @HDMI_TG_VACT_SZ_L, align 4
  %293 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %294 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %293, i32 0, i32 7
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %291, i32 %292, i32 2, i32 %295)
  br label %297

297:                                              ; preds = %233, %97
  %298 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %299 = load i32, i32* @HDMI_TG_H_FSZ_L, align 4
  %300 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %301 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %298, i32 %299, i32 2, i32 %302)
  %304 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %305 = load i32, i32* @HDMI_TG_HACT_ST_L, align 4
  %306 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %307 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %310 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = sub nsw i32 %308, %311
  %313 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %304, i32 %305, i32 2, i32 %312)
  %314 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %315 = load i32, i32* @HDMI_TG_HACT_SZ_L, align 4
  %316 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %317 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %314, i32 %315, i32 2, i32 %318)
  %320 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %321 = load i32, i32* @HDMI_TG_V_FSZ_L, align 4
  %322 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %323 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %320, i32 %321, i32 2, i32 %324)
  ret void
}

declare dso_local i32 @hdmi_reg_writev(%struct.hdmi_context*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
