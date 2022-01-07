; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7789v.c_st7789v_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7789v.c_st7789v_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.st7789v = type { i32, i32 }

@MIPI_DCS_EXIT_SLEEP_MODE = common dso_local global i32 0, align 4
@MIPI_DCS_SET_ADDRESS_MODE = common dso_local global i32 0, align 4
@MIPI_DCS_SET_PIXEL_FORMAT = common dso_local global i32 0, align 4
@MIPI_DCS_PIXEL_FMT_18BIT = common dso_local global i32 0, align 4
@ST7789V_PORCTRL_CMD = common dso_local global i32 0, align 4
@ST7789V_GCTRL_CMD = common dso_local global i32 0, align 4
@ST7789V_VCOMS_CMD = common dso_local global i32 0, align 4
@ST7789V_LCMCTRL_CMD = common dso_local global i32 0, align 4
@ST7789V_LCMCTRL_XMH = common dso_local global i32 0, align 4
@ST7789V_LCMCTRL_XMX = common dso_local global i32 0, align 4
@ST7789V_LCMCTRL_XBGR = common dso_local global i32 0, align 4
@ST7789V_VDVVRHEN_CMD = common dso_local global i32 0, align 4
@ST7789V_VDVVRHEN_CMDEN = common dso_local global i32 0, align 4
@ST7789V_VRHS_CMD = common dso_local global i32 0, align 4
@ST7789V_VDVS_CMD = common dso_local global i32 0, align 4
@ST7789V_FRCTRL2_CMD = common dso_local global i32 0, align 4
@ST7789V_PWCTRL1_CMD = common dso_local global i32 0, align 4
@ST7789V_PWCTRL1_MAGIC = common dso_local global i32 0, align 4
@ST7789V_PVGAMCTRL_CMD = common dso_local global i32 0, align 4
@ST7789V_NVGAMCTRL_CMD = common dso_local global i32 0, align 4
@MIPI_DCS_ENTER_INVERT_MODE = common dso_local global i32 0, align 4
@ST7789V_RAMCTRL_CMD = common dso_local global i32 0, align 4
@ST7789V_RAMCTRL_DM_RGB = common dso_local global i32 0, align 4
@ST7789V_RAMCTRL_RM_RGB = common dso_local global i32 0, align 4
@ST7789V_RAMCTRL_MAGIC = common dso_local global i32 0, align 4
@ST7789V_RGBCTRL_CMD = common dso_local global i32 0, align 4
@ST7789V_RGBCTRL_WO = common dso_local global i32 0, align 4
@ST7789V_RGBCTRL_VSYNC_HIGH = common dso_local global i32 0, align 4
@ST7789V_RGBCTRL_HSYNC_HIGH = common dso_local global i32 0, align 4
@ST7789V_RGBCTRL_PCLK_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @st7789v_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st7789v_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.st7789v*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.st7789v* @panel_to_st7789v(%struct.drm_panel* %6)
  store %struct.st7789v* %7, %struct.st7789v** %4, align 8
  %8 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %9 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @regulator_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %387

