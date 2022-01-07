; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_dw_hdmi_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_dw_hdmi_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }
%struct.drm_display_mode = type { i32, i32 }
%struct.meson_dw_hdmi = type { %struct.TYPE_3__*, %struct.meson_drm* }
%struct.TYPE_3__ = type { i32 (%struct.meson_dw_hdmi*, i32, i32)* }
%struct.meson_drm = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@VPU_HDMI_SETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"\22%s\22 div%d\0A\00", align 1
@HHI_HDMI_CLK_CNTL = common dso_local global i32 0, align 4
@HHI_MEM_PD_REG0 = common dso_local global i32 0, align 4
@HDMITX_TOP_SW_RESET = common dso_local global i32 0, align 4
@HDMITX_TOP_CLK_CNTL = common dso_local global i32 0, align 4
@HDMITX_TOP_BIST_CNTL = common dso_local global i32 0, align 4
@HDMITX_TOP_TMDS_CLK_PTTN_01 = common dso_local global i32 0, align 4
@HDMITX_TOP_TMDS_CLK_PTTN_23 = common dso_local global i32 0, align 4
@HDMITX_TOP_TMDS_CLK_PTTN_CNTL = common dso_local global i32 0, align 4
@HHI_HDMI_PHY_CNTL1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"amlogic,meson-gxl-dw-hdmi\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"amlogic,meson-gxm-dw-hdmi\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"amlogic,meson-g12a-dw-hdmi\00", align 1
@ENCI_VIDEO_EN = common dso_local global i32 0, align 4
@ENCP_VIDEO_EN = common dso_local global i32 0, align 4
@MESON_VENC_SOURCE_ENCI = common dso_local global i32 0, align 4
@MESON_VENC_SOURCE_ENCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_hdmi*, i8*, %struct.drm_display_mode*)* @dw_hdmi_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_phy_init(%struct.dw_hdmi* %0, i8* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.dw_hdmi*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.meson_dw_hdmi*, align 8
  %8 = alloca %struct.meson_drm*, align 8
  %9 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.meson_dw_hdmi*
  store %struct.meson_dw_hdmi* %11, %struct.meson_dw_hdmi** %7, align 8
  %12 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %13 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %12, i32 0, i32 1
  %14 = load %struct.meson_drm*, %struct.meson_drm** %13, align 8
  store %struct.meson_drm* %14, %struct.meson_drm** %8, align 8
  %15 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %16 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @VPU_HDMI_SETTING, align 4
  %19 = call i64 @_REG(i32 %18)
  %20 = add nsw i64 %17, %19
  %21 = call i32 @readl_relaxed(i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 340000
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 40, i32 10
  %31 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %30)
  %32 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %33 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @HHI_HDMI_CLK_CNTL, align 4
  %36 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 65535, i32 256)
  %37 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %38 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @HHI_MEM_PD_REG0, align 4
  %41 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 65280, i32 0)
  %42 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %43 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (%struct.meson_dw_hdmi*, i32, i32)*, i32 (%struct.meson_dw_hdmi*, i32, i32)** %45, align 8
  %47 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %48 = load i32, i32* @HDMITX_TOP_SW_RESET, align 4
  %49 = call i32 %46(%struct.meson_dw_hdmi* %47, i32 %48, i32 0)
  %50 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %51 = load i32, i32* @HDMITX_TOP_CLK_CNTL, align 4
  %52 = call i32 @dw_hdmi_top_write_bits(%struct.meson_dw_hdmi* %50, i32 %51, i32 3, i32 3)
  %53 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %54 = load i32, i32* @HDMITX_TOP_CLK_CNTL, align 4
  %55 = call i32 @dw_hdmi_top_write_bits(%struct.meson_dw_hdmi* %53, i32 %54, i32 48, i32 48)
  %56 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %57 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (%struct.meson_dw_hdmi*, i32, i32)*, i32 (%struct.meson_dw_hdmi*, i32, i32)** %59, align 8
  %61 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %62 = load i32, i32* @HDMITX_TOP_BIST_CNTL, align 4
  %63 = call i32 @BIT(i32 12)
  %64 = call i32 %60(%struct.meson_dw_hdmi* %61, i32 %62, i32 %63)
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 340000
  br i1 %68, label %69, label %86

