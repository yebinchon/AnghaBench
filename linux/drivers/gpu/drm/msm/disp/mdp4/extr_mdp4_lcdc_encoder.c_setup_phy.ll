; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lcdc_encoder.c_setup_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lcdc_encoder.c_setup_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mdp4_kms = type { i32 }

@MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE3_EN = common dso_local global i32 0, align 4
@MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE2_EN = common dso_local global i32 0, align 4
@MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE1_EN = common dso_local global i32 0, align 4
@MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE0_EN = common dso_local global i32 0, align 4
@MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE3_EN = common dso_local global i32 0, align 4
@MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE2_EN = common dso_local global i32 0, align 4
@MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE1_EN = common dso_local global i32 0, align 4
@MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE0_EN = common dso_local global i32 0, align 4
@MDP4_LCDC_LVDS_INTF_CTL_RGB_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unknown bpp: %d\0A\00", align 1
@MDP4_LVDS_PHY_CFG0_CHANNEL0 = common dso_local global i32 0, align 4
@MDP4_LCDC_LVDS_INTF_CTL_CH1_CLK_LANE_EN = common dso_local global i32 0, align 4
@MDP4_LCDC_LVDS_INTF_CTL_MODE_SEL = common dso_local global i32 0, align 4
@MDP4_LVDS_PHY_CFG0_CHANNEL1 = common dso_local global i32 0, align 4
@MDP4_LCDC_LVDS_INTF_CTL_CH2_CLK_LANE_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unknown # of channels: %d\0A\00", align 1
@MDP4_LCDC_LVDS_INTF_CTL_CH_SWAP = common dso_local global i32 0, align 4
@MDP4_LCDC_LVDS_INTF_CTL_ENABLE = common dso_local global i32 0, align 4
@REG_MDP4_LVDS_PHY_CFG0 = common dso_local global i32 0, align 4
@REG_MDP4_LCDC_LVDS_INTF_CTL = common dso_local global i32 0, align 4
@REG_MDP4_LVDS_PHY_CFG2 = common dso_local global i32 0, align 4
@MDP4_LVDS_PHY_CFG0_SERIALIZATION_ENBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @setup_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_phy(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.mdp4_kms*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %3, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %15 = call %struct.drm_connector* @get_connector(%struct.drm_encoder* %14)
  store %struct.drm_connector* %15, %struct.drm_connector** %4, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %17 = call %struct.mdp4_kms* @get_kms(%struct.drm_encoder* %16)
  store %struct.mdp4_kms* %17, %struct.mdp4_kms** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %19 = icmp ne %struct.drm_connector* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %280

21:                                               ; preds = %1
  %22 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 3, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i32 18, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %21
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %219 [
    i32 24, label %32
    i32 18, label %136
  ]

32:                                               ; preds = %30
  %33 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %34 = call i32 @REG_MDP4_LCDC_LVDS_MUX_CTL_3_TO_0(i32 0)
  %35 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT0(i32 8)
  %36 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT1(i32 5)
  %37 = or i32 %35, %36
  %38 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT2(i32 4)
  %39 = or i32 %37, %38
  %40 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT3(i32 3)
  %41 = or i32 %39, %40
  %42 = call i32 @mdp4_write(%struct.mdp4_kms* %33, i32 %34, i32 %41)
  %43 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %44 = call i32 @REG_MDP4_LCDC_LVDS_MUX_CTL_6_TO_4(i32 0)
  %45 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT4(i32 2)
  %46 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT5(i32 1)
  %47 = or i32 %45, %46
  %48 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT6(i32 0)
  %49 = or i32 %47, %48
  %50 = call i32 @mdp4_write(%struct.mdp4_kms* %43, i32 %44, i32 %49)
  %51 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %52 = call i32 @REG_MDP4_LCDC_LVDS_MUX_CTL_3_TO_0(i32 1)
  %53 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT0(i32 17)
  %54 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT1(i32 16)
  %55 = or i32 %53, %54
  %56 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT2(i32 13)
  %57 = or i32 %55, %56
  %58 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT3(i32 12)
  %59 = or i32 %57, %58
  %60 = call i32 @mdp4_write(%struct.mdp4_kms* %51, i32 %52, i32 %59)
  %61 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %62 = call i32 @REG_MDP4_LCDC_LVDS_MUX_CTL_6_TO_4(i32 1)
  %63 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT4(i32 11)
  %64 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT5(i32 10)
  %65 = or i32 %63, %64
  %66 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT6(i32 9)
  %67 = or i32 %65, %66
  %68 = call i32 @mdp4_write(%struct.mdp4_kms* %61, i32 %62, i32 %67)
  %69 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %70 = call i32 @REG_MDP4_LCDC_LVDS_MUX_CTL_3_TO_0(i32 2)
  %71 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT0(i32 26)
  %72 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT1(i32 25)
  %73 = or i32 %71, %72
  %74 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT2(i32 24)
  %75 = or i32 %73, %74
  %76 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT3(i32 21)
  %77 = or i32 %75, %76
  %78 = call i32 @mdp4_write(%struct.mdp4_kms* %69, i32 %70, i32 %77)
  %79 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %80 = call i32 @REG_MDP4_LCDC_LVDS_MUX_CTL_6_TO_4(i32 2)
  %81 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT4(i32 20)
  %82 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT5(i32 19)
  %83 = or i32 %81, %82
  %84 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT6(i32 18)
  %85 = or i32 %83, %84
  %86 = call i32 @mdp4_write(%struct.mdp4_kms* %79, i32 %80, i32 %85)
  %87 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %88 = call i32 @REG_MDP4_LCDC_LVDS_MUX_CTL_3_TO_0(i32 3)
  %89 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT0(i32 27)
  %90 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT1(i32 23)
  %91 = or i32 %89, %90
  %92 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT2(i32 22)
  %93 = or i32 %91, %92
  %94 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT3(i32 15)
  %95 = or i32 %93, %94
  %96 = call i32 @mdp4_write(%struct.mdp4_kms* %87, i32 %88, i32 %95)
  %97 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %98 = call i32 @REG_MDP4_LCDC_LVDS_MUX_CTL_6_TO_4(i32 3)
  %99 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT4(i32 14)
  %100 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT5(i32 7)
  %101 = or i32 %99, %100
  %102 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT6(i32 6)
  %103 = or i32 %101, %102
  %104 = call i32 @mdp4_write(%struct.mdp4_kms* %97, i32 %98, i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %125

107:                                              ; preds = %32
  %108 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE3_EN, align 4
  %109 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE2_EN, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE1_EN, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE0_EN, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE3_EN, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE2_EN, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE1_EN, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE0_EN, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* %6, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %6, align 4
  br label %135

125:                                              ; preds = %32
  %126 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE3_EN, align 4
  %127 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE2_EN, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE1_EN, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE0_EN, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* %6, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %125, %107
  br label %225

136:                                              ; preds = %30
  %137 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %138 = call i32 @REG_MDP4_LCDC_LVDS_MUX_CTL_3_TO_0(i32 0)
  %139 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT0(i32 10)
  %140 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT1(i32 7)
  %141 = or i32 %139, %140
  %142 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT2(i32 6)
  %143 = or i32 %141, %142
  %144 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT3(i32 5)
  %145 = or i32 %143, %144
  %146 = call i32 @mdp4_write(%struct.mdp4_kms* %137, i32 %138, i32 %145)
  %147 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %148 = call i32 @REG_MDP4_LCDC_LVDS_MUX_CTL_6_TO_4(i32 0)
  %149 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT4(i32 4)
  %150 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT5(i32 3)
  %151 = or i32 %149, %150
  %152 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT6(i32 2)
  %153 = or i32 %151, %152
  %154 = call i32 @mdp4_write(%struct.mdp4_kms* %147, i32 %148, i32 %153)
  %155 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %156 = call i32 @REG_MDP4_LCDC_LVDS_MUX_CTL_3_TO_0(i32 1)
  %157 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT0(i32 19)
  %158 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT1(i32 18)
  %159 = or i32 %157, %158
  %160 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT2(i32 15)
  %161 = or i32 %159, %160
  %162 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT3(i32 14)
  %163 = or i32 %161, %162
  %164 = call i32 @mdp4_write(%struct.mdp4_kms* %155, i32 %156, i32 %163)
  %165 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %166 = call i32 @REG_MDP4_LCDC_LVDS_MUX_CTL_6_TO_4(i32 1)
  %167 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT4(i32 13)
  %168 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT5(i32 12)
  %169 = or i32 %167, %168
  %170 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT6(i32 11)
  %171 = or i32 %169, %170
  %172 = call i32 @mdp4_write(%struct.mdp4_kms* %165, i32 %166, i32 %171)
  %173 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %174 = call i32 @REG_MDP4_LCDC_LVDS_MUX_CTL_3_TO_0(i32 2)
  %175 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT0(i32 26)
  %176 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT1(i32 25)
  %177 = or i32 %175, %176
  %178 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT2(i32 24)
  %179 = or i32 %177, %178
  %180 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT3(i32 23)
  %181 = or i32 %179, %180
  %182 = call i32 @mdp4_write(%struct.mdp4_kms* %173, i32 %174, i32 %181)
  %183 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %184 = call i32 @REG_MDP4_LCDC_LVDS_MUX_CTL_6_TO_4(i32 2)
  %185 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT4(i32 22)
  %186 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT5(i32 21)
  %187 = or i32 %185, %186
  %188 = call i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT6(i32 20)
  %189 = or i32 %187, %188
  %190 = call i32 @mdp4_write(%struct.mdp4_kms* %183, i32 %184, i32 %189)
  %191 = load i32, i32* %9, align 4
  %192 = icmp eq i32 %191, 2
  br i1 %192, label %193, label %207

193:                                              ; preds = %136
  %194 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE2_EN, align 4
  %195 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE1_EN, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH2_DATA_LANE0_EN, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE2_EN, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE1_EN, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE0_EN, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* %6, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %6, align 4
  br label %215

207:                                              ; preds = %136
  %208 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE2_EN, align 4
  %209 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE1_EN, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH1_DATA_LANE0_EN, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* %6, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %6, align 4
  br label %215

215:                                              ; preds = %207, %193
  %216 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_RGB_OUT, align 4
  %217 = load i32, i32* %6, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %6, align 4
  br label %225

219:                                              ; preds = %30
  %220 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %221 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @DRM_DEV_ERROR(i32 %222, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %223)
  br label %280

225:                                              ; preds = %215, %135
  %226 = load i32, i32* %9, align 4
  switch i32 %226, label %243 [
    i32 1, label %227
    i32 2, label %234
  ]

227:                                              ; preds = %225
  %228 = load i32, i32* @MDP4_LVDS_PHY_CFG0_CHANNEL0, align 4
  store i32 %228, i32* %7, align 4
  %229 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH1_CLK_LANE_EN, align 4
  %230 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_MODE_SEL, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* %6, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %6, align 4
  br label %249

234:                                              ; preds = %225
  %235 = load i32, i32* @MDP4_LVDS_PHY_CFG0_CHANNEL0, align 4
  %236 = load i32, i32* @MDP4_LVDS_PHY_CFG0_CHANNEL1, align 4
  %237 = or i32 %235, %236
  store i32 %237, i32* %7, align 4
  %238 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH2_CLK_LANE_EN, align 4
  %239 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH1_CLK_LANE_EN, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* %6, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %6, align 4
  br label %249

243:                                              ; preds = %225
  %244 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %245 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %9, align 4
  %248 = call i32 @DRM_DEV_ERROR(i32 %246, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %247)
  br label %280

249:                                              ; preds = %234, %227
  %250 = load i32, i32* %10, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %249
  %253 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_CH_SWAP, align 4
  %254 = load i32, i32* %6, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %6, align 4
  br label %256

256:                                              ; preds = %252, %249
  %257 = load i32, i32* @MDP4_LCDC_LVDS_INTF_CTL_ENABLE, align 4
  %258 = load i32, i32* %6, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %6, align 4
  %260 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %261 = load i32, i32* @REG_MDP4_LVDS_PHY_CFG0, align 4
  %262 = load i32, i32* %7, align 4
  %263 = call i32 @mdp4_write(%struct.mdp4_kms* %260, i32 %261, i32 %262)
  %264 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %265 = load i32, i32* @REG_MDP4_LCDC_LVDS_INTF_CTL, align 4
  %266 = load i32, i32* %6, align 4
  %267 = call i32 @mdp4_write(%struct.mdp4_kms* %264, i32 %265, i32 %266)
  %268 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %269 = load i32, i32* @REG_MDP4_LVDS_PHY_CFG2, align 4
  %270 = call i32 @mdp4_write(%struct.mdp4_kms* %268, i32 %269, i32 48)
  %271 = call i32 (...) @mb()
  %272 = call i32 @udelay(i32 1)
  %273 = load i32, i32* @MDP4_LVDS_PHY_CFG0_SERIALIZATION_ENBLE, align 4
  %274 = load i32, i32* %7, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %7, align 4
  %276 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %277 = load i32, i32* @REG_MDP4_LVDS_PHY_CFG0, align 4
  %278 = load i32, i32* %7, align 4
  %279 = call i32 @mdp4_write(%struct.mdp4_kms* %276, i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %256, %243, %219, %20
  ret void
}

declare dso_local %struct.drm_connector* @get_connector(%struct.drm_encoder*) #1

declare dso_local %struct.mdp4_kms* @get_kms(%struct.drm_encoder*) #1

declare dso_local i32 @mdp4_write(%struct.mdp4_kms*, i32, i32) #1

declare dso_local i32 @REG_MDP4_LCDC_LVDS_MUX_CTL_3_TO_0(i32) #1

declare dso_local i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT0(i32) #1

declare dso_local i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT1(i32) #1

declare dso_local i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT2(i32) #1

declare dso_local i32 @MDP4_LCDC_LVDS_MUX_CTL_3_TO_0_BIT3(i32) #1

declare dso_local i32 @REG_MDP4_LCDC_LVDS_MUX_CTL_6_TO_4(i32) #1

declare dso_local i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT4(i32) #1

declare dso_local i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT5(i32) #1

declare dso_local i32 @MDP4_LCDC_LVDS_MUX_CTL_6_TO_4_BIT6(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
