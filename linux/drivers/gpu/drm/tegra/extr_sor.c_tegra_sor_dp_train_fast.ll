; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_dp_train_fast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_dp_train_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sor = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_dp_link = type { i32 }

@SOR_LANE_DRIVE_CURRENT0 = common dso_local global i32 0, align 4
@SOR_LANE_PREEMPHASIS0 = common dso_local global i32 0, align 4
@SOR_LANE_POSTCURSOR0 = common dso_local global i32 0, align 4
@SOR_LVDS = common dso_local global i32 0, align 4
@SOR_DP_PADCTL_TX_PU_ENABLE = common dso_local global i32 0, align 4
@SOR_DP_PADCTL_TX_PU_MASK = common dso_local global i32 0, align 4
@SOR_DP_PADCTL_CM_TXD_3 = common dso_local global i32 0, align 4
@SOR_DP_PADCTL_CM_TXD_2 = common dso_local global i32 0, align 4
@SOR_DP_PADCTL_CM_TXD_1 = common dso_local global i32 0, align 4
@SOR_DP_PADCTL_CM_TXD_0 = common dso_local global i32 0, align 4
@DP_SET_ANSI_8B10B = common dso_local global i32 0, align 4
@SOR_DP_TPG_CHANNEL_CODING = common dso_local global i64 0, align 8
@SOR_DP_TPG_SCRAMBLER_NONE = common dso_local global i64 0, align 8
@SOR_DP_TPG_PATTERN_TRAIN1 = common dso_local global i64 0, align 8
@SOR_DP_TPG = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_1 = common dso_local global i32 0, align 4
@SOR_DP_SPARE0 = common dso_local global i32 0, align 4
@SOR_DP_SPARE_SEQ_ENABLE = common dso_local global i32 0, align 4
@SOR_DP_SPARE_PANEL_INTERNAL = common dso_local global i32 0, align 4
@SOR_DP_SPARE_MACRO_SOR_CLK = common dso_local global i32 0, align 4
@SOR_DP_TPG_PATTERN_TRAIN2 = common dso_local global i64 0, align 8
@DP_LINK_SCRAMBLING_DISABLE = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_2 = common dso_local global i32 0, align 4
@SOR_DP_TPG_SCRAMBLER_GALIOS = common dso_local global i64 0, align 8
@SOR_DP_TPG_PATTERN_NONE = common dso_local global i64 0, align 8
@DP_TRAINING_PATTERN_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_sor*, %struct.drm_dp_link*)* @tegra_sor_dp_train_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_dp_train_fast(%struct.tegra_sor* %0, %struct.drm_dp_link* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_sor*, align 8
  %5 = alloca %struct.drm_dp_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.tegra_sor* %0, %struct.tegra_sor** %4, align 8
  store %struct.drm_dp_link* %1, %struct.drm_dp_link** %5, align 8
  %13 = call i32 @SOR_LANE_DRIVE_CURRENT_LANE3(i32 64)
  %14 = call i32 @SOR_LANE_DRIVE_CURRENT_LANE2(i32 64)
  %15 = or i32 %13, %14
  %16 = call i32 @SOR_LANE_DRIVE_CURRENT_LANE1(i32 64)
  %17 = or i32 %15, %16
  %18 = call i32 @SOR_LANE_DRIVE_CURRENT_LANE0(i32 64)
  %19 = or i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SOR_LANE_DRIVE_CURRENT0, align 4
  %23 = call i32 @tegra_sor_writel(%struct.tegra_sor* %20, i32 %21, i32 %22)
  %24 = call i32 @SOR_LANE_PREEMPHASIS_LANE3(i32 15)
  %25 = call i32 @SOR_LANE_PREEMPHASIS_LANE2(i32 15)
  %26 = or i32 %24, %25
  %27 = call i32 @SOR_LANE_PREEMPHASIS_LANE1(i32 15)
  %28 = or i32 %26, %27
  %29 = call i32 @SOR_LANE_PREEMPHASIS_LANE0(i32 15)
  %30 = or i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SOR_LANE_PREEMPHASIS0, align 4
  %34 = call i32 @tegra_sor_writel(%struct.tegra_sor* %31, i32 %32, i32 %33)
  %35 = call i32 @SOR_LANE_POSTCURSOR_LANE3(i32 0)
  %36 = call i32 @SOR_LANE_POSTCURSOR_LANE2(i32 0)
  %37 = or i32 %35, %36
  %38 = call i32 @SOR_LANE_POSTCURSOR_LANE1(i32 0)
  %39 = or i32 %37, %38
  %40 = call i32 @SOR_LANE_POSTCURSOR_LANE0(i32 0)
  %41 = or i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SOR_LANE_POSTCURSOR0, align 4
  %45 = call i32 @tegra_sor_writel(%struct.tegra_sor* %42, i32 %43, i32 %44)
  %46 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %47 = load i32, i32* @SOR_LVDS, align 4
  %48 = call i32 @tegra_sor_writel(%struct.tegra_sor* %46, i32 0, i32 %47)
  %49 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %50 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @tegra_sor_readl(%struct.tegra_sor* %49, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @SOR_DP_PADCTL_TX_PU_ENABLE, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* @SOR_DP_PADCTL_TX_PU_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = call i32 @SOR_DP_PADCTL_TX_PU(i32 2)
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %71 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @tegra_sor_writel(%struct.tegra_sor* %68, i32 %69, i32 %76)
  %78 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %79 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %80 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @tegra_sor_readl(%struct.tegra_sor* %78, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* @SOR_DP_PADCTL_CM_TXD_3, align 4
  %88 = load i32, i32* @SOR_DP_PADCTL_CM_TXD_2, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @SOR_DP_PADCTL_CM_TXD_1, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @SOR_DP_PADCTL_CM_TXD_0, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  %96 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %99 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @tegra_sor_writel(%struct.tegra_sor* %96, i32 %97, i32 %104)
  %106 = call i32 @usleep_range(i32 10, i32 100)
  %107 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %108 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %109 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @tegra_sor_readl(%struct.tegra_sor* %107, i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* @SOR_DP_PADCTL_CM_TXD_3, align 4
  %117 = load i32, i32* @SOR_DP_PADCTL_CM_TXD_2, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @SOR_DP_PADCTL_CM_TXD_1, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @SOR_DP_PADCTL_CM_TXD_0, align 4
  %122 = or i32 %120, %121
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %8, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %8, align 4
  %126 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %129 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %128, i32 0, i32 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @tegra_sor_writel(%struct.tegra_sor* %126, i32 %127, i32 %134)
  %136 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %137 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @DP_SET_ANSI_8B10B, align 4
  %140 = call i32 @drm_dp_aux_prepare(i32 %138, i32 %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %2
  %144 = load i32, i32* %9, align 4
  store i32 %144, i32* %3, align 4
  br label %279

145:                                              ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %164, %145
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.drm_dp_link*, %struct.drm_dp_link** %5, align 8
  %149 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp ult i32 %147, %150
  br i1 %151, label %152, label %167

152:                                              ; preds = %146
  %153 = load i64, i64* @SOR_DP_TPG_CHANNEL_CODING, align 8
  %154 = load i64, i64* @SOR_DP_TPG_SCRAMBLER_NONE, align 8
  %155 = or i64 %153, %154
  %156 = load i64, i64* @SOR_DP_TPG_PATTERN_TRAIN1, align 8
  %157 = or i64 %155, %156
  store i64 %157, i64* %10, align 8
  %158 = load i32, i32* %8, align 4
  %159 = shl i32 %158, 8
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* %10, align 8
  %162 = or i64 %160, %161
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %152
  %165 = load i32, i32* %6, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %146

167:                                              ; preds = %146
  %168 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @SOR_DP_TPG, align 4
  %171 = call i32 @tegra_sor_writel(%struct.tegra_sor* %168, i32 %169, i32 %170)
  %172 = load i32, i32* @DP_TRAINING_PATTERN_1, align 4
  store i32 %172, i32* %7, align 4
  %173 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %174 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.drm_dp_link*, %struct.drm_dp_link** %5, align 8
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @drm_dp_aux_train(i32 %175, %struct.drm_dp_link* %176, i32 %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %167
  %182 = load i32, i32* %9, align 4
  store i32 %182, i32* %3, align 4
  br label %279

183:                                              ; preds = %167
  %184 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %185 = load i32, i32* @SOR_DP_SPARE0, align 4
  %186 = call i32 @tegra_sor_readl(%struct.tegra_sor* %184, i32 %185)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* @SOR_DP_SPARE_SEQ_ENABLE, align 4
  %188 = load i32, i32* %8, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* @SOR_DP_SPARE_PANEL_INTERNAL, align 4
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %8, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* @SOR_DP_SPARE_MACRO_SOR_CLK, align 4
  %195 = load i32, i32* %8, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %8, align 4
  %197 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @SOR_DP_SPARE0, align 4
  %200 = call i32 @tegra_sor_writel(%struct.tegra_sor* %197, i32 %198, i32 %199)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %201

201:                                              ; preds = %219, %183
  %202 = load i32, i32* %6, align 4
  %203 = load %struct.drm_dp_link*, %struct.drm_dp_link** %5, align 8
  %204 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp ult i32 %202, %205
  br i1 %206, label %207, label %222

207:                                              ; preds = %201
  %208 = load i64, i64* @SOR_DP_TPG_CHANNEL_CODING, align 8
  %209 = load i64, i64* @SOR_DP_TPG_SCRAMBLER_NONE, align 8
  %210 = or i64 %208, %209
  %211 = load i64, i64* @SOR_DP_TPG_PATTERN_TRAIN2, align 8
  %212 = or i64 %210, %211
  store i64 %212, i64* %11, align 8
  %213 = load i32, i32* %8, align 4
  %214 = shl i32 %213, 8
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* %11, align 8
  %217 = or i64 %215, %216
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %8, align 4
  br label %219

219:                                              ; preds = %207
  %220 = load i32, i32* %6, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %6, align 4
  br label %201

222:                                              ; preds = %201
  %223 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @SOR_DP_TPG, align 4
  %226 = call i32 @tegra_sor_writel(%struct.tegra_sor* %223, i32 %224, i32 %225)
  %227 = load i32, i32* @DP_LINK_SCRAMBLING_DISABLE, align 4
  %228 = load i32, i32* @DP_TRAINING_PATTERN_2, align 4
  %229 = or i32 %227, %228
  store i32 %229, i32* %7, align 4
  %230 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %231 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.drm_dp_link*, %struct.drm_dp_link** %5, align 8
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @drm_dp_aux_train(i32 %232, %struct.drm_dp_link* %233, i32 %234)
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* %9, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %222
  %239 = load i32, i32* %9, align 4
  store i32 %239, i32* %3, align 4
  br label %279

240:                                              ; preds = %222
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %241

241:                                              ; preds = %259, %240
  %242 = load i32, i32* %6, align 4
  %243 = load %struct.drm_dp_link*, %struct.drm_dp_link** %5, align 8
  %244 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp ult i32 %242, %245
  br i1 %246, label %247, label %262

247:                                              ; preds = %241
  %248 = load i64, i64* @SOR_DP_TPG_CHANNEL_CODING, align 8
  %249 = load i64, i64* @SOR_DP_TPG_SCRAMBLER_GALIOS, align 8
  %250 = or i64 %248, %249
  %251 = load i64, i64* @SOR_DP_TPG_PATTERN_NONE, align 8
  %252 = or i64 %250, %251
  store i64 %252, i64* %12, align 8
  %253 = load i32, i32* %8, align 4
  %254 = shl i32 %253, 8
  %255 = sext i32 %254 to i64
  %256 = load i64, i64* %12, align 8
  %257 = or i64 %255, %256
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %8, align 4
  br label %259

259:                                              ; preds = %247
  %260 = load i32, i32* %6, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %6, align 4
  br label %241

262:                                              ; preds = %241
  %263 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* @SOR_DP_TPG, align 4
  %266 = call i32 @tegra_sor_writel(%struct.tegra_sor* %263, i32 %264, i32 %265)
  %267 = load i32, i32* @DP_TRAINING_PATTERN_DISABLE, align 4
  store i32 %267, i32* %7, align 4
  %268 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %269 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.drm_dp_link*, %struct.drm_dp_link** %5, align 8
  %272 = load i32, i32* %7, align 4
  %273 = call i32 @drm_dp_aux_train(i32 %270, %struct.drm_dp_link* %271, i32 %272)
  store i32 %273, i32* %9, align 4
  %274 = load i32, i32* %9, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %262
  %277 = load i32, i32* %9, align 4
  store i32 %277, i32* %3, align 4
  br label %279

278:                                              ; preds = %262
  store i32 0, i32* %3, align 4
  br label %279

279:                                              ; preds = %278, %276, %238, %181, %143
  %280 = load i32, i32* %3, align 4
  ret i32 %280
}

declare dso_local i32 @SOR_LANE_DRIVE_CURRENT_LANE3(i32) #1

declare dso_local i32 @SOR_LANE_DRIVE_CURRENT_LANE2(i32) #1

declare dso_local i32 @SOR_LANE_DRIVE_CURRENT_LANE1(i32) #1

declare dso_local i32 @SOR_LANE_DRIVE_CURRENT_LANE0(i32) #1

declare dso_local i32 @tegra_sor_writel(%struct.tegra_sor*, i32, i32) #1

declare dso_local i32 @SOR_LANE_PREEMPHASIS_LANE3(i32) #1

declare dso_local i32 @SOR_LANE_PREEMPHASIS_LANE2(i32) #1

declare dso_local i32 @SOR_LANE_PREEMPHASIS_LANE1(i32) #1

declare dso_local i32 @SOR_LANE_PREEMPHASIS_LANE0(i32) #1

declare dso_local i32 @SOR_LANE_POSTCURSOR_LANE3(i32) #1

declare dso_local i32 @SOR_LANE_POSTCURSOR_LANE2(i32) #1

declare dso_local i32 @SOR_LANE_POSTCURSOR_LANE1(i32) #1

declare dso_local i32 @SOR_LANE_POSTCURSOR_LANE0(i32) #1

declare dso_local i32 @tegra_sor_readl(%struct.tegra_sor*, i32) #1

declare dso_local i32 @SOR_DP_PADCTL_TX_PU(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @drm_dp_aux_prepare(i32, i32) #1

declare dso_local i32 @drm_dp_aux_train(i32, %struct.drm_dp_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