69:                                               ; preds = %3
  %70 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %71 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32 (%struct.meson_dw_hdmi*, i32, i32)*, i32 (%struct.meson_dw_hdmi*, i32, i32)** %73, align 8
  %75 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %76 = load i32, i32* @HDMITX_TOP_TMDS_CLK_PTTN_01, align 4
  %77 = call i32 %74(%struct.meson_dw_hdmi* %75, i32 %76, i32 0)
  %78 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %79 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32 (%struct.meson_dw_hdmi*, i32, i32)*, i32 (%struct.meson_dw_hdmi*, i32, i32)** %81, align 8
  %83 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %84 = load i32, i32* @HDMITX_TOP_TMDS_CLK_PTTN_23, align 4
  %85 = call i32 %82(%struct.meson_dw_hdmi* %83, i32 %84, i32 67044351)
  br label %103

86:                                               ; preds = %3
  %87 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %88 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32 (%struct.meson_dw_hdmi*, i32, i32)*, i32 (%struct.meson_dw_hdmi*, i32, i32)** %90, align 8
  %92 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %93 = load i32, i32* @HDMITX_TOP_TMDS_CLK_PTTN_01, align 4
  %94 = call i32 %91(%struct.meson_dw_hdmi* %92, i32 %93, i32 2031647)
  %95 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %96 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32 (%struct.meson_dw_hdmi*, i32, i32)*, i32 (%struct.meson_dw_hdmi*, i32, i32)** %98, align 8
  %100 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %101 = load i32, i32* @HDMITX_TOP_TMDS_CLK_PTTN_23, align 4
  %102 = call i32 %99(%struct.meson_dw_hdmi* %100, i32 %101, i32 2031647)
  br label %103

