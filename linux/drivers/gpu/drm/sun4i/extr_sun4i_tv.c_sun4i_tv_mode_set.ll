; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tv.c_sun4i_tv_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tv.c_sun4i_tv_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.sun4i_tv = type { i32 }
%struct.tv_mode = type { i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@SUN4I_TVE_EN_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_EN_DAC_MAP_MASK = common dso_local global i32 0, align 4
@SUN4I_TVE_CFG0_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_CFG0_YC_EN = common dso_local global i32 0, align 4
@SUN4I_TVE_CFG0_COMP_EN = common dso_local global i32 0, align 4
@SUN4I_TVE_CFG0_DAC_CONTROL_54M = common dso_local global i32 0, align 4
@SUN4I_TVE_CFG0_CORE_DATAPATH_54M = common dso_local global i32 0, align 4
@SUN4I_TVE_CFG0_CORE_CONTROL_54M = common dso_local global i32 0, align 4
@SUN4I_TVE_DAC0_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_DAC0_INTERNAL_DAC_37_5_OHMS = common dso_local global i32 0, align 4
@SUN4I_TVE_DAC0_CHROMA_0_75 = common dso_local global i32 0, align 4
@SUN4I_TVE_DAC0_LUMA_0_4 = common dso_local global i32 0, align 4
@SUN4I_TVE_DAC0_CLOCK_INVERT = common dso_local global i32 0, align 4
@SUN4I_TVE_NOTCH_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_CHROMA_FREQ_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_PORCH_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_LINE_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_LEVEL_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_DAC1_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_CB_CR_LVL_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_BURST_WIDTH_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_CB_CR_GAIN_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_SYNC_VBI_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_ACTIVE_LINE_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_CHROMA_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_CHROMA_COMP_GAIN_50 = common dso_local global i32 0, align 4
@SUN4I_TVE_12C_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_12C_COMP_YUV_EN = common dso_local global i32 0, align 4
@SUN4I_TVE_12C_NOTCH_WIDTH_WIDE = common dso_local global i32 0, align 4
@SUN4I_TVE_RESYNC_REG = common dso_local global i32 0, align 4
@SUN4I_TVE_RESYNC_FIELD = common dso_local global i32 0, align 4
@SUN4I_TVE_SLAVE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @sun4i_tv_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_tv_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.sun4i_tv*, align 8
  %8 = alloca %struct.tv_mode*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %10 = call %struct.sun4i_tv* @drm_encoder_to_sun4i_tv(%struct.drm_encoder* %9)
  store %struct.sun4i_tv* %10, %struct.sun4i_tv** %7, align 8
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %12 = call %struct.tv_mode* @sun4i_tv_find_tv_by_mode(%struct.drm_display_mode* %11)
  store %struct.tv_mode* %12, %struct.tv_mode** %8, align 8
  %13 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %14 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SUN4I_TVE_EN_REG, align 4
  %17 = load i32, i32* @SUN4I_TVE_EN_DAC_MAP_MASK, align 4
  %18 = call i32 @SUN4I_TVE_EN_DAC_MAP(i32 0, i32 1)
  %19 = call i32 @SUN4I_TVE_EN_DAC_MAP(i32 1, i32 2)
  %20 = or i32 %18, %19
  %21 = call i32 @SUN4I_TVE_EN_DAC_MAP(i32 2, i32 3)
  %22 = or i32 %20, %21
  %23 = call i32 @SUN4I_TVE_EN_DAC_MAP(i32 3, i32 4)
  %24 = or i32 %22, %23
  %25 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 %17, i32 %24)
  %26 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %27 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SUN4I_TVE_CFG0_REG, align 4
  %30 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %31 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %34 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %33, i32 0, i32 12
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @SUN4I_TVE_CFG0_YC_EN, align 4
  br label %40

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  %42 = or i32 %32, %41
  %43 = load i32, i32* @SUN4I_TVE_CFG0_COMP_EN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SUN4I_TVE_CFG0_DAC_CONTROL_54M, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SUN4I_TVE_CFG0_CORE_DATAPATH_54M, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SUN4I_TVE_CFG0_CORE_CONTROL_54M, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @regmap_write(i32 %28, i32 %29, i32 %50)
  %52 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %53 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SUN4I_TVE_DAC0_REG, align 4
  %56 = call i32 @SUN4I_TVE_DAC0_DAC_EN(i32 0)
  %57 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %58 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %57, i32 0, i32 11
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %40
  %62 = call i32 @SUN4I_TVE_DAC0_DAC_EN(i32 3)
  br label %64

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  %66 = or i32 %56, %65
  %67 = load i32, i32* @SUN4I_TVE_DAC0_INTERNAL_DAC_37_5_OHMS, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @SUN4I_TVE_DAC0_CHROMA_0_75, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @SUN4I_TVE_DAC0_LUMA_0_4, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @SUN4I_TVE_DAC0_CLOCK_INVERT, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %76 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %75, i32 0, i32 10
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %64
  %80 = call i32 @BIT(i32 25)
  br label %82

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = or i32 %74, %83
  %85 = call i32 @BIT(i32 30)
  %86 = or i32 %84, %85
  %87 = call i32 @regmap_write(i32 %54, i32 %55, i32 %86)
  %88 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %89 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SUN4I_TVE_NOTCH_REG, align 4
  %92 = call i32 @SUN4I_TVE_NOTCH_DAC0_TO_DAC_DLY(i32 1, i32 0)
  %93 = call i32 @SUN4I_TVE_NOTCH_DAC0_TO_DAC_DLY(i32 2, i32 0)
  %94 = or i32 %92, %93
  %95 = call i32 @regmap_write(i32 %90, i32 %91, i32 %94)
  %96 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %97 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SUN4I_TVE_CHROMA_FREQ_REG, align 4
  %100 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %101 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @regmap_write(i32 %98, i32 %99, i32 %102)
  %104 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %105 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SUN4I_TVE_PORCH_REG, align 4
  %108 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %109 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @SUN4I_TVE_PORCH_BACK(i32 %110)
  %112 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %113 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @SUN4I_TVE_PORCH_FRONT(i32 %114)
  %116 = or i32 %111, %115
  %117 = call i32 @regmap_write(i32 %106, i32 %107, i32 %116)
  %118 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %119 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @SUN4I_TVE_LINE_REG, align 4
  %122 = call i32 @SUN4I_TVE_LINE_FIRST(i32 22)
  %123 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %124 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @SUN4I_TVE_LINE_NUMBER(i32 %125)
  %127 = or i32 %122, %126
  %128 = call i32 @regmap_write(i32 %120, i32 %121, i32 %127)
  %129 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %130 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @SUN4I_TVE_LEVEL_REG, align 4
  %133 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %134 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %133, i32 0, i32 6
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @SUN4I_TVE_LEVEL_BLANK(i32 %137)
  %139 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %140 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %139, i32 0, i32 6
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @SUN4I_TVE_LEVEL_BLACK(i32 %143)
  %145 = or i32 %138, %144
  %146 = call i32 @regmap_write(i32 %131, i32 %132, i32 %145)
  %147 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %148 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @SUN4I_TVE_DAC1_REG, align 4
  %151 = call i32 @SUN4I_TVE_DAC1_AMPLITUDE(i32 0, i32 24)
  %152 = call i32 @SUN4I_TVE_DAC1_AMPLITUDE(i32 1, i32 24)
  %153 = or i32 %151, %152
  %154 = call i32 @SUN4I_TVE_DAC1_AMPLITUDE(i32 2, i32 24)
  %155 = or i32 %153, %154
  %156 = call i32 @SUN4I_TVE_DAC1_AMPLITUDE(i32 3, i32 24)
  %157 = or i32 %155, %156
  %158 = call i32 @regmap_write(i32 %149, i32 %150, i32 %157)
  %159 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %160 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @SUN4I_TVE_CB_CR_LVL_REG, align 4
  %163 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %164 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %163, i32 0, i32 5
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @SUN4I_TVE_CB_CR_LVL_CB_BURST(i32 %167)
  %169 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %170 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %169, i32 0, i32 5
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @SUN4I_TVE_CB_CR_LVL_CR_BURST(i32 %173)
  %175 = or i32 %168, %174
  %176 = call i32 @regmap_write(i32 %161, i32 %162, i32 %175)
  %177 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %178 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @SUN4I_TVE_BURST_WIDTH_REG, align 4
  %181 = call i32 @SUN4I_TVE_BURST_WIDTH_HSYNC_WIDTH(i32 126)
  %182 = call i32 @SUN4I_TVE_BURST_WIDTH_BURST_WIDTH(i32 68)
  %183 = or i32 %181, %182
  %184 = call i32 @SUN4I_TVE_BURST_WIDTH_BREEZEWAY(i32 22)
  %185 = or i32 %183, %184
  %186 = call i32 @regmap_write(i32 %179, i32 %180, i32 %185)
  %187 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %188 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @SUN4I_TVE_CB_CR_GAIN_REG, align 4
  %191 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %192 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %191, i32 0, i32 4
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @SUN4I_TVE_CB_CR_GAIN_CB(i32 %195)
  %197 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %198 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %197, i32 0, i32 4
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @SUN4I_TVE_CB_CR_GAIN_CR(i32 %201)
  %203 = or i32 %196, %202
  %204 = call i32 @regmap_write(i32 %189, i32 %190, i32 %203)
  %205 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %206 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @SUN4I_TVE_SYNC_VBI_REG, align 4
  %209 = call i32 @SUN4I_TVE_SYNC_VBI_SYNC(i32 16)
  %210 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %211 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @SUN4I_TVE_SYNC_VBI_VBLANK(i32 %212)
  %214 = or i32 %209, %213
  %215 = call i32 @regmap_write(i32 %207, i32 %208, i32 %214)
  %216 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %217 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @SUN4I_TVE_ACTIVE_LINE_REG, align 4
  %220 = call i32 @SUN4I_TVE_ACTIVE_LINE(i32 1440)
  %221 = call i32 @regmap_write(i32 %218, i32 %219, i32 %220)
  %222 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %223 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @SUN4I_TVE_CHROMA_REG, align 4
  %226 = load i32, i32* @SUN4I_TVE_CHROMA_COMP_GAIN_50, align 4
  %227 = call i32 @regmap_write(i32 %224, i32 %225, i32 %226)
  %228 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %229 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @SUN4I_TVE_12C_REG, align 4
  %232 = load i32, i32* @SUN4I_TVE_12C_COMP_YUV_EN, align 4
  %233 = load i32, i32* @SUN4I_TVE_12C_NOTCH_WIDTH_WIDE, align 4
  %234 = or i32 %232, %233
  %235 = call i32 @regmap_write(i32 %230, i32 %231, i32 %234)
  %236 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %237 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @SUN4I_TVE_RESYNC_REG, align 4
  %240 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %241 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %240, i32 0, i32 2
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @SUN4I_TVE_RESYNC_PIXEL(i32 %244)
  %246 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %247 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %246, i32 0, i32 2
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @SUN4I_TVE_RESYNC_LINE(i32 %250)
  %252 = or i32 %245, %251
  %253 = load %struct.tv_mode*, %struct.tv_mode** %8, align 8
  %254 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %253, i32 0, i32 2
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %82
  %260 = load i32, i32* @SUN4I_TVE_RESYNC_FIELD, align 4
  br label %262

