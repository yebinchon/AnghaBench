; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_i2c.c_msm_hdmi_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_i2c.c_msm_hdmi_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.hdmi_i2c_adapter = type { i32, %struct.hdmi* }
%struct.hdmi = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@msm_hdmi_i2c_xfer.nack = internal constant [4 x i32] [i32 131, i32 130, i32 129, i32 128], align 16
@MAX_TRANSACTIONS = common dso_local global i32 0, align 4
@REG_HDMI_CTRL = common dso_local global i32 0, align 4
@HDMI_CTRL_ENABLE = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@DDC_WRITE = common dso_local global i32 0, align 4
@HDMI_DDC_DATA_INDEX_WRITE = common dso_local global i32 0, align 4
@REG_HDMI_DDC_DATA = common dso_local global i32 0, align 4
@DDC_READ = common dso_local global i32 0, align 4
@HDMI_I2C_TRANSACTION_REG_START = common dso_local global i32 0, align 4
@HDMI_I2C_TRANSACTION_REG_STOP = common dso_local global i32 0, align 4
@REG_HDMI_DDC_CTRL = common dso_local global i32 0, align 4
@HDMI_DDC_CTRL_GO = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"DDC timeout: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"sw_status=%08x, hw_status=%08x, int_ctrl=%08x\00", align 1
@REG_HDMI_DDC_SW_STATUS = common dso_local global i32 0, align 4
@REG_HDMI_DDC_HW_STATUS = common dso_local global i32 0, align 4
@REG_HDMI_DDC_INT_CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"ddc_status=%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @msm_hdmi_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_hdmi_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hdmi_i2c_adapter*, align 8
  %9 = alloca %struct.hdmi*, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.i2c_msg*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.i2c_msg*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %25 = call %struct.hdmi_i2c_adapter* @to_hdmi_i2c_adapter(%struct.i2c_adapter* %24)
  store %struct.hdmi_i2c_adapter* %25, %struct.hdmi_i2c_adapter** %8, align 8
  %26 = load %struct.hdmi_i2c_adapter*, %struct.hdmi_i2c_adapter** %8, align 8
  %27 = getelementptr inbounds %struct.hdmi_i2c_adapter, %struct.hdmi_i2c_adapter* %26, i32 0, i32 1
  %28 = load %struct.hdmi*, %struct.hdmi** %27, align 8
  store %struct.hdmi* %28, %struct.hdmi** %9, align 8
  %29 = load %struct.hdmi*, %struct.hdmi** %9, align 8
  %30 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %29, i32 0, i32 0
  %31 = load %struct.drm_device*, %struct.drm_device** %30, align 8
  store %struct.drm_device* %31, %struct.drm_device** %10, align 8
  %32 = load i32, i32* @MAX_TRANSACTIONS, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %11, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %12, align 8
  store i32 0, i32* %16, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MAX_TRANSACTIONS, align 4
  %38 = call i32 @min(i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.hdmi*, %struct.hdmi** %9, align 8
  %40 = load i32, i32* @REG_HDMI_CTRL, align 4
  %41 = call i32 @hdmi_read(%struct.hdmi* %39, i32 %40)
  %42 = load i32, i32* @HDMI_CTRL_ENABLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %3
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %306

52:                                               ; preds = %3
  %53 = load %struct.hdmi_i2c_adapter*, %struct.hdmi_i2c_adapter** %8, align 8
  %54 = call i32 @init_ddc(%struct.hdmi_i2c_adapter* %53)
  %55 = load %struct.hdmi_i2c_adapter*, %struct.hdmi_i2c_adapter** %8, align 8
  %56 = call i32 @ddc_clear_irq(%struct.hdmi_i2c_adapter* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %306

61:                                               ; preds = %52
  store i32 0, i32* %14, align 4
  br label %62

62:                                               ; preds = %185, %61
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %188

66:                                               ; preds = %62
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i64 %69
  store %struct.i2c_msg* %70, %struct.i2c_msg** %21, align 8
  %71 = load %struct.i2c_msg*, %struct.i2c_msg** %21, align 8
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 %73, 1
  store i32 %74, i32* %22, align 4
  %75 = load %struct.i2c_msg*, %struct.i2c_msg** %21, align 8
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @I2C_M_RD, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %66
  %82 = load i32, i32* %22, align 4
  %83 = or i32 %82, 1
  store i32 %83, i32* %22, align 4
  br label %84

84:                                               ; preds = %81, %66
  %85 = load i32, i32* %22, align 4
  %86 = call i32 @HDMI_DDC_DATA_DATA(i32 %85)
  %87 = load i32, i32* @DDC_WRITE, align 4
  %88 = call i32 @HDMI_DDC_DATA_DATA_RW(i32 %87)
  %89 = or i32 %86, %88
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = call i32 @HDMI_DDC_DATA_INDEX(i32 0)
  %94 = load i32, i32* @HDMI_DDC_DATA_INDEX_WRITE, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %18, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %18, align 4
  br label %98

98:                                               ; preds = %92, %84
  %99 = load %struct.hdmi*, %struct.hdmi** %9, align 8
  %100 = load i32, i32* @REG_HDMI_DDC_DATA, align 4
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @hdmi_write(%struct.hdmi* %99, i32 %100, i32 %101)
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %35, i64 %107
  store i32 %105, i32* %108, align 4
  %109 = load %struct.i2c_msg*, %struct.i2c_msg** %21, align 8
  %110 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @I2C_M_RD, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %98
  %116 = load %struct.i2c_msg*, %struct.i2c_msg** %21, align 8
  %117 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %16, align 4
  br label %150

121:                                              ; preds = %98
  store i32 0, i32* %15, align 4
  br label %122

122:                                              ; preds = %146, %121
  %123 = load i32, i32* %15, align 4
  %124 = load %struct.i2c_msg*, %struct.i2c_msg** %21, align 8
  %125 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %149

128:                                              ; preds = %122
  %129 = load %struct.i2c_msg*, %struct.i2c_msg** %21, align 8
  %130 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @HDMI_DDC_DATA_DATA(i32 %135)
  %137 = load i32, i32* @DDC_WRITE, align 4
  %138 = call i32 @HDMI_DDC_DATA_DATA_RW(i32 %137)
  %139 = or i32 %136, %138
  store i32 %139, i32* %18, align 4
  %140 = load %struct.hdmi*, %struct.hdmi** %9, align 8
  %141 = load i32, i32* @REG_HDMI_DDC_DATA, align 4
  %142 = load i32, i32* %18, align 4
  %143 = call i32 @hdmi_write(%struct.hdmi* %140, i32 %141, i32 %142)
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %128
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %122

149:                                              ; preds = %122
  br label %150

150:                                              ; preds = %149, %115
  %151 = load %struct.i2c_msg*, %struct.i2c_msg** %21, align 8
  %152 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @HDMI_I2C_TRANSACTION_REG_CNT(i32 %153)
  %155 = load %struct.i2c_msg*, %struct.i2c_msg** %21, align 8
  %156 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @I2C_M_RD, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %150
  %162 = load i32, i32* @DDC_READ, align 4
  br label %165

163:                                              ; preds = %150
  %164 = load i32, i32* @DDC_WRITE, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  %167 = call i32 @HDMI_I2C_TRANSACTION_REG_RW(i32 %166)
  %168 = or i32 %154, %167
  %169 = load i32, i32* @HDMI_I2C_TRANSACTION_REG_START, align 4
  %170 = or i32 %168, %169
  store i32 %170, i32* %19, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %7, align 4
  %173 = sub nsw i32 %172, 1
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %165
  %176 = load i32, i32* @HDMI_I2C_TRANSACTION_REG_STOP, align 4
  %177 = load i32, i32* %19, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %19, align 4
  br label %179

179:                                              ; preds = %175, %165
  %180 = load %struct.hdmi*, %struct.hdmi** %9, align 8
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @REG_HDMI_I2C_TRANSACTION(i32 %181)
  %183 = load i32, i32* %19, align 4
  %184 = call i32 @hdmi_write(%struct.hdmi* %180, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %179
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %14, align 4
  br label %62

188:                                              ; preds = %62
  %189 = load %struct.hdmi*, %struct.hdmi** %9, align 8
  %190 = load i32, i32* @REG_HDMI_DDC_CTRL, align 4
  %191 = load i32, i32* %7, align 4
  %192 = sub nsw i32 %191, 1
  %193 = call i32 @HDMI_DDC_CTRL_TRANSACTION_CNT(i32 %192)
  %194 = load i32, i32* @HDMI_DDC_CTRL_GO, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @hdmi_write(%struct.hdmi* %189, i32 %190, i32 %195)
  %197 = load %struct.hdmi_i2c_adapter*, %struct.hdmi_i2c_adapter** %8, align 8
  %198 = getelementptr inbounds %struct.hdmi_i2c_adapter, %struct.hdmi_i2c_adapter* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.hdmi_i2c_adapter*, %struct.hdmi_i2c_adapter** %8, align 8
  %201 = call i32 @sw_done(%struct.hdmi_i2c_adapter* %200)
  %202 = load i32, i32* @HZ, align 4
  %203 = sdiv i32 %202, 4
  %204 = call i32 @wait_event_timeout(i32 %199, i32 %201, i32 %203)
  store i32 %204, i32* %13, align 4
  %205 = load i32, i32* %13, align 4
  %206 = icmp sle i32 %205, 0
  br i1 %206, label %207, label %230

207:                                              ; preds = %188
  %208 = load i32, i32* %13, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32, i32* @ETIMEDOUT, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %13, align 4
  br label %213

213:                                              ; preds = %210, %207
  %214 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %215 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %13, align 4
  %218 = call i32 @dev_warn(i32 %216, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %217)
  %219 = load %struct.hdmi*, %struct.hdmi** %9, align 8
  %220 = load i32, i32* @REG_HDMI_DDC_SW_STATUS, align 4
  %221 = call i32 @hdmi_read(%struct.hdmi* %219, i32 %220)
  %222 = load %struct.hdmi*, %struct.hdmi** %9, align 8
  %223 = load i32, i32* @REG_HDMI_DDC_HW_STATUS, align 4
  %224 = call i32 @hdmi_read(%struct.hdmi* %222, i32 %223)
  %225 = load %struct.hdmi*, %struct.hdmi** %9, align 8
  %226 = load i32, i32* @REG_HDMI_DDC_INT_CTRL, align 4
  %227 = call i32 @hdmi_read(%struct.hdmi* %225, i32 %226)
  %228 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %221, i32 %224, i32 %227)
  %229 = load i32, i32* %13, align 4
  store i32 %229, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %306

230:                                              ; preds = %188
  %231 = load %struct.hdmi*, %struct.hdmi** %9, align 8
  %232 = load i32, i32* @REG_HDMI_DDC_SW_STATUS, align 4
  %233 = call i32 @hdmi_read(%struct.hdmi* %231, i32 %232)
  store i32 %233, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %234

234:                                              ; preds = %301, %230
  %235 = load i32, i32* %14, align 4
  %236 = load i32, i32* %7, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %304

238:                                              ; preds = %234
  %239 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %240 = load i32, i32* %14, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %239, i64 %241
  store %struct.i2c_msg* %242, %struct.i2c_msg** %23, align 8
  %243 = load %struct.i2c_msg*, %struct.i2c_msg** %23, align 8
  %244 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @I2C_M_RD, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %238
  br label %301

250:                                              ; preds = %238
  %251 = load i32, i32* %17, align 4
  %252 = load i32, i32* %14, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [4 x i32], [4 x i32]* @msm_hdmi_i2c_xfer.nack, i64 0, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = and i32 %251, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %250
  %259 = load i32, i32* %17, align 4
  %260 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %259)
  br label %304

261:                                              ; preds = %250
  %262 = load i32, i32* @DDC_READ, align 4
  %263 = call i32 @HDMI_DDC_DATA_DATA_RW(i32 %262)
  %264 = load i32, i32* %14, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %35, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @HDMI_DDC_DATA_INDEX(i32 %267)
  %269 = or i32 %263, %268
  %270 = load i32, i32* @HDMI_DDC_DATA_INDEX_WRITE, align 4
  %271 = or i32 %269, %270
  store i32 %271, i32* %18, align 4
  %272 = load %struct.hdmi*, %struct.hdmi** %9, align 8
  %273 = load i32, i32* @REG_HDMI_DDC_DATA, align 4
  %274 = load i32, i32* %18, align 4
  %275 = call i32 @hdmi_write(%struct.hdmi* %272, i32 %273, i32 %274)
  %276 = load %struct.hdmi*, %struct.hdmi** %9, align 8
  %277 = load i32, i32* @REG_HDMI_DDC_DATA, align 4
  %278 = call i32 @hdmi_read(%struct.hdmi* %276, i32 %277)
  store i32 0, i32* %15, align 4
  br label %279

279:                                              ; preds = %297, %261
  %280 = load i32, i32* %15, align 4
  %281 = load %struct.i2c_msg*, %struct.i2c_msg** %23, align 8
  %282 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = icmp slt i32 %280, %283
  br i1 %284, label %285, label %300

285:                                              ; preds = %279
  %286 = load %struct.hdmi*, %struct.hdmi** %9, align 8
  %287 = load i32, i32* @REG_HDMI_DDC_DATA, align 4
  %288 = call i32 @hdmi_read(%struct.hdmi* %286, i32 %287)
  store i32 %288, i32* %18, align 4
  %289 = load i32, i32* %18, align 4
  %290 = call i32 @FIELD(i32 %289, i32 (i32)* @HDMI_DDC_DATA_DATA)
  %291 = load %struct.i2c_msg*, %struct.i2c_msg** %23, align 8
  %292 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %291, i32 0, i32 3
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %15, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  store i32 %290, i32* %296, align 4
  br label %297

297:                                              ; preds = %285
  %298 = load i32, i32* %15, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %15, align 4
  br label %279

300:                                              ; preds = %279
  br label %301

301:                                              ; preds = %300, %249
  %302 = load i32, i32* %14, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %14, align 4
  br label %234

304:                                              ; preds = %258, %234
  %305 = load i32, i32* %14, align 4
  store i32 %305, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %306

306:                                              ; preds = %304, %213, %59, %50
  %307 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %307)
  %308 = load i32, i32* %4, align 4
  ret i32 %308
}