103:                                              ; preds = %86, %69
  %104 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %105 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32 (%struct.meson_dw_hdmi*, i32, i32)*, i32 (%struct.meson_dw_hdmi*, i32, i32)** %107, align 8
  %109 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %110 = load i32, i32* @HDMITX_TOP_TMDS_CLK_PTTN_CNTL, align 4
  %111 = call i32 %108(%struct.meson_dw_hdmi* %109, i32 %110, i32 1)
  %112 = call i32 @msleep(i32 20)
  %113 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %114 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32 (%struct.meson_dw_hdmi*, i32, i32)*, i32 (%struct.meson_dw_hdmi*, i32, i32)** %116, align 8
  %118 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %119 = load i32, i32* @HDMITX_TOP_TMDS_CLK_PTTN_CNTL, align 4
  %120 = call i32 %117(%struct.meson_dw_hdmi* %118, i32 %119, i32 2)
  %121 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %122 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %123 = call i32 @meson_hdmi_phy_setup_mode(%struct.meson_dw_hdmi* %121, %struct.drm_display_mode* %122)
  %124 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %125 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @HHI_HDMI_PHY_CNTL1, align 4
  %128 = call i32 @regmap_update_bits(i32 %126, i32 %127, i32 -65536, i32 59768832)
  %129 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %130 = call i64 @dw_hdmi_is_compatible(%struct.meson_dw_hdmi* %129, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %103
  %133 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %134 = call i64 @dw_hdmi_is_compatible(%struct.meson_dw_hdmi* %133, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %138 = call i64 @dw_hdmi_is_compatible(%struct.meson_dw_hdmi* %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %136, %132, %103
  %141 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %142 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @HHI_HDMI_PHY_CNTL1, align 4
  %145 = call i32 @BIT(i32 17)
  %146 = call i32 @regmap_update_bits(i32 %143, i32 %144, i32 %145, i32 0)
  br label %155

147:                                              ; preds = %136
  %148 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %149 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @HHI_HDMI_PHY_CNTL1, align 4
  %152 = call i32 @BIT(i32 17)
  %153 = call i32 @BIT(i32 17)
  %154 = call i32 @regmap_update_bits(i32 %150, i32 %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %147, %140
  %156 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %157 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @HHI_HDMI_PHY_CNTL1, align 4
  %160 = call i32 @regmap_update_bits(i32 %158, i32 %159, i32 15, i32 0)
  %161 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %162 = call i32 @dw_hdmi_set_high_tmds_clock_ratio(%struct.dw_hdmi* %161)
  %163 = call i32 @msleep(i32 100)
  %164 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %165 = call i32 @meson_dw_hdmi_phy_reset(%struct.meson_dw_hdmi* %164)
  %166 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %167 = call i32 @meson_dw_hdmi_phy_reset(%struct.meson_dw_hdmi* %166)
  %168 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %7, align 8
  %169 = call i32 @meson_dw_hdmi_phy_reset(%struct.meson_dw_hdmi* %168)
  %170 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %171 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %155
  %176 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %177 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* @ENCI_VIDEO_EN, align 4
  %180 = call i64 @_REG(i32 %179)
  %181 = add nsw i64 %178, %180
  %182 = call i32 @writel_relaxed(i32 0, i64 %181)
  br label %191

183:                                              ; preds = %155
  %184 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %185 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* @ENCP_VIDEO_EN, align 4
  %188 = call i64 @_REG(i32 %187)
  %189 = add nsw i64 %186, %188
  %190 = call i32 @writel_relaxed(i32 0, i64 %189)
  br label %191

191:                                              ; preds = %183, %175
  %192 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %193 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* @VPU_HDMI_SETTING, align 4
  %196 = call i64 @_REG(i32 %195)
  %197 = add nsw i64 %194, %196
  %198 = call i32 @writel_bits_relaxed(i32 3, i32 0, i64 %197)
  %199 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %200 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* @VPU_HDMI_SETTING, align 4
  %203 = call i64 @_REG(i32 %202)
  %204 = add nsw i64 %201, %203
  %205 = call i32 @writel_bits_relaxed(i32 3840, i32 0, i64 %204)
  %206 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %207 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %191
  %212 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %213 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* @ENCI_VIDEO_EN, align 4
  %216 = call i64 @_REG(i32 %215)
  %217 = add nsw i64 %214, %216
  %218 = call i32 @writel_relaxed(i32 1, i64 %217)
  br label %227

219:                                              ; preds = %191
  %220 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %221 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i32, i32* @ENCP_VIDEO_EN, align 4
  %224 = call i64 @_REG(i32 %223)
  %225 = add nsw i64 %222, %224
  %226 = call i32 @writel_relaxed(i32 1, i64 %225)
  br label %227

227:                                              ; preds = %219, %211
  %228 = load i32, i32* %9, align 4
  %229 = and i32 %228, 3840
  %230 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %231 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* @VPU_HDMI_SETTING, align 4
  %234 = call i64 @_REG(i32 %233)
  %235 = add nsw i64 %232, %234
  %236 = call i32 @writel_bits_relaxed(i32 3840, i32 %229, i64 %235)
  %237 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %238 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %227
  %243 = load i32, i32* @MESON_VENC_SOURCE_ENCI, align 4
  %244 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %245 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i32, i32* @VPU_HDMI_SETTING, align 4
  %248 = call i64 @_REG(i32 %247)
  %249 = add nsw i64 %246, %248
  %250 = call i32 @writel_bits_relaxed(i32 3, i32 %243, i64 %249)
  br label %260

251:                                              ; preds = %227
  %252 = load i32, i32* @MESON_VENC_SOURCE_ENCP, align 4
  %253 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %254 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i32, i32* @VPU_HDMI_SETTING, align 4
  %257 = call i64 @_REG(i32 %256)
  %258 = add nsw i64 %255, %257
  %259 = call i32 @writel_bits_relaxed(i32 3, i32 %252, i64 %258)
  br label %260

260:                                              ; preds = %251, %242
  ret i32 0
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @_REG(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dw_hdmi_top_write_bits(%struct.meson_dw_hdmi*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @meson_hdmi_phy_setup_mode(%struct.meson_dw_hdmi*, %struct.drm_display_mode*) #1

declare dso_local i64 @dw_hdmi_is_compatible(%struct.meson_dw_hdmi*, i8*) #1

declare dso_local i32 @dw_hdmi_set_high_tmds_clock_ratio(%struct.dw_hdmi*) #1

declare dso_local i32 @meson_dw_hdmi_phy_reset(%struct.meson_dw_hdmi*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
