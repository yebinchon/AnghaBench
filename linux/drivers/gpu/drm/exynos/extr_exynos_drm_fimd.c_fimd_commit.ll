; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.TYPE_4__, %struct.fimd_context* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.fimd_context = type { i32, i32, i32, i32, i32, i32, %struct.fimd_driver_data*, i32, i64, i64, i64 }
%struct.fimd_driver_data = type { i32, i32, i32, i32, i64, i32, i64, i64, i64 }

@I80IFEN_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to update sysreg for I80 i/f.\0A\00", align 1
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@VIDCON1_INV_VSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@VIDCON1_INV_HSYNC = common dso_local global i32 0, align 4
@VIDCON1 = common dso_local global i8* null, align 8
@VIDTCON0 = common dso_local global i8* null, align 8
@VIDTCON1 = common dso_local global i8* null, align 8
@VIDOUT_CON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to update sysreg for bypass setting.\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to update sysreg for bypass mic.\0A\00", align 1
@VIDTCON2 = common dso_local global i8* null, align 8
@VIDCON0_ENVID = common dso_local global i32 0, align 4
@VIDCON0_ENVID_F = common dso_local global i32 0, align 4
@VIDCON0_CLKSEL_LCD = common dso_local global i32 0, align 4
@VIDCON0_CLKDIR = common dso_local global i32 0, align 4
@VIDCON0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*)* @fimd_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimd_commit(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca %struct.exynos_drm_crtc*, align 8
  %3 = alloca %struct.fimd_context*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.fimd_driver_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %15 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %16 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %15, i32 0, i32 1
  %17 = load %struct.fimd_context*, %struct.fimd_context** %16, align 8
  store %struct.fimd_context* %17, %struct.fimd_context** %3, align 8
  %18 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %19 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.drm_display_mode* %22, %struct.drm_display_mode** %4, align 8
  %23 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %24 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %23, i32 0, i32 6
  %25 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %24, align 8
  store %struct.fimd_driver_data* %25, %struct.fimd_driver_data** %5, align 8
  %26 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %27 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %5, align 8
  %30 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %28, %31
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %6, align 8
  %35 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %36 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %35, i32 0, i32 10
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  br label %385

40:                                               ; preds = %1
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %40
  br label %385

51:                                               ; preds = %45
  %52 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %53 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %52, i32 0, i32 9
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %105

56:                                               ; preds = %51
  %57 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %58 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @I80IFEN_ENABLE, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @I80IFCONFAx(i32 0)
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %63, i64 %65
  %67 = call i32 @writel(i32 %62, i8* %66)
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @I80IFCONFBx(i32 0)
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %68, i64 %70
  %72 = call i32 @writel(i32 0, i8* %71)
  %73 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %5, align 8
  %74 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %56
  %78 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %79 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %78, i32 0, i32 8
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %77
  %83 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %84 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %5, align 8
  %87 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %5, align 8
  %90 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 3, %91
  %93 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %5, align 8
  %94 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 1, %95
  %97 = call i64 @regmap_update_bits(i64 %85, i32 %88, i32 %92, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %82
  %100 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %101 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @DRM_DEV_ERROR(i32 %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %385

104:                                              ; preds = %82, %77, %56
  br label %231

105:                                              ; preds = %51
  %106 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %107 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %14, align 4
  %109 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %110 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %105
  %116 = load i32, i32* @VIDCON1_INV_VSYNC, align 4
  %117 = load i32, i32* %14, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %115, %105
  %120 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %121 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i32, i32* @VIDCON1_INV_HSYNC, align 4
  %128 = load i32, i32* %14, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %126, %119
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %133 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %5, align 8
  %136 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %134, %137
  %139 = load i8*, i8** @VIDCON1, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr i8, i8* %139, i64 %140
  %142 = call i32 @writel(i32 %131, i8* %141)
  %143 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %144 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %147 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 %145, %148
  store i32 %149, i32* %8, align 4
  %150 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %151 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %154 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %152, %155
  store i32 %156, i32* %9, align 4
  %157 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %158 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %161 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %159, %162
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %9, align 4
  %165 = sub nsw i32 %164, 1
  %166 = call i32 @VIDTCON0_VBPD(i32 %165)
  %167 = load i32, i32* %10, align 4
  %168 = sub nsw i32 %167, 1
  %169 = call i32 @VIDTCON0_VFPD(i32 %168)
  %170 = or i32 %166, %169
  %171 = load i32, i32* %8, align 4
  %172 = sub nsw i32 %171, 1
  %173 = call i32 @VIDTCON0_VSPW(i32 %172)
  %174 = or i32 %170, %173
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %177 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %5, align 8
  %180 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %178, %181
  %183 = load i8*, i8** @VIDTCON0, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr i8, i8* %183, i64 %184
  %186 = call i32 @writel(i32 %175, i8* %185)
  %187 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %188 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %191 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 8
  %193 = sub nsw i32 %189, %192
  store i32 %193, i32* %11, align 4
  %194 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %195 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %194, i32 0, i32 9
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %198 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %196, %199
  store i32 %200, i32* %12, align 4
  %201 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %202 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %201, i32 0, i32 8
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %205 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %204, i32 0, i32 10
  %206 = load i32, i32* %205, align 8
  %207 = sub nsw i32 %203, %206
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %12, align 4
  %209 = sub nsw i32 %208, 1
  %210 = call i32 @VIDTCON1_HBPD(i32 %209)
  %211 = load i32, i32* %13, align 4
  %212 = sub nsw i32 %211, 1
  %213 = call i32 @VIDTCON1_HFPD(i32 %212)
  %214 = or i32 %210, %213
  %215 = load i32, i32* %11, align 4
  %216 = sub nsw i32 %215, 1
  %217 = call i32 @VIDTCON1_HSPW(i32 %216)
  %218 = or i32 %214, %217
  store i32 %218, i32* %7, align 4
  %219 = load i32, i32* %7, align 4
  %220 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %221 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %5, align 8
  %224 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %222, %225
  %227 = load i8*, i8** @VIDTCON1, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr i8, i8* %227, i64 %228
  %230 = call i32 @writel(i32 %219, i8* %229)
  br label %231

231:                                              ; preds = %130, %104
  %232 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %5, align 8
  %233 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %232, i32 0, i32 7
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %231
  %237 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %238 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load i8*, i8** %6, align 8
  %241 = load i32, i32* @VIDOUT_CON, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr i8, i8* %240, i64 %242
  %244 = call i32 @writel(i32 %239, i8* %243)
  br label %245

245:                                              ; preds = %236, %231
  %246 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %247 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %246, i32 0, i32 8
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %272

250:                                              ; preds = %245
  %251 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %252 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %251, i32 0, i32 8
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %5, align 8
  %255 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %5, align 8
  %258 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = shl i32 1, %259
  %261 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %5, align 8
  %262 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = shl i32 1, %263
  %265 = call i64 @regmap_update_bits(i64 %253, i32 %256, i32 %260, i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %250
  %268 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %269 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %268, i32 0, i32 7
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @DRM_DEV_ERROR(i32 %270, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %385

272:                                              ; preds = %250, %245
  %273 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %5, align 8
  %274 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %273, i32 0, i32 6
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %304

277:                                              ; preds = %272
  %278 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %279 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %278, i32 0, i32 8
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %304

282:                                              ; preds = %277
  %283 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %284 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %283, i32 0, i32 8
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %5, align 8
  %287 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %5, align 8
  %290 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = shl i32 1, %291
  %293 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %5, align 8
  %294 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = shl i32 1, %295
  %297 = call i64 @regmap_update_bits(i64 %285, i32 %288, i32 %292, i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %282
  %300 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %301 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @DRM_DEV_ERROR(i32 %302, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %385

304:                                              ; preds = %282, %277, %272
  %305 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %306 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %305, i32 0, i32 12
  %307 = load i64, i64* %306, align 8
  %308 = sub nsw i64 %307, 1
  %309 = call i32 @VIDTCON2_LINEVAL(i64 %308)
  %310 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %311 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %310, i32 0, i32 11
  %312 = load i64, i64* %311, align 8
  %313 = sub nsw i64 %312, 1
  %314 = call i32 @VIDTCON2_HOZVAL(i64 %313)
  %315 = or i32 %309, %314
  %316 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %317 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %316, i32 0, i32 12
  %318 = load i64, i64* %317, align 8
  %319 = sub nsw i64 %318, 1
  %320 = call i32 @VIDTCON2_LINEVAL_E(i64 %319)
  %321 = or i32 %315, %320
  %322 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %323 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %322, i32 0, i32 11
  %324 = load i64, i64* %323, align 8
  %325 = sub nsw i64 %324, 1
  %326 = call i32 @VIDTCON2_HOZVAL_E(i64 %325)
  %327 = or i32 %321, %326
  store i32 %327, i32* %7, align 4
  %328 = load i32, i32* %7, align 4
  %329 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %330 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %5, align 8
  %333 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = add nsw i32 %331, %334
  %336 = load i8*, i8** @VIDTCON2, align 8
  %337 = sext i32 %335 to i64
  %338 = getelementptr i8, i8* %336, i64 %337
  %339 = call i32 @writel(i32 %328, i8* %338)
  %340 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %341 = call i32 @fimd_setup_trigger(%struct.fimd_context* %340)
  %342 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %343 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 8
  store i32 %344, i32* %7, align 4
  %345 = load i32, i32* @VIDCON0_ENVID, align 4
  %346 = load i32, i32* @VIDCON0_ENVID_F, align 4
  %347 = or i32 %345, %346
  %348 = load i32, i32* %7, align 4
  %349 = or i32 %348, %347
  store i32 %349, i32* %7, align 4
  %350 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %351 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %350, i32 0, i32 6
  %352 = load %struct.fimd_driver_data*, %struct.fimd_driver_data** %351, align 8
  %353 = getelementptr inbounds %struct.fimd_driver_data, %struct.fimd_driver_data* %352, i32 0, i32 4
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %304
  %357 = load i32, i32* @VIDCON0_CLKSEL_LCD, align 4
  %358 = load i32, i32* %7, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %7, align 4
  br label %360

360:                                              ; preds = %356, %304
  %361 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %362 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %361, i32 0, i32 5
  %363 = load i32, i32* %362, align 4
  %364 = icmp sgt i32 %363, 1
  br i1 %364, label %365, label %375

365:                                              ; preds = %360
  %366 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %367 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %366, i32 0, i32 5
  %368 = load i32, i32* %367, align 4
  %369 = sub nsw i32 %368, 1
  %370 = call i32 @VIDCON0_CLKVAL_F(i32 %369)
  %371 = load i32, i32* @VIDCON0_CLKDIR, align 4
  %372 = or i32 %370, %371
  %373 = load i32, i32* %7, align 4
  %374 = or i32 %373, %372
  store i32 %374, i32* %7, align 4
  br label %375

375:                                              ; preds = %365, %360
  %376 = load i32, i32* %7, align 4
  %377 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %378 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* @VIDCON0, align 4
  %381 = add nsw i32 %379, %380
  %382 = sext i32 %381 to i64
  %383 = inttoptr i64 %382 to i8*
  %384 = call i32 @writel(i32 %376, i8* %383)
  br label %385

385:                                              ; preds = %375, %299, %267, %99, %50, %39
  ret void
}

declare dso_local i32 @writel(i32, i8*) #1

declare dso_local i32 @I80IFCONFAx(i32) #1

declare dso_local i32 @I80IFCONFBx(i32) #1

declare dso_local i64 @regmap_update_bits(i64, i32, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @VIDTCON0_VBPD(i32) #1

declare dso_local i32 @VIDTCON0_VFPD(i32) #1

declare dso_local i32 @VIDTCON0_VSPW(i32) #1

declare dso_local i32 @VIDTCON1_HBPD(i32) #1

declare dso_local i32 @VIDTCON1_HFPD(i32) #1

declare dso_local i32 @VIDTCON1_HSPW(i32) #1

declare dso_local i32 @VIDTCON2_LINEVAL(i64) #1

declare dso_local i32 @VIDTCON2_HOZVAL(i64) #1

declare dso_local i32 @VIDTCON2_LINEVAL_E(i64) #1

declare dso_local i32 @VIDTCON2_HOZVAL_E(i64) #1

declare dso_local i32 @fimd_setup_trigger(%struct.fimd_context*) #1

declare dso_local i32 @VIDCON0_CLKVAL_F(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