declare dso_local %struct.hdmi_i2c_adapter* @to_hdmi_i2c_adapter(%struct.i2c_adapter*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @hdmi_read(%struct.hdmi*, i32) #1

declare dso_local i32 @init_ddc(%struct.hdmi_i2c_adapter*) #1

declare dso_local i32 @ddc_clear_irq(%struct.hdmi_i2c_adapter*) #1

declare dso_local i32 @HDMI_DDC_DATA_DATA(i32) #1

declare dso_local i32 @HDMI_DDC_DATA_DATA_RW(i32) #1

declare dso_local i32 @HDMI_DDC_DATA_INDEX(i32) #1

declare dso_local i32 @hdmi_write(%struct.hdmi*, i32, i32) #1

declare dso_local i32 @HDMI_I2C_TRANSACTION_REG_CNT(i32) #1

declare dso_local i32 @HDMI_I2C_TRANSACTION_REG_RW(i32) #1

declare dso_local i32 @REG_HDMI_I2C_TRANSACTION(i32) #1

declare dso_local i32 @HDMI_DDC_CTRL_TRANSACTION_CNT(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @sw_done(%struct.hdmi_i2c_adapter*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @DBG(i8*, i32, ...) #1

declare dso_local i32 @FIELD(i32, i32 (i32)*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