16:                                               ; preds = %1
  %17 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %18 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gpiod_set_value(i32 %19, i32 1)
  %21 = call i32 @msleep(i32 30)
  %22 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %23 = getelementptr inbounds %struct.st7789v, %struct.st7789v* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gpiod_set_value(i32 %24, i32 0)
  %26 = call i32 @msleep(i32 120)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %29 = load i32, i32* @MIPI_DCS_EXIT_SLEEP_MODE, align 4
  %30 = call i32 @st7789v_write_command(%struct.st7789v* %28, i32 %29)
  %31 = call i32 @ST7789V_TEST(i32 %27, i32 %30)
  %32 = call i32 @msleep(i32 120)
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %35 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %36 = call i32 @st7789v_write_command(%struct.st7789v* %34, i32 %35)
  %37 = call i32 @ST7789V_TEST(i32 %33, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %40 = call i32 @st7789v_write_data(%struct.st7789v* %39, i32 0)
  %41 = call i32 @ST7789V_TEST(i32 %38, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %44 = load i32, i32* @MIPI_DCS_SET_PIXEL_FORMAT, align 4
  %45 = call i32 @st7789v_write_command(%struct.st7789v* %43, i32 %44)
  %46 = call i32 @ST7789V_TEST(i32 %42, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %49 = load i32, i32* @MIPI_DCS_PIXEL_FMT_18BIT, align 4
  %50 = shl i32 %49, 4
  %51 = load i32, i32* @MIPI_DCS_PIXEL_FMT_18BIT, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @st7789v_write_data(%struct.st7789v* %48, i32 %52)
  %54 = call i32 @ST7789V_TEST(i32 %47, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %57 = load i32, i32* @ST7789V_PORCTRL_CMD, align 4
  %58 = call i32 @st7789v_write_command(%struct.st7789v* %56, i32 %57)
  %59 = call i32 @ST7789V_TEST(i32 %55, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %62 = call i32 @st7789v_write_data(%struct.st7789v* %61, i32 12)
  %63 = call i32 @ST7789V_TEST(i32 %60, i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %66 = call i32 @st7789v_write_data(%struct.st7789v* %65, i32 12)
  %67 = call i32 @ST7789V_TEST(i32 %64, i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %70 = call i32 @st7789v_write_data(%struct.st7789v* %69, i32 0)
  %71 = call i32 @ST7789V_TEST(i32 %68, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %74 = call i32 @ST7789V_PORCTRL_IDLE_BP(i32 3)
  %75 = call i32 @ST7789V_PORCTRL_IDLE_FP(i32 3)
  %76 = or i32 %74, %75
  %77 = call i32 @st7789v_write_data(%struct.st7789v* %73, i32 %76)
  %78 = call i32 @ST7789V_TEST(i32 %72, i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %81 = call i32 @ST7789V_PORCTRL_PARTIAL_BP(i32 3)
  %82 = call i32 @ST7789V_PORCTRL_PARTIAL_FP(i32 3)
  %83 = or i32 %81, %82
  %84 = call i32 @st7789v_write_data(%struct.st7789v* %80, i32 %83)
  %85 = call i32 @ST7789V_TEST(i32 %79, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %88 = load i32, i32* @ST7789V_GCTRL_CMD, align 4
  %89 = call i32 @st7789v_write_command(%struct.st7789v* %87, i32 %88)
  %90 = call i32 @ST7789V_TEST(i32 %86, i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %93 = call i32 @ST7789V_GCTRL_VGLS(i32 5)
  %94 = call i32 @ST7789V_GCTRL_VGHS(i32 3)
  %95 = or i32 %93, %94
  %96 = call i32 @st7789v_write_data(%struct.st7789v* %92, i32 %95)
  %97 = call i32 @ST7789V_TEST(i32 %91, i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %100 = load i32, i32* @ST7789V_VCOMS_CMD, align 4
  %101 = call i32 @st7789v_write_command(%struct.st7789v* %99, i32 %100)
  %102 = call i32 @ST7789V_TEST(i32 %98, i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %105 = call i32 @st7789v_write_data(%struct.st7789v* %104, i32 43)
  %106 = call i32 @ST7789V_TEST(i32 %103, i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %109 = load i32, i32* @ST7789V_LCMCTRL_CMD, align 4
  %110 = call i32 @st7789v_write_command(%struct.st7789v* %108, i32 %109)
  %111 = call i32 @ST7789V_TEST(i32 %107, i32 %110)
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %114 = load i32, i32* @ST7789V_LCMCTRL_XMH, align 4
  %115 = load i32, i32* @ST7789V_LCMCTRL_XMX, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @ST7789V_LCMCTRL_XBGR, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @st7789v_write_data(%struct.st7789v* %113, i32 %118)
  %120 = call i32 @ST7789V_TEST(i32 %112, i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %123 = load i32, i32* @ST7789V_VDVVRHEN_CMD, align 4
  %124 = call i32 @st7789v_write_command(%struct.st7789v* %122, i32 %123)
  %125 = call i32 @ST7789V_TEST(i32 %121, i32 %124)
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %128 = load i32, i32* @ST7789V_VDVVRHEN_CMDEN, align 4
  %129 = call i32 @st7789v_write_data(%struct.st7789v* %127, i32 %128)
  %130 = call i32 @ST7789V_TEST(i32 %126, i32 %129)
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %133 = load i32, i32* @ST7789V_VRHS_CMD, align 4
  %134 = call i32 @st7789v_write_command(%struct.st7789v* %132, i32 %133)
  %135 = call i32 @ST7789V_TEST(i32 %131, i32 %134)
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %138 = call i32 @st7789v_write_data(%struct.st7789v* %137, i32 15)
  %139 = call i32 @ST7789V_TEST(i32 %136, i32 %138)
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %142 = load i32, i32* @ST7789V_VDVS_CMD, align 4
  %143 = call i32 @st7789v_write_command(%struct.st7789v* %141, i32 %142)
  %144 = call i32 @ST7789V_TEST(i32 %140, i32 %143)
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %147 = call i32 @st7789v_write_data(%struct.st7789v* %146, i32 32)
  %148 = call i32 @ST7789V_TEST(i32 %145, i32 %147)
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %151 = load i32, i32* @ST7789V_FRCTRL2_CMD, align 4
  %152 = call i32 @st7789v_write_command(%struct.st7789v* %150, i32 %151)
  %153 = call i32 @ST7789V_TEST(i32 %149, i32 %152)
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %156 = call i32 @st7789v_write_data(%struct.st7789v* %155, i32 15)
  %157 = call i32 @ST7789V_TEST(i32 %154, i32 %156)
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %160 = load i32, i32* @ST7789V_PWCTRL1_CMD, align 4
  %161 = call i32 @st7789v_write_command(%struct.st7789v* %159, i32 %160)
  %162 = call i32 @ST7789V_TEST(i32 %158, i32 %161)
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %165 = load i32, i32* @ST7789V_PWCTRL1_MAGIC, align 4
  %166 = call i32 @st7789v_write_data(%struct.st7789v* %164, i32 %165)
  %167 = call i32 @ST7789V_TEST(i32 %163, i32 %166)
  %168 = load i32, i32* %5, align 4
  %169 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %170 = call i32 @ST7789V_PWCTRL1_AVDD(i32 2)
  %171 = call i32 @ST7789V_PWCTRL1_AVCL(i32 2)
  %172 = or i32 %170, %171
  %173 = call i32 @ST7789V_PWCTRL1_VDS(i32 1)
  %174 = or i32 %172, %173
  %175 = call i32 @st7789v_write_data(%struct.st7789v* %169, i32 %174)
  %176 = call i32 @ST7789V_TEST(i32 %168, i32 %175)
  %177 = load i32, i32* %5, align 4
  %178 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %179 = load i32, i32* @ST7789V_PVGAMCTRL_CMD, align 4
  %180 = call i32 @st7789v_write_command(%struct.st7789v* %178, i32 %179)
  %181 = call i32 @ST7789V_TEST(i32 %177, i32 %180)
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %184 = call i32 @ST7789V_PVGAMCTRL_VP63(i32 13)
  %185 = call i32 @st7789v_write_data(%struct.st7789v* %183, i32 %184)
  %186 = call i32 @ST7789V_TEST(i32 %182, i32 %185)
  %187 = load i32, i32* %5, align 4
  %188 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %189 = call i32 @ST7789V_PVGAMCTRL_VP1(i32 202)
  %190 = call i32 @st7789v_write_data(%struct.st7789v* %188, i32 %189)
  %191 = call i32 @ST7789V_TEST(i32 %187, i32 %190)
  %192 = load i32, i32* %5, align 4
  %193 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %194 = call i32 @ST7789V_PVGAMCTRL_VP2(i32 14)
  %195 = call i32 @st7789v_write_data(%struct.st7789v* %193, i32 %194)
  %196 = call i32 @ST7789V_TEST(i32 %192, i32 %195)
  %197 = load i32, i32* %5, align 4
  %198 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %199 = call i32 @ST7789V_PVGAMCTRL_VP4(i32 8)
  %200 = call i32 @st7789v_write_data(%struct.st7789v* %198, i32 %199)
  %201 = call i32 @ST7789V_TEST(i32 %197, i32 %200)
  %202 = load i32, i32* %5, align 4
  %203 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %204 = call i32 @ST7789V_PVGAMCTRL_VP6(i32 9)
  %205 = call i32 @st7789v_write_data(%struct.st7789v* %203, i32 %204)
  %206 = call i32 @ST7789V_TEST(i32 %202, i32 %205)
  %207 = load i32, i32* %5, align 4
  %208 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %209 = call i32 @ST7789V_PVGAMCTRL_VP13(i32 7)
  %210 = call i32 @st7789v_write_data(%struct.st7789v* %208, i32 %209)
  %211 = call i32 @ST7789V_TEST(i32 %207, i32 %210)
  %212 = load i32, i32* %5, align 4
  %213 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %214 = call i32 @ST7789V_PVGAMCTRL_VP20(i32 45)
  %215 = call i32 @st7789v_write_data(%struct.st7789v* %213, i32 %214)
  %216 = call i32 @ST7789V_TEST(i32 %212, i32 %215)
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %219 = call i32 @ST7789V_PVGAMCTRL_VP27(i32 11)
  %220 = call i32 @ST7789V_PVGAMCTRL_VP36(i32 3)
  %221 = or i32 %219, %220
  %222 = call i32 @st7789v_write_data(%struct.st7789v* %218, i32 %221)
  %223 = call i32 @ST7789V_TEST(i32 %217, i32 %222)
  %224 = load i32, i32* %5, align 4
  %225 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %226 = call i32 @ST7789V_PVGAMCTRL_VP43(i32 61)
  %227 = call i32 @st7789v_write_data(%struct.st7789v* %225, i32 %226)
  %228 = call i32 @ST7789V_TEST(i32 %224, i32 %227)
  %229 = load i32, i32* %5, align 4
  %230 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %231 = call i32 @ST7789V_PVGAMCTRL_JP1(i32 3)
  %232 = call i32 @ST7789V_PVGAMCTRL_VP50(i32 4)
  %233 = or i32 %231, %232
  %234 = call i32 @st7789v_write_data(%struct.st7789v* %230, i32 %233)
  %235 = call i32 @ST7789V_TEST(i32 %229, i32 %234)
  %236 = load i32, i32* %5, align 4
  %237 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %238 = call i32 @ST7789V_PVGAMCTRL_VP57(i32 10)
  %239 = call i32 @st7789v_write_data(%struct.st7789v* %237, i32 %238)
  %240 = call i32 @ST7789V_TEST(i32 %236, i32 %239)
  %241 = load i32, i32* %5, align 4
  %242 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %243 = call i32 @ST7789V_PVGAMCTRL_VP59(i32 10)
  %244 = call i32 @st7789v_write_data(%struct.st7789v* %242, i32 %243)
  %245 = call i32 @ST7789V_TEST(i32 %241, i32 %244)
  %246 = load i32, i32* %5, align 4
  %247 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %248 = call i32 @ST7789V_PVGAMCTRL_VP61(i32 27)
  %249 = call i32 @st7789v_write_data(%struct.st7789v* %247, i32 %248)
  %250 = call i32 @ST7789V_TEST(i32 %246, i32 %249)
  %251 = load i32, i32* %5, align 4
  %252 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %253 = call i32 @ST7789V_PVGAMCTRL_VP62(i32 40)
  %254 = call i32 @st7789v_write_data(%struct.st7789v* %252, i32 %253)
  %255 = call i32 @ST7789V_TEST(i32 %251, i32 %254)
  %256 = load i32, i32* %5, align 4
  %257 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %258 = load i32, i32* @ST7789V_NVGAMCTRL_CMD, align 4
  %259 = call i32 @st7789v_write_command(%struct.st7789v* %257, i32 %258)
  %260 = call i32 @ST7789V_TEST(i32 %256, i32 %259)
  %261 = load i32, i32* %5, align 4
  %262 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %263 = call i32 @ST7789V_NVGAMCTRL_VN63(i32 13)
  %264 = call i32 @st7789v_write_data(%struct.st7789v* %262, i32 %263)
  %265 = call i32 @ST7789V_TEST(i32 %261, i32 %264)
  %266 = load i32, i32* %5, align 4
  %267 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %268 = call i32 @ST7789V_NVGAMCTRL_VN1(i32 202)
  %269 = call i32 @st7789v_write_data(%struct.st7789v* %267, i32 %268)
  %270 = call i32 @ST7789V_TEST(i32 %266, i32 %269)
  %271 = load i32, i32* %5, align 4
  %272 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %273 = call i32 @ST7789V_NVGAMCTRL_VN2(i32 15)
  %274 = call i32 @st7789v_write_data(%struct.st7789v* %272, i32 %273)
  %275 = call i32 @ST7789V_TEST(i32 %271, i32 %274)
  %276 = load i32, i32* %5, align 4
  %277 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %278 = call i32 @ST7789V_NVGAMCTRL_VN4(i32 8)
  %279 = call i32 @st7789v_write_data(%struct.st7789v* %277, i32 %278)
  %280 = call i32 @ST7789V_TEST(i32 %276, i32 %279)
  %281 = load i32, i32* %5, align 4
  %282 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %283 = call i32 @ST7789V_NVGAMCTRL_VN6(i32 8)
  %284 = call i32 @st7789v_write_data(%struct.st7789v* %282, i32 %283)
  %285 = call i32 @ST7789V_TEST(i32 %281, i32 %284)
  %286 = load i32, i32* %5, align 4
  %287 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %288 = call i32 @ST7789V_NVGAMCTRL_VN13(i32 7)
  %289 = call i32 @st7789v_write_data(%struct.st7789v* %287, i32 %288)
  %290 = call i32 @ST7789V_TEST(i32 %286, i32 %289)
  %291 = load i32, i32* %5, align 4
  %292 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %293 = call i32 @ST7789V_NVGAMCTRL_VN20(i32 46)
  %294 = call i32 @st7789v_write_data(%struct.st7789v* %292, i32 %293)
  %295 = call i32 @ST7789V_TEST(i32 %291, i32 %294)
  %296 = load i32, i32* %5, align 4
  %297 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %298 = call i32 @ST7789V_NVGAMCTRL_VN27(i32 12)
  %299 = call i32 @ST7789V_NVGAMCTRL_VN36(i32 5)
  %300 = or i32 %298, %299
  %301 = call i32 @st7789v_write_data(%struct.st7789v* %297, i32 %300)
  %302 = call i32 @ST7789V_TEST(i32 %296, i32 %301)
  %303 = load i32, i32* %5, align 4
  %304 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %305 = call i32 @ST7789V_NVGAMCTRL_VN43(i32 64)
  %306 = call i32 @st7789v_write_data(%struct.st7789v* %304, i32 %305)
  %307 = call i32 @ST7789V_TEST(i32 %303, i32 %306)
  %308 = load i32, i32* %5, align 4
  %309 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %310 = call i32 @ST7789V_NVGAMCTRL_JN1(i32 3)
  %311 = call i32 @ST7789V_NVGAMCTRL_VN50(i32 4)
  %312 = or i32 %310, %311
  %313 = call i32 @st7789v_write_data(%struct.st7789v* %309, i32 %312)
  %314 = call i32 @ST7789V_TEST(i32 %308, i32 %313)
  %315 = load i32, i32* %5, align 4
  %316 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %317 = call i32 @ST7789V_NVGAMCTRL_VN57(i32 9)
  %318 = call i32 @st7789v_write_data(%struct.st7789v* %316, i32 %317)
  %319 = call i32 @ST7789V_TEST(i32 %315, i32 %318)
  %320 = load i32, i32* %5, align 4
  %321 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %322 = call i32 @ST7789V_NVGAMCTRL_VN59(i32 11)
  %323 = call i32 @st7789v_write_data(%struct.st7789v* %321, i32 %322)
  %324 = call i32 @ST7789V_TEST(i32 %320, i32 %323)
  %325 = load i32, i32* %5, align 4
  %326 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %327 = call i32 @ST7789V_NVGAMCTRL_VN61(i32 27)
  %328 = call i32 @st7789v_write_data(%struct.st7789v* %326, i32 %327)
  %329 = call i32 @ST7789V_TEST(i32 %325, i32 %328)
  %330 = load i32, i32* %5, align 4
  %331 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %332 = call i32 @ST7789V_NVGAMCTRL_VN62(i32 40)
  %333 = call i32 @st7789v_write_data(%struct.st7789v* %331, i32 %332)
  %334 = call i32 @ST7789V_TEST(i32 %330, i32 %333)
  %335 = load i32, i32* %5, align 4
  %336 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %337 = load i32, i32* @MIPI_DCS_ENTER_INVERT_MODE, align 4
  %338 = call i32 @st7789v_write_command(%struct.st7789v* %336, i32 %337)
  %339 = call i32 @ST7789V_TEST(i32 %335, i32 %338)
  %340 = load i32, i32* %5, align 4
  %341 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %342 = load i32, i32* @ST7789V_RAMCTRL_CMD, align 4
  %343 = call i32 @st7789v_write_command(%struct.st7789v* %341, i32 %342)
  %344 = call i32 @ST7789V_TEST(i32 %340, i32 %343)
  %345 = load i32, i32* %5, align 4
  %346 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %347 = load i32, i32* @ST7789V_RAMCTRL_DM_RGB, align 4
  %348 = load i32, i32* @ST7789V_RAMCTRL_RM_RGB, align 4
  %349 = or i32 %347, %348
  %350 = call i32 @st7789v_write_data(%struct.st7789v* %346, i32 %349)
  %351 = call i32 @ST7789V_TEST(i32 %345, i32 %350)
  %352 = load i32, i32* %5, align 4
  %353 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %354 = call i32 @ST7789V_RAMCTRL_EPF(i32 3)
  %355 = load i32, i32* @ST7789V_RAMCTRL_MAGIC, align 4
  %356 = or i32 %354, %355
  %357 = call i32 @st7789v_write_data(%struct.st7789v* %353, i32 %356)
  %358 = call i32 @ST7789V_TEST(i32 %352, i32 %357)
  %359 = load i32, i32* %5, align 4
  %360 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %361 = load i32, i32* @ST7789V_RGBCTRL_CMD, align 4
  %362 = call i32 @st7789v_write_command(%struct.st7789v* %360, i32 %361)
  %363 = call i32 @ST7789V_TEST(i32 %359, i32 %362)
  %364 = load i32, i32* %5, align 4
  %365 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %366 = load i32, i32* @ST7789V_RGBCTRL_WO, align 4
  %367 = call i32 @ST7789V_RGBCTRL_RCM(i32 2)
  %368 = or i32 %366, %367
  %369 = load i32, i32* @ST7789V_RGBCTRL_VSYNC_HIGH, align 4
  %370 = or i32 %368, %369
  %371 = load i32, i32* @ST7789V_RGBCTRL_HSYNC_HIGH, align 4
  %372 = or i32 %370, %371
  %373 = load i32, i32* @ST7789V_RGBCTRL_PCLK_HIGH, align 4
  %374 = or i32 %372, %373
  %375 = call i32 @st7789v_write_data(%struct.st7789v* %365, i32 %374)
  %376 = call i32 @ST7789V_TEST(i32 %364, i32 %375)
  %377 = load i32, i32* %5, align 4
  %378 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %379 = call i32 @ST7789V_RGBCTRL_VBP(i32 8)
  %380 = call i32 @st7789v_write_data(%struct.st7789v* %378, i32 %379)
  %381 = call i32 @ST7789V_TEST(i32 %377, i32 %380)
  %382 = load i32, i32* %5, align 4
  %383 = load %struct.st7789v*, %struct.st7789v** %4, align 8
  %384 = call i32 @ST7789V_RGBCTRL_HBP(i32 20)
  %385 = call i32 @st7789v_write_data(%struct.st7789v* %383, i32 %384)
  %386 = call i32 @ST7789V_TEST(i32 %382, i32 %385)
  store i32 0, i32* %2, align 4
  br label %387

387:                                              ; preds = %16, %14
  %388 = load i32, i32* %2, align 4
  ret i32 %388
}

declare dso_local %struct.st7789v* @panel_to_st7789v(%struct.drm_panel*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ST7789V_TEST(i32, i32) #1

declare dso_local i32 @st7789v_write_command(%struct.st7789v*, i32) #1

declare dso_local i32 @st7789v_write_data(%struct.st7789v*, i32) #1

declare dso_local i32 @ST7789V_PORCTRL_IDLE_BP(i32) #1

declare dso_local i32 @ST7789V_PORCTRL_IDLE_FP(i32) #1

declare dso_local i32 @ST7789V_PORCTRL_PARTIAL_BP(i32) #1

declare dso_local i32 @ST7789V_PORCTRL_PARTIAL_FP(i32) #1

declare dso_local i32 @ST7789V_GCTRL_VGLS(i32) #1

declare dso_local i32 @ST7789V_GCTRL_VGHS(i32) #1

declare dso_local i32 @ST7789V_PWCTRL1_AVDD(i32) #1

declare dso_local i32 @ST7789V_PWCTRL1_AVCL(i32) #1

declare dso_local i32 @ST7789V_PWCTRL1_VDS(i32) #1

declare dso_local i32 @ST7789V_PVGAMCTRL_VP63(i32) #1

declare dso_local i32 @ST7789V_PVGAMCTRL_VP1(i32) #1

declare dso_local i32 @ST7789V_PVGAMCTRL_VP2(i32) #1

declare dso_local i32 @ST7789V_PVGAMCTRL_VP4(i32) #1

declare dso_local i32 @ST7789V_PVGAMCTRL_VP6(i32) #1

declare dso_local i32 @ST7789V_PVGAMCTRL_VP13(i32) #1

declare dso_local i32 @ST7789V_PVGAMCTRL_VP20(i32) #1

declare dso_local i32 @ST7789V_PVGAMCTRL_VP27(i32) #1

declare dso_local i32 @ST7789V_PVGAMCTRL_VP36(i32) #1

declare dso_local i32 @ST7789V_PVGAMCTRL_VP43(i32) #1

declare dso_local i32 @ST7789V_PVGAMCTRL_JP1(i32) #1

declare dso_local i32 @ST7789V_PVGAMCTRL_VP50(i32) #1

declare dso_local i32 @ST7789V_PVGAMCTRL_VP57(i32) #1

declare dso_local i32 @ST7789V_PVGAMCTRL_VP59(i32) #1

declare dso_local i32 @ST7789V_PVGAMCTRL_VP61(i32) #1

declare dso_local i32 @ST7789V_PVGAMCTRL_VP62(i32) #1

declare dso_local i32 @ST7789V_NVGAMCTRL_VN63(i32) #1

declare dso_local i32 @ST7789V_NVGAMCTRL_VN1(i32) #1

declare dso_local i32 @ST7789V_NVGAMCTRL_VN2(i32) #1

declare dso_local i32 @ST7789V_NVGAMCTRL_VN4(i32) #1

declare dso_local i32 @ST7789V_NVGAMCTRL_VN6(i32) #1

declare dso_local i32 @ST7789V_NVGAMCTRL_VN13(i32) #1

declare dso_local i32 @ST7789V_NVGAMCTRL_VN20(i32) #1

declare dso_local i32 @ST7789V_NVGAMCTRL_VN27(i32) #1

declare dso_local i32 @ST7789V_NVGAMCTRL_VN36(i32) #1

declare dso_local i32 @ST7789V_NVGAMCTRL_VN43(i32) #1

declare dso_local i32 @ST7789V_NVGAMCTRL_JN1(i32) #1

declare dso_local i32 @ST7789V_NVGAMCTRL_VN50(i32) #1

declare dso_local i32 @ST7789V_NVGAMCTRL_VN57(i32) #1

declare dso_local i32 @ST7789V_NVGAMCTRL_VN59(i32) #1

declare dso_local i32 @ST7789V_NVGAMCTRL_VN61(i32) #1

declare dso_local i32 @ST7789V_NVGAMCTRL_VN62(i32) #1

declare dso_local i32 @ST7789V_RAMCTRL_EPF(i32) #1

declare dso_local i32 @ST7789V_RGBCTRL_RCM(i32) #1

declare dso_local i32 @ST7789V_RGBCTRL_VBP(i32) #1

declare dso_local i32 @ST7789V_RGBCTRL_HBP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
