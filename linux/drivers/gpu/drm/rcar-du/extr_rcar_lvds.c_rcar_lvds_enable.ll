; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.rcar_lvds = type { i32, i64, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_12__*, i64, %struct.TYPE_7__, %struct.drm_display_mode }
%struct.TYPE_11__ = type { i32, i32, i32 (%struct.rcar_lvds*, i32)* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_12__*)* }
%struct.TYPE_7__ = type { i32 }
%struct.drm_display_mode = type { i32 }

@LVDCTRCR = common dso_local global i32 0, align 4
@LVDCTRCR_CTR3SEL_ZERO = common dso_local global i32 0, align 4
@LVDCTRCR_CTR2SEL_DISP = common dso_local global i32 0, align 4
@LVDCTRCR_CTR1SEL_VSYNC = common dso_local global i32 0, align 4
@LVDCTRCR_CTR0SEL_HSYNC = common dso_local global i32 0, align 4
@RCAR_LVDS_QUIRK_LANES = common dso_local global i32 0, align 4
@LVDCHCR = common dso_local global i32 0, align 4
@RCAR_LVDS_QUIRK_DUAL_LINK = common dso_local global i32 0, align 4
@LVDSTRIPE = common dso_local global i32 0, align 4
@LVDSTRIPE_ST_ON = common dso_local global i32 0, align 4
@LVDCR0_LVMD_SHIFT = common dso_local global i32 0, align 4
@LVDCR0_DUSEL = common dso_local global i32 0, align 4
@LVDCR0 = common dso_local global i32 0, align 4
@LVDCR1 = common dso_local global i32 0, align 4
@LVDCR1_CLKSTBY = common dso_local global i32 0, align 4
@LVDCR0_BEN = common dso_local global i32 0, align 4
@LVDCR0_LVEN = common dso_local global i32 0, align 4
@RCAR_LVDS_QUIRK_EXT_PLL = common dso_local global i32 0, align 4
@LVDCR0_PLLON = common dso_local global i32 0, align 4
@RCAR_LVDS_QUIRK_PWD = common dso_local global i32 0, align 4
@LVDCR0_PWD = common dso_local global i32 0, align 4
@RCAR_LVDS_QUIRK_GEN3_LVEN = common dso_local global i32 0, align 4
@LVDCR0_LVRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @rcar_lvds_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_lvds_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.rcar_lvds*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %8 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %9 = call %struct.rcar_lvds* @bridge_to_rcar_lvds(%struct.drm_bridge* %8)
  store %struct.rcar_lvds* %9, %struct.rcar_lvds** %3, align 8
  %10 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %11 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %10, i32 0, i32 7
  store %struct.drm_display_mode* %11, %struct.drm_display_mode** %4, align 8
  %12 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %13 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @clk_prepare_enable(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %276

20:                                               ; preds = %1
  %21 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %22 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %27 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %26, i32 0, i32 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = icmp ne %struct.TYPE_12__* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %32 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %31, i32 0, i32 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %36, align 8
  %38 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %39 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %38, i32 0, i32 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = call i32 %37(%struct.TYPE_12__* %40)
  br label %42

42:                                               ; preds = %30, %25, %20
  %43 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %44 = load i32, i32* @LVDCTRCR, align 4
  %45 = load i32, i32* @LVDCTRCR_CTR3SEL_ZERO, align 4
  %46 = load i32, i32* @LVDCTRCR_CTR2SEL_DISP, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @LVDCTRCR_CTR1SEL_VSYNC, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @LVDCTRCR_CTR0SEL_HSYNC, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %43, i32 %44, i32 %51)
  %53 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %54 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %53, i32 0, i32 2
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RCAR_LVDS_QUIRK_LANES, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %42
  %62 = call i32 @LVDCHCR_CHSEL_CH(i32 0, i32 0)
  %63 = call i32 @LVDCHCR_CHSEL_CH(i32 1, i32 3)
  %64 = or i32 %62, %63
  %65 = call i32 @LVDCHCR_CHSEL_CH(i32 2, i32 2)
  %66 = or i32 %64, %65
  %67 = call i32 @LVDCHCR_CHSEL_CH(i32 3, i32 1)
  %68 = or i32 %66, %67
  store i32 %68, i32* %5, align 4
  br label %77

69:                                               ; preds = %42
  %70 = call i32 @LVDCHCR_CHSEL_CH(i32 0, i32 0)
  %71 = call i32 @LVDCHCR_CHSEL_CH(i32 1, i32 1)
  %72 = or i32 %70, %71
  %73 = call i32 @LVDCHCR_CHSEL_CH(i32 2, i32 2)
  %74 = or i32 %72, %73
  %75 = call i32 @LVDCHCR_CHSEL_CH(i32 3, i32 3)
  %76 = or i32 %74, %75
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %69, %61
  %78 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %79 = load i32, i32* @LVDCHCR, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %78, i32 %79, i32 %80)
  %82 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %83 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %82, i32 0, i32 2
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @RCAR_LVDS_QUIRK_DUAL_LINK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %77
  %91 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %92 = load i32, i32* @LVDSTRIPE, align 4
  %93 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %94 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @LVDSTRIPE_ST_ON, align 4
  br label %100

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ]
  %102 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %91, i32 %92, i32 %101)
  br label %103

