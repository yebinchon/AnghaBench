; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i64 }
%struct.i2c_client = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_board_info = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, %struct.tda998x_priv*, %struct.device* }
%struct.tda998x_priv = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i64*, i32, %struct.TYPE_4__, i32, i32, %struct.i2c_client*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tda998x_edid_delay_done = common dso_local global i32 0, align 4
@tda998x_detect_work = common dso_local global i32 0, align 4
@REG_CEC_ENAMODS = common dso_local global i32 0, align 4
@CEC_ENAMODS_EN_RXSENS = common dso_local global i32 0, align 4
@CEC_ENAMODS_EN_HDMI = common dso_local global i32 0, align 4
@REG_VERSION_LSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to read version: %d\0A\00", align 1
@REG_VERSION_MSB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"found TDA9989 n2\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"found TDA19989\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"found TDA19989 n2\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"found TDA19988\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"found unsupported device: %04x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@REG_DDC_DISABLE = common dso_local global i32 0, align 4
@REG_TX3 = common dso_local global i32 0, align 4
@REG_I2C_MASTER = common dso_local global i32 0, align 4
@I2C_MASTER_DIS_MM = common dso_local global i32 0, align 4
@REG_CEC_FRO_IM_CLK_CTRL = common dso_local global i32 0, align 4
@CEC_FRO_IM_CLK_CTRL_GHOST_DIS = common dso_local global i32 0, align 4
@CEC_FRO_IM_CLK_CTRL_IMCLK_SEL = common dso_local global i32 0, align 4
@REG_CEC_RXSHPDINTENA = common dso_local global i32 0, align 4
@REG_CEC_RXSHPDINT = common dso_local global i32 0, align 4
@REG_INT_FLAGS_0 = common dso_local global i32 0, align 4
@REG_INT_FLAGS_1 = common dso_local global i32 0, align 4
@REG_INT_FLAGS_2 = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i64 0, align 8
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@tda998x_irq_thread = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"tda998x\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to request IRQ#%u: %d\0A\00", align 1
@CEC_RXSHPDLEV_HPD = common dso_local global i32 0, align 4
@tda998x_cec_hook_init = common dso_local global i32 0, align 4
@tda998x_cec_hook_exit = common dso_local global i32 0, align 4
@tda998x_cec_hook_open = common dso_local global i32 0, align 4
@tda998x_cec_hook_release = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"tda9950\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@INT_FLAGS_2_EDID_BLK_RD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"video-ports\00", align 1
@AUDIO_ROUTE_I2S = common dso_local global i64 0, align 8
@AUDIO_ROUTE_SPDIF = common dso_local global i64 0, align 8
@tda998x_bridge_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @tda998x_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda998x_create(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.i2c_board_info, align 8
  %7 = alloca %struct.tda998x_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %4, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %5, align 8
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.tda998x_priv* @devm_kzalloc(%struct.device* %19, i32 144, i32 %20)
  store %struct.tda998x_priv* %21, %struct.tda998x_priv** %7, align 8
  %22 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %23 = icmp ne %struct.tda998x_priv* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %372

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %30 = call i32 @dev_set_drvdata(%struct.device* %28, %struct.tda998x_priv* %29)
  %31 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %32 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %31, i32 0, i32 18
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %35 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %34, i32 0, i32 17
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %38 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %37, i32 0, i32 16
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %41 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %45 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %44, i32 0, i32 15
  %46 = call i32 @init_waitqueue_head(i32* %45)
  %47 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %48 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %47, i32 0, i32 14
  %49 = load i32, i32* @tda998x_edid_delay_done, align 4
  %50 = call i32 @timer_setup(i32* %48, i32 %49, i32 0)
  %51 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %52 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %51, i32 0, i32 13
  %53 = load i32, i32* @tda998x_detect_work, align 4
  %54 = call i32 @INIT_WORK(i32* %52, i32 %53)
  %55 = call i32 @VIP_CNTRL_0_SWAP_A(i32 2)
  %56 = call i32 @VIP_CNTRL_0_SWAP_B(i32 3)
  %57 = or i32 %55, %56
  %58 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %59 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = call i32 @VIP_CNTRL_1_SWAP_C(i32 0)
  %61 = call i32 @VIP_CNTRL_1_SWAP_D(i32 1)
  %62 = or i32 %60, %61
  %63 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %64 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = call i32 @VIP_CNTRL_2_SWAP_E(i32 4)
  %66 = call i32 @VIP_CNTRL_2_SWAP_F(i32 5)
  %67 = or i32 %65, %66
  %68 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %69 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 3
  %74 = add nsw i32 52, %73
  %75 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %76 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %78 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %77, i32 0, i32 4
  store i32 255, i32* %78, align 8
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %81 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %80, i32 0, i32 12
  store %struct.i2c_client* %79, %struct.i2c_client** %81, align 8
  %82 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %83 = load i32, i32* @REG_CEC_ENAMODS, align 4
  %84 = load i32, i32* @CEC_ENAMODS_EN_RXSENS, align 4
  %85 = load i32, i32* @CEC_ENAMODS_EN_HDMI, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @cec_write(%struct.tda998x_priv* %82, i32 %83, i32 %86)
  %88 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %89 = call i32 @tda998x_reset(%struct.tda998x_priv* %88)
  %90 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %91 = load i32, i32* @REG_VERSION_LSB, align 4
  %92 = call i32 @reg_read(%struct.tda998x_priv* %90, i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %27
  %96 = load %struct.device*, %struct.device** %3, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %2, align 4
  br label %372

100:                                              ; preds = %27
  %101 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %102 = load i32, i32* @REG_VERSION_MSB, align 4
  %103 = call i32 @reg_read(%struct.tda998x_priv* %101, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.device*, %struct.device** %3, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %2, align 4
  br label %372

111:                                              ; preds = %100
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = shl i32 %113, 8
  %115 = or i32 %112, %114
  %116 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %117 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %119 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, -49
  store i32 %121, i32* %119, align 4
  %122 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %123 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  switch i32 %124, label %137 [
    i32 128, label %125
    i32 130, label %128
    i32 129, label %131
    i32 131, label %134
  ]

125:                                              ; preds = %111
  %126 = load %struct.device*, %struct.device** %3, align 8
  %127 = call i32 @dev_info(%struct.device* %126, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %145

128:                                              ; preds = %111
  %129 = load %struct.device*, %struct.device** %3, align 8
  %130 = call i32 @dev_info(%struct.device* %129, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %145

131:                                              ; preds = %111
  %132 = load %struct.device*, %struct.device** %3, align 8
  %133 = call i32 @dev_info(%struct.device* %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %145

134:                                              ; preds = %111
  %135 = load %struct.device*, %struct.device** %3, align 8
  %136 = call i32 @dev_info(%struct.device* %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %145

137:                                              ; preds = %111
  %138 = load %struct.device*, %struct.device** %3, align 8
  %139 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %140 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %138, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @ENXIO, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %2, align 4
  br label %372

145:                                              ; preds = %134, %131, %128, %125
  %146 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %147 = load i32, i32* @REG_DDC_DISABLE, align 4
  %148 = call i32 @reg_write(%struct.tda998x_priv* %146, i32 %147, i32 0)
  %149 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %150 = load i32, i32* @REG_TX3, align 4
  %151 = call i32 @reg_write(%struct.tda998x_priv* %149, i32 %150, i32 39)
  %152 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %153 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 130
  br i1 %155, label %156, label %161

156:                                              ; preds = %145
  %157 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %158 = load i32, i32* @REG_I2C_MASTER, align 4
  %159 = load i32, i32* @I2C_MASTER_DIS_MM, align 4
  %160 = call i32 @reg_set(%struct.tda998x_priv* %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %156, %145
  %162 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %163 = load i32, i32* @REG_CEC_FRO_IM_CLK_CTRL, align 4
  %164 = load i32, i32* @CEC_FRO_IM_CLK_CTRL_GHOST_DIS, align 4
  %165 = load i32, i32* @CEC_FRO_IM_CLK_CTRL_IMCLK_SEL, align 4
  %166 = or i32 %164, %165
  %167 = call i32 @cec_write(%struct.tda998x_priv* %162, i32 %163, i32 %166)
  %168 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %169 = load i32, i32* @REG_CEC_RXSHPDINTENA, align 4
  %170 = call i32 @cec_write(%struct.tda998x_priv* %168, i32 %169, i32 0)
  %171 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %172 = load i32, i32* @REG_CEC_RXSHPDINT, align 4
  %173 = call i32 @cec_read(%struct.tda998x_priv* %171, i32 %172)
  %174 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %175 = load i32, i32* @REG_INT_FLAGS_0, align 4
  %176 = call i32 @reg_read(%struct.tda998x_priv* %174, i32 %175)
  %177 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %178 = load i32, i32* @REG_INT_FLAGS_1, align 4
  %179 = call i32 @reg_read(%struct.tda998x_priv* %177, i32 %178)
  %180 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %181 = load i32, i32* @REG_INT_FLAGS_2, align 4
  %182 = call i32 @reg_read(%struct.tda998x_priv* %180, i32 %181)
  %183 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %184 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %226

187:                                              ; preds = %161
  %188 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %189 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %188, i32 0, i32 11
  %190 = call i32 @init_waitqueue_head(i32* %189)
  %191 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %192 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @irq_get_irq_data(i32 %193)
  %195 = call i64 @irqd_get_trigger_type(i32 %194)
  store i64 %195, i64* %12, align 8
  %196 = load i64, i64* %12, align 8
  %197 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %198 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %197, i32 0, i32 9
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  store i64 %196, i64* %199, align 8
  %200 = load i64, i64* @IRQF_SHARED, align 8
  %201 = load i64, i64* @IRQF_ONESHOT, align 8
  %202 = or i64 %200, %201
  %203 = load i64, i64* %12, align 8
  %204 = or i64 %203, %202
  store i64 %204, i64* %12, align 8
  %205 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %206 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @tda998x_irq_thread, align 4
  %209 = load i64, i64* %12, align 8
  %210 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %211 = call i32 @request_threaded_irq(i32 %207, i32* null, i32 %208, i64 %209, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.tda998x_priv* %210)
  store i32 %211, i32* %11, align 4
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %187
  %215 = load %struct.device*, %struct.device** %3, align 8
  %216 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %217 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %11, align 4
  %220 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %215, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %218, i32 %219)
  br label %370

221:                                              ; preds = %187
  %222 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %223 = load i32, i32* @REG_CEC_RXSHPDINTENA, align 4
  %224 = load i32, i32* @CEC_RXSHPDLEV_HPD, align 4
  %225 = call i32 @cec_write(%struct.tda998x_priv* %222, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %221, %161
  %227 = load %struct.device*, %struct.device** %3, align 8
  %228 = call i32 @cec_notifier_get(%struct.device* %227)
  %229 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %230 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %229, i32 0, i32 10
  store i32 %228, i32* %230, align 8
  %231 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %232 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %231, i32 0, i32 10
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %226
  %236 = load i32, i32* @ENOMEM, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %11, align 4
  br label %367

238:                                              ; preds = %226
  %239 = load %struct.device*, %struct.device** %3, align 8
  %240 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %241 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %240, i32 0, i32 9
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 6
  store %struct.device* %239, %struct.device** %242, align 8
  %243 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %244 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %245 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %244, i32 0, i32 9
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 5
  store %struct.tda998x_priv* %243, %struct.tda998x_priv** %246, align 8
  %247 = load i32, i32* @tda998x_cec_hook_init, align 4
  %248 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %249 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %248, i32 0, i32 9
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 4
  store i32 %247, i32* %250, align 4
  %251 = load i32, i32* @tda998x_cec_hook_exit, align 4
  %252 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %253 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %252, i32 0, i32 9
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 3
  store i32 %251, i32* %254, align 8
  %255 = load i32, i32* @tda998x_cec_hook_open, align 4
  %256 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %257 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %256, i32 0, i32 9
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 2
  store i32 %255, i32* %258, align 4
  %259 = load i32, i32* @tda998x_cec_hook_release, align 4
  %260 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %261 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %260, i32 0, i32 9
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 1
  store i32 %259, i32* %262, align 8
  %263 = call i32 @memset(%struct.i2c_board_info* %6, i32 0, i32 24)
  %264 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %6, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @strlcpy(i32 %265, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %267 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %268 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %6, i32 0, i32 0
  store i32 %269, i32* %270, align 8
  %271 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %272 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %271, i32 0, i32 9
  %273 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %6, i32 0, i32 2
  store %struct.TYPE_4__* %272, %struct.TYPE_4__** %273, align 8
  %274 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %275 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %6, i32 0, i32 1
  store i32 %276, i32* %277, align 4
  %278 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %279 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @i2c_new_device(i32 %280, %struct.i2c_board_info* %6)
  %282 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %283 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %282, i32 0, i32 8
  store i32 %281, i32* %283, align 8
  %284 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %285 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %284, i32 0, i32 8
  %286 = load i32, i32* %285, align 8
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %238
  %289 = load i32, i32* @ENODEV, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %11, align 4
  br label %367

291:                                              ; preds = %238
  %292 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %293 = load i32, i32* @REG_INT_FLAGS_2, align 4
  %294 = load i32, i32* @INT_FLAGS_2_EDID_BLK_RD, align 4
  %295 = call i32 @reg_set(%struct.tda998x_priv* %292, i32 %293, i32 %294)
  %296 = load %struct.device_node*, %struct.device_node** %5, align 8
  %297 = icmp ne %struct.device_node* %296, null
  br i1 %297, label %298, label %344

298:                                              ; preds = %291
  %299 = load %struct.device_node*, %struct.device_node** %5, align 8
  %300 = call i32 @of_property_read_u32(%struct.device_node* %299, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32* %8)
  store i32 %300, i32* %11, align 4
  %301 = load i32, i32* %11, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %315

303:                                              ; preds = %298
  %304 = load i32, i32* %8, align 4
  %305 = ashr i32 %304, 16
  %306 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %307 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %306, i32 0, i32 0
  store i32 %305, i32* %307, align 8
  %308 = load i32, i32* %8, align 4
  %309 = ashr i32 %308, 8
  %310 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %311 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 4
  %312 = load i32, i32* %8, align 4
  %313 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %314 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %313, i32 0, i32 2
  store i32 %312, i32* %314, align 8
  br label %315

315:                                              ; preds = %303, %298
  %316 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %317 = load %struct.device_node*, %struct.device_node** %5, align 8
  %318 = call i32 @tda998x_get_audio_ports(%struct.tda998x_priv* %316, %struct.device_node* %317)
  store i32 %318, i32* %11, align 4
  %319 = load i32, i32* %11, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %315
  br label %367

322:                                              ; preds = %315
  %323 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %324 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %323, i32 0, i32 7
  %325 = load i64*, i64** %324, align 8
  %326 = load i64, i64* @AUDIO_ROUTE_I2S, align 8
  %327 = getelementptr inbounds i64, i64* %325, i64 %326
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %338, label %330

330:                                              ; preds = %322
  %331 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %332 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %331, i32 0, i32 7
  %333 = load i64*, i64** %332, align 8
  %334 = load i64, i64* @AUDIO_ROUTE_SPDIF, align 8
  %335 = getelementptr inbounds i64, i64* %333, i64 %334
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %330, %322
  %339 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %340 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %341 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %340, i32 0, i32 2
  %342 = call i32 @tda998x_audio_codec_init(%struct.tda998x_priv* %339, %struct.TYPE_5__* %341)
  br label %343

343:                                              ; preds = %338, %330
  br label %360

344:                                              ; preds = %291
  %345 = load %struct.device*, %struct.device** %3, align 8
  %346 = getelementptr inbounds %struct.device, %struct.device* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %359

349:                                              ; preds = %344
  %350 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %351 = load %struct.device*, %struct.device** %3, align 8
  %352 = getelementptr inbounds %struct.device, %struct.device* %351, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = call i32 @tda998x_set_config(%struct.tda998x_priv* %350, i64 %353)
  store i32 %354, i32* %11, align 4
  %355 = load i32, i32* %11, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %349
  br label %367

358:                                              ; preds = %349
  br label %359

359:                                              ; preds = %358, %344
  br label %360

360:                                              ; preds = %359, %343
  %361 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %362 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %361, i32 0, i32 6
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 1
  store i32* @tda998x_bridge_funcs, i32** %363, align 8
  %364 = load %struct.tda998x_priv*, %struct.tda998x_priv** %7, align 8
  %365 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %364, i32 0, i32 6
  %366 = call i32 @drm_bridge_add(%struct.TYPE_6__* %365)
  store i32 0, i32* %2, align 4
  br label %372

367:                                              ; preds = %357, %321, %288, %235
  %368 = load %struct.device*, %struct.device** %3, align 8
  %369 = call i32 @tda998x_destroy(%struct.device* %368)
  br label %370

370:                                              ; preds = %367, %214
  %371 = load i32, i32* %11, align 4
  store i32 %371, i32* %2, align 4
  br label %372

372:                                              ; preds = %370, %360, %137, %106, %95, %24
  %373 = load i32, i32* %2, align 4
  ret i32 %373
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.tda998x_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.tda998x_priv*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @VIP_CNTRL_0_SWAP_A(i32) #1

declare dso_local i32 @VIP_CNTRL_0_SWAP_B(i32) #1

declare dso_local i32 @VIP_CNTRL_1_SWAP_C(i32) #1

declare dso_local i32 @VIP_CNTRL_1_SWAP_D(i32) #1

declare dso_local i32 @VIP_CNTRL_2_SWAP_E(i32) #1

declare dso_local i32 @VIP_CNTRL_2_SWAP_F(i32) #1

declare dso_local i32 @cec_write(%struct.tda998x_priv*, i32, i32) #1

declare dso_local i32 @tda998x_reset(%struct.tda998x_priv*) #1

declare dso_local i32 @reg_read(%struct.tda998x_priv*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @reg_write(%struct.tda998x_priv*, i32, i32) #1

declare dso_local i32 @reg_set(%struct.tda998x_priv*, i32, i32) #1

declare dso_local i32 @cec_read(%struct.tda998x_priv*, i32) #1

declare dso_local i64 @irqd_get_trigger_type(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i64, i8*, %struct.tda998x_priv*) #1

declare dso_local i32 @cec_notifier_get(%struct.device*) #1

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_new_device(i32, %struct.i2c_board_info*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @tda998x_get_audio_ports(%struct.tda998x_priv*, %struct.device_node*) #1

declare dso_local i32 @tda998x_audio_codec_init(%struct.tda998x_priv*, %struct.TYPE_5__*) #1

declare dso_local i32 @tda998x_set_config(%struct.tda998x_priv*, i64) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_6__*) #1

declare dso_local i32 @tda998x_destroy(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
