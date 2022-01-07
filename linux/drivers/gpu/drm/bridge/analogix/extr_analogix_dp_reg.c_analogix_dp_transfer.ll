; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i64, i32 }
%struct.drm_dp_aux_msg = type { i32*, i32, i32, i32, i32 }

@E2BIG = common dso_local global i32 0, align 4
@BUF_CLR = common dso_local global i32 0, align 4
@ANALOGIX_DP_BUFFER_DATA_CTL = common dso_local global i64 0, align 8
@DP_AUX_I2C_MOT = common dso_local global i32 0, align 4
@AUX_TX_COMM_WRITE = common dso_local global i32 0, align 4
@AUX_TX_COMM_I2C_TRANSACTION = common dso_local global i32 0, align 4
@AUX_TX_COMM_MOT = common dso_local global i32 0, align 4
@AUX_TX_COMM_READ = common dso_local global i32 0, align 4
@AUX_TX_COMM_DP_TRANSACTION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ANALOGIX_DP_AUX_CH_CTL_1 = common dso_local global i64 0, align 8
@ANALOGIX_DP_AUX_ADDR_7_0 = common dso_local global i64 0, align 8
@ANALOGIX_DP_AUX_ADDR_15_8 = common dso_local global i64 0, align 8
@ANALOGIX_DP_AUX_ADDR_19_16 = common dso_local global i64 0, align 8
@ANALOGIX_DP_BUF_DATA_0 = common dso_local global i64 0, align 8
@AUX_EN = common dso_local global i32 0, align 4
@ADDR_ONLY = common dso_local global i32 0, align 4
@ANALOGIX_DP_AUX_CH_CTL_2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"AUX CH enable timeout!\0A\00", align 1
@ANALOGIX_DP_INT_STA = common dso_local global i64 0, align 8
@RPLY_RECEIV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"AUX CH cmd reply timeout!\0A\00", align 1
@ANALOGIX_DP_AUX_CH_STA = common dso_local global i64 0, align 8
@AUX_ERR = common dso_local global i32 0, align 4
@AUX_STATUS_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"AUX CH error happened: %#x (%d)\0A\00", align 1
@ANALOGIX_DP_AUX_RX_COMM = common dso_local global i64 0, align 8
@AUX_RX_COMM_AUX_DEFER = common dso_local global i32 0, align 4
@DP_AUX_NATIVE_REPLY_DEFER = common dso_local global i32 0, align 4
@AUX_RX_COMM_I2C_DEFER = common dso_local global i32 0, align 4
@DP_AUX_I2C_REPLY_DEFER = common dso_local global i32 0, align 4
@DP_AUX_I2C_REPLY_ACK = common dso_local global i32 0, align 4
@DP_AUX_NATIVE_REPLY_ACK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @analogix_dp_transfer(%struct.analogix_dp_device* %0, %struct.drm_dp_aux_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.analogix_dp_device*, align 8
  %5 = alloca %struct.drm_dp_aux_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %4, align 8
  store %struct.drm_dp_aux_msg* %1, %struct.drm_dp_aux_msg** %5, align 8
  %12 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %13 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %16 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 16
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @E2BIG, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %387

25:                                               ; preds = %2
  %26 = load i32, i32* @BUF_CLR, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %29 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ANALOGIX_DP_BUFFER_DATA_CTL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %35 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DP_AUX_I2C_MOT, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  switch i32 %39, label %78 [
    i32 130, label %40
    i32 131, label %55
    i32 128, label %70
    i32 129, label %74
  ]

40:                                               ; preds = %25
  %41 = load i32, i32* @AUX_TX_COMM_WRITE, align 4
  %42 = load i32, i32* @AUX_TX_COMM_I2C_TRANSACTION, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %6, align 4
  %44 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %45 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DP_AUX_I2C_MOT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load i32, i32* @AUX_TX_COMM_MOT, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %40
  br label %81

55:                                               ; preds = %25
  %56 = load i32, i32* @AUX_TX_COMM_READ, align 4
  %57 = load i32, i32* @AUX_TX_COMM_I2C_TRANSACTION, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %6, align 4
  %59 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %60 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DP_AUX_I2C_MOT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i32, i32* @AUX_TX_COMM_MOT, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %55
  br label %81

70:                                               ; preds = %25
  %71 = load i32, i32* @AUX_TX_COMM_WRITE, align 4
  %72 = load i32, i32* @AUX_TX_COMM_DP_TRANSACTION, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %6, align 4
  br label %81

74:                                               ; preds = %25
  %75 = load i32, i32* @AUX_TX_COMM_READ, align 4
  %76 = load i32, i32* @AUX_TX_COMM_DP_TRANSACTION, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %6, align 4
  br label %81

78:                                               ; preds = %25
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %387

81:                                               ; preds = %74, %70, %69, %54
  %82 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %83 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @AUX_LENGTH(i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %90 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ANALOGIX_DP_AUX_CH_CTL_1, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %88, i64 %93)
  %95 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %96 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @AUX_ADDR_7_0(i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %101 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ANALOGIX_DP_AUX_ADDR_7_0, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 %99, i64 %104)
  %106 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %107 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @AUX_ADDR_15_8(i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %112 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @ANALOGIX_DP_AUX_ADDR_15_8, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 %110, i64 %115)
  %117 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %118 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @AUX_ADDR_19_16(i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %123 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @ANALOGIX_DP_AUX_ADDR_19_16, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @writel(i32 %121, i64 %126)
  %128 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %129 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 131
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %163, label %133

133:                                              ; preds = %81
  store i32 0, i32* %9, align 4
  br label %134

134:                                              ; preds = %159, %133
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %137 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp ult i32 %135, %138
  br i1 %139, label %140, label %162

140:                                              ; preds = %134
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* %9, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %148 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @ANALOGIX_DP_BUF_DATA_0, align 8
  %151 = add nsw i64 %149, %150
  %152 = load i32, i32* %9, align 4
  %153 = mul i32 4, %152
  %154 = zext i32 %153 to i64
  %155 = add nsw i64 %151, %154
  %156 = call i32 @writel(i32 %146, i64 %155)
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %159

159:                                              ; preds = %140
  %160 = load i32, i32* %9, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %134

162:                                              ; preds = %134
  br label %163

163:                                              ; preds = %162, %81
  %164 = load i32, i32* @AUX_EN, align 4
  store i32 %164, i32* %6, align 4
  %165 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %166 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %167, 1
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load i32, i32* @ADDR_ONLY, align 4
  %171 = load i32, i32* %6, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %169, %163
  %174 = load i32, i32* %6, align 4
  %175 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %176 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @ANALOGIX_DP_AUX_CH_CTL_2, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @writel(i32 %174, i64 %179)
  %181 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %182 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @ANALOGIX_DP_AUX_CH_CTL_2, align 8
  %185 = add nsw i64 %183, %184
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @AUX_EN, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = call i32 @readx_poll_timeout(i32 (i64)* @readl, i64 %185, i32 %186, i32 %192, i32 25, i32 500000)
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %11, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %173
  %197 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %198 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @dev_err(i32 %199, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %382

201:                                              ; preds = %173
  %202 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %203 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @ANALOGIX_DP_INT_STA, align 8
  %206 = add nsw i64 %204, %205
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* @RPLY_RECEIV, align 4
  %210 = and i32 %208, %209
  %211 = call i32 @readx_poll_timeout(i32 (i64)* @readl, i64 %206, i32 %207, i32 %210, i32 10, i32 20000)
  store i32 %211, i32* %11, align 4
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %201
  %215 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %216 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @dev_err(i32 %217, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %382

219:                                              ; preds = %201
  %220 = load i32, i32* @RPLY_RECEIV, align 4
  %221 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %222 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @ANALOGIX_DP_INT_STA, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @writel(i32 %220, i64 %225)
  %227 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %228 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @ANALOGIX_DP_INT_STA, align 8
  %231 = add nsw i64 %229, %230
  %232 = call i32 @readl(i64 %231)
  store i32 %232, i32* %6, align 4
  %233 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %234 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @ANALOGIX_DP_AUX_CH_STA, align 8
  %237 = add nsw i64 %235, %236
  %238 = call i32 @readl(i64 %237)
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* @AUX_ERR, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %219
  %244 = load i32, i32* %7, align 4
  %245 = load i32, i32* @AUX_STATUS_MASK, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %270

248:                                              ; preds = %243, %219
  %249 = load i32, i32* @AUX_ERR, align 4
  %250 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %251 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @ANALOGIX_DP_INT_STA, align 8
  %254 = add nsw i64 %252, %253
  %255 = call i32 @writel(i32 %249, i64 %254)
  %256 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %257 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %7, align 4
  %260 = load i32, i32* @AUX_STATUS_MASK, align 4
  %261 = and i32 %259, %260
  %262 = load i32, i32* %6, align 4
  %263 = load i32, i32* @AUX_ERR, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  %266 = xor i1 %265, true
  %267 = xor i1 %266, true
  %268 = zext i1 %267 to i32
  %269 = call i32 @dev_warn(i32 %258, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %261, i32 %268)
  br label %382

270:                                              ; preds = %243
  %271 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %272 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %273, 131
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %307

276:                                              ; preds = %270
  store i32 0, i32* %9, align 4
  br label %277

277:                                              ; preds = %303, %276
  %278 = load i32, i32* %9, align 4
  %279 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %280 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = icmp ult i32 %278, %281
  br i1 %282, label %283, label %306

283:                                              ; preds = %277
  %284 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %285 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @ANALOGIX_DP_BUF_DATA_0, align 8
  %288 = add nsw i64 %286, %287
  %289 = load i32, i32* %9, align 4
  %290 = mul i32 4, %289
  %291 = zext i32 %290 to i64
  %292 = add nsw i64 %288, %291
  %293 = call i32 @readl(i64 %292)
  store i32 %293, i32* %6, align 4
  %294 = load i32, i32* %6, align 4
  %295 = trunc i32 %294 to i8
  %296 = zext i8 %295 to i32
  %297 = load i32*, i32** %8, align 8
  %298 = load i32, i32* %9, align 4
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  store i32 %296, i32* %300, align 4
  %301 = load i32, i32* %10, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %10, align 4
  br label %303

303:                                              ; preds = %283
  %304 = load i32, i32* %9, align 4
  %305 = add i32 %304, 1
  store i32 %305, i32* %9, align 4
  br label %277

306:                                              ; preds = %277
  br label %307

307:                                              ; preds = %306, %270
  %308 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %309 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @ANALOGIX_DP_AUX_RX_COMM, align 8
  %312 = add nsw i64 %310, %311
  %313 = call i32 @readl(i64 %312)
  store i32 %313, i32* %6, align 4
  %314 = load i32, i32* %6, align 4
  %315 = load i32, i32* @AUX_RX_COMM_AUX_DEFER, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %321

317:                                              ; preds = %307
  %318 = load i32, i32* @DP_AUX_NATIVE_REPLY_DEFER, align 4
  %319 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %320 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %319, i32 0, i32 3
  store i32 %318, i32* %320, align 8
  br label %372

321:                                              ; preds = %307
  %322 = load i32, i32* %6, align 4
  %323 = load i32, i32* @AUX_RX_COMM_I2C_DEFER, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %329

325:                                              ; preds = %321
  %326 = load i32, i32* @DP_AUX_I2C_REPLY_DEFER, align 4
  %327 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %328 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %327, i32 0, i32 3
  store i32 %326, i32* %328, align 8
  br label %371

329:                                              ; preds = %321
  %330 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %331 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @DP_AUX_I2C_MOT, align 4
  %334 = xor i32 %333, -1
  %335 = and i32 %332, %334
  %336 = icmp eq i32 %335, 130
  br i1 %336, label %345, label %337

337:                                              ; preds = %329
  %338 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %339 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @DP_AUX_I2C_MOT, align 4
  %342 = xor i32 %341, -1
  %343 = and i32 %340, %342
  %344 = icmp eq i32 %343, 131
  br i1 %344, label %345, label %349

345:                                              ; preds = %337, %329
  %346 = load i32, i32* @DP_AUX_I2C_REPLY_ACK, align 4
  %347 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %348 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %347, i32 0, i32 3
  store i32 %346, i32* %348, align 8
  br label %370

349:                                              ; preds = %337
  %350 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %351 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @DP_AUX_I2C_MOT, align 4
  %354 = xor i32 %353, -1
  %355 = and i32 %352, %354
  %356 = icmp eq i32 %355, 128
  br i1 %356, label %365, label %357

357:                                              ; preds = %349
  %358 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %359 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @DP_AUX_I2C_MOT, align 4
  %362 = xor i32 %361, -1
  %363 = and i32 %360, %362
  %364 = icmp eq i32 %363, 129
  br i1 %364, label %365, label %369

365:                                              ; preds = %357, %349
  %366 = load i32, i32* @DP_AUX_NATIVE_REPLY_ACK, align 4
  %367 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %368 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %367, i32 0, i32 3
  store i32 %366, i32* %368, align 8
  br label %369

369:                                              ; preds = %365, %357
  br label %370

370:                                              ; preds = %369, %345
  br label %371

371:                                              ; preds = %370, %325
  br label %372

372:                                              ; preds = %371, %317
  %373 = load i32, i32* %10, align 4
  %374 = icmp sgt i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %372
  %376 = load i32, i32* %10, align 4
  br label %380

377:                                              ; preds = %372
  %378 = load i32, i32* @EBUSY, align 4
  %379 = sub nsw i32 0, %378
  br label %380

380:                                              ; preds = %377, %375
  %381 = phi i32 [ %376, %375 ], [ %379, %377 ]
  store i32 %381, i32* %3, align 4
  br label %387

382:                                              ; preds = %248, %214, %196
  %383 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %384 = call i32 @analogix_dp_init_aux(%struct.analogix_dp_device* %383)
  %385 = load i32, i32* @EREMOTEIO, align 4
  %386 = sub nsw i32 0, %385
  store i32 %386, i32* %3, align 4
  br label %387

387:                                              ; preds = %382, %380, %78, %22
  %388 = load i32, i32* %3, align 4
  ret i32 %388
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @AUX_LENGTH(i32) #1

declare dso_local i32 @AUX_ADDR_7_0(i32) #1

declare dso_local i32 @AUX_ADDR_15_8(i32) #1

declare dso_local i32 @AUX_ADDR_19_16(i32) #1

declare dso_local i32 @readx_poll_timeout(i32 (i64)*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @analogix_dp_init_aux(%struct.analogix_dp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