103:                                              ; preds = %100, %77
  %104 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %105 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %110 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %109, i32 0, i32 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = icmp ne %struct.TYPE_12__* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %108, %103
  %114 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %115 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %114, i32 0, i32 2
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load i32 (%struct.rcar_lvds*, i32)*, i32 (%struct.rcar_lvds*, i32)** %117, align 8
  %119 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %120 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %121 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %122, 1000
  %124 = call i32 %118(%struct.rcar_lvds* %119, i32 %123)
  br label %125

125:                                              ; preds = %113, %108
  %126 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %127 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @LVDCR0_LVMD_SHIFT, align 4
  %130 = shl i32 %128, %129
  store i32 %130, i32* %6, align 4
  %131 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %132 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = icmp ne %struct.TYPE_9__* %134, null
  br i1 %135, label %136, label %150

136:                                              ; preds = %125
  %137 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %138 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @drm_crtc_index(i32 %142)
  %144 = icmp eq i32 %143, 2
  br i1 %144, label %145, label %149

145:                                              ; preds = %136
  %146 = load i32, i32* @LVDCR0_DUSEL, align 4
  %147 = load i32, i32* %6, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %145, %136
  br label %150

150:                                              ; preds = %149, %125
  %151 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %152 = load i32, i32* @LVDCR0, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %151, i32 %152, i32 %153)
  %155 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %156 = load i32, i32* @LVDCR1, align 4
  %157 = call i32 @LVDCR1_CHSTBY(i32 3)
  %158 = call i32 @LVDCR1_CHSTBY(i32 2)
  %159 = or i32 %157, %158
  %160 = call i32 @LVDCR1_CHSTBY(i32 1)
  %161 = or i32 %159, %160
  %162 = call i32 @LVDCR1_CHSTBY(i32 0)
  %163 = or i32 %161, %162
  %164 = load i32, i32* @LVDCR1_CLKSTBY, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %155, i32 %156, i32 %165)
  %167 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %168 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %167, i32 0, i32 2
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %171, 3
  br i1 %172, label %173, label %183

173:                                              ; preds = %150
  %174 = load i32, i32* @LVDCR0_BEN, align 4
  %175 = load i32, i32* @LVDCR0_LVEN, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* %6, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %6, align 4
  %179 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %180 = load i32, i32* @LVDCR0, align 4
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %179, i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %173, %150
  %184 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %185 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %184, i32 0, i32 2
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @RCAR_LVDS_QUIRK_EXT_PLL, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %183
  %193 = load i32, i32* @LVDCR0_PLLON, align 4
  %194 = load i32, i32* %6, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %6, align 4
  %196 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %197 = load i32, i32* @LVDCR0, align 4
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %192, %183
  %201 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %202 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %201, i32 0, i32 2
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @RCAR_LVDS_QUIRK_PWD, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %200
  %210 = load i32, i32* @LVDCR0_PWD, align 4
  %211 = load i32, i32* %6, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %6, align 4
  %213 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %214 = load i32, i32* @LVDCR0, align 4
  %215 = load i32, i32* %6, align 4
  %216 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %209, %200
  %218 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %219 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %218, i32 0, i32 2
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @RCAR_LVDS_QUIRK_GEN3_LVEN, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %244

226:                                              ; preds = %217
  %227 = load i32, i32* @LVDCR0_LVEN, align 4
  %228 = load i32, i32* %6, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %6, align 4
  %230 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %231 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %230, i32 0, i32 2
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @RCAR_LVDS_QUIRK_PWD, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %243, label %238

238:                                              ; preds = %226
  %239 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %240 = load i32, i32* @LVDCR0, align 4
  %241 = load i32, i32* %6, align 4
  %242 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %239, i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %238, %226
  br label %244

244:                                              ; preds = %243, %217
  %245 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %246 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %245, i32 0, i32 2
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @RCAR_LVDS_QUIRK_EXT_PLL, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %255, label %253

253:                                              ; preds = %244
  %254 = call i32 @usleep_range(i32 100, i32 150)
  br label %255

255:                                              ; preds = %253, %244
  %256 = load i32, i32* @LVDCR0_LVRES, align 4
  %257 = load i32, i32* %6, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %6, align 4
  %259 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %260 = load i32, i32* @LVDCR0, align 4
  %261 = load i32, i32* %6, align 4
  %262 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %259, i32 %260, i32 %261)
  %263 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %264 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %255
  %268 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %269 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = call i32 @drm_panel_prepare(i64 %270)
  %272 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %273 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @drm_panel_enable(i64 %274)
  br label %276

276:                                              ; preds = %19, %267, %255
  ret void
}

declare dso_local %struct.rcar_lvds* @bridge_to_rcar_lvds(%struct.drm_bridge*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @rcar_lvds_write(%struct.rcar_lvds*, i32, i32) #1

declare dso_local i32 @LVDCHCR_CHSEL_CH(i32, i32) #1

declare dso_local i32 @drm_crtc_index(i32) #1

declare dso_local i32 @LVDCR1_CHSTBY(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @drm_panel_prepare(i64) #1

declare dso_local i32 @drm_panel_enable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