261:                                              ; preds = %82
  br label %262

262:                                              ; preds = %261, %259
  %263 = phi i32 [ %260, %259 ], [ 0, %261 ]
  %264 = or i32 %252, %263
  %265 = call i32 @regmap_write(i32 %238, i32 %239, i32 %264)
  %266 = load %struct.sun4i_tv*, %struct.sun4i_tv** %7, align 8
  %267 = getelementptr inbounds %struct.sun4i_tv, %struct.sun4i_tv* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @SUN4I_TVE_SLAVE_REG, align 4
  %270 = call i32 @regmap_write(i32 %268, i32 %269, i32 0)
  ret void
}

declare dso_local %struct.sun4i_tv* @drm_encoder_to_sun4i_tv(%struct.drm_encoder*) #1

declare dso_local %struct.tv_mode* @sun4i_tv_find_tv_by_mode(%struct.drm_display_mode*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN4I_TVE_EN_DAC_MAP(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN4I_TVE_DAC0_DAC_EN(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @SUN4I_TVE_NOTCH_DAC0_TO_DAC_DLY(i32, i32) #1

declare dso_local i32 @SUN4I_TVE_PORCH_BACK(i32) #1

declare dso_local i32 @SUN4I_TVE_PORCH_FRONT(i32) #1

declare dso_local i32 @SUN4I_TVE_LINE_FIRST(i32) #1

declare dso_local i32 @SUN4I_TVE_LINE_NUMBER(i32) #1

declare dso_local i32 @SUN4I_TVE_LEVEL_BLANK(i32) #1

declare dso_local i32 @SUN4I_TVE_LEVEL_BLACK(i32) #1

declare dso_local i32 @SUN4I_TVE_DAC1_AMPLITUDE(i32, i32) #1

declare dso_local i32 @SUN4I_TVE_CB_CR_LVL_CB_BURST(i32) #1

declare dso_local i32 @SUN4I_TVE_CB_CR_LVL_CR_BURST(i32) #1

declare dso_local i32 @SUN4I_TVE_BURST_WIDTH_HSYNC_WIDTH(i32) #1

declare dso_local i32 @SUN4I_TVE_BURST_WIDTH_BURST_WIDTH(i32) #1

declare dso_local i32 @SUN4I_TVE_BURST_WIDTH_BREEZEWAY(i32) #1

declare dso_local i32 @SUN4I_TVE_CB_CR_GAIN_CB(i32) #1

declare dso_local i32 @SUN4I_TVE_CB_CR_GAIN_CR(i32) #1

declare dso_local i32 @SUN4I_TVE_SYNC_VBI_SYNC(i32) #1

declare dso_local i32 @SUN4I_TVE_SYNC_VBI_VBLANK(i32) #1

declare dso_local i32 @SUN4I_TVE_ACTIVE_LINE(i32) #1

declare dso_local i32 @SUN4I_TVE_RESYNC_PIXEL(i32) #1

declare dso_local i32 @SUN4I_TVE_RESYNC_LINE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
