; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32 }
%struct.omap_i2c_dev = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [46 x i8] c"addr: 0x%04x, len: %d, flags: 0x%x, stop: %d\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@OMAP_I2C_SA_REG = common dso_local global i32 0, align 4
@OMAP_I2C_CNT_REG = common dso_local global i32 0, align 4
@OMAP_I2C_BUF_REG = common dso_local global i32 0, align 4
@OMAP_I2C_BUF_RXFIF_CLR = common dso_local global i32 0, align 4
@OMAP_I2C_BUF_TXFIF_CLR = common dso_local global i32 0, align 4
@OMAP_I2C_CON_EN = common dso_local global i32 0, align 4
@OMAP_I2C_CON_MST = common dso_local global i32 0, align 4
@OMAP_I2C_CON_STT = common dso_local global i32 0, align 4
@OMAP_I2C_CON_OPMODE_HS = common dso_local global i32 0, align 4
@I2C_M_STOP = common dso_local global i32 0, align 4
@I2C_M_TEN = common dso_local global i32 0, align 4
@OMAP_I2C_CON_XA = common dso_local global i32 0, align 4
@OMAP_I2C_CON_TRX = common dso_local global i32 0, align 4
@OMAP_I2C_CON_STP = common dso_local global i32 0, align 4
@OMAP_I2C_CON_REG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@OMAP_I2C_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"controller timed out waiting for start condition to finish\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"controller timed out\0A\00", align 1
@OMAP_I2C_STAT_ROVR = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_XUDF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_AL = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_NACK = common dso_local global i32 0, align 4
@I2C_M_IGNORE_NAK = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32, i32)* @omap_i2c_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_i2c_xfer_msg(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.i2c_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.omap_i2c_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %6, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %17 = call %struct.omap_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %16)
  store %struct.omap_i2c_dev* %17, %struct.omap_i2c_dev** %10, align 8
  %18 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %19 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29, i32 %30)
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @I2C_M_RD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %42 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %48 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @omap_i2c_resize_fifo(%struct.omap_i2c_dev* %43, i32 %46, i32 %49)
  %51 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %52 = load i32, i32* @OMAP_I2C_SA_REG, align 4
  %53 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @omap_i2c_write_reg(%struct.omap_i2c_dev* %51, i32 %52, i32 %55)
  %57 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %61 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 8
  %62 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %66 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = call i32 (...) @barrier()
  %68 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %69 = load i32, i32* @OMAP_I2C_CNT_REG, align 4
  %70 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %71 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @omap_i2c_write_reg(%struct.omap_i2c_dev* %68, i32 %69, i32 %72)
  %74 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %75 = load i32, i32* @OMAP_I2C_BUF_REG, align 4
  %76 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* @OMAP_I2C_BUF_RXFIF_CLR, align 4
  %78 = load i32, i32* @OMAP_I2C_BUF_TXFIF_CLR, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %12, align 4
  %82 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %83 = load i32, i32* @OMAP_I2C_BUF_REG, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @omap_i2c_write_reg(%struct.omap_i2c_dev* %82, i32 %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %4
  %89 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %90 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %89, i32 0, i32 5
  %91 = call i32 @reinit_completion(i32* %90)
  br label %92

92:                                               ; preds = %88, %4
  %93 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %94 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %93, i32 0, i32 2
  store i32 0, i32* %94, align 8
  %95 = load i32, i32* @OMAP_I2C_CON_EN, align 4
  %96 = load i32, i32* @OMAP_I2C_CON_MST, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @OMAP_I2C_CON_STT, align 4
  %99 = or i32 %97, %98
  store i32 %99, i32* %12, align 4
  %100 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %101 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %102, 400
  br i1 %103, label %104, label %108

104:                                              ; preds = %92
  %105 = load i32, i32* @OMAP_I2C_CON_OPMODE_HS, align 4
  %106 = load i32, i32* %12, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %104, %92
  %109 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %110 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @I2C_M_STOP, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  store i32 1, i32* %8, align 4
  br label %116

116:                                              ; preds = %115, %108
  %117 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %118 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @I2C_M_TEN, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load i32, i32* @OMAP_I2C_CON_XA, align 4
  %125 = load i32, i32* %12, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %123, %116
  %128 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %129 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @I2C_M_RD, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* @OMAP_I2C_CON_TRX, align 4
  %136 = load i32, i32* %12, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %134, %127
  %139 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %140 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32, i32* @OMAP_I2C_CON_STP, align 4
  %148 = load i32, i32* %12, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %146, %143, %138
  %151 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %152 = load i32, i32* @OMAP_I2C_CON_REG, align 4
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @omap_i2c_write_reg(%struct.omap_i2c_dev* %151, i32 %152, i32 %153)
  %155 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %156 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %203

159:                                              ; preds = %150
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %203

162:                                              ; preds = %159
  %163 = load i64, i64* @jiffies, align 8
  %164 = load i64, i64* @OMAP_I2C_TIMEOUT, align 8
  %165 = add i64 %163, %164
  store i64 %165, i64* %14, align 8
  %166 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %167 = load i32, i32* @OMAP_I2C_CON_REG, align 4
  %168 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %166, i32 %167)
  store i32 %168, i32* %15, align 4
  br label %169

169:                                              ; preds = %189, %162
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* @OMAP_I2C_CON_STT, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %169
  %175 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %176 = load i32, i32* @OMAP_I2C_CON_REG, align 4
  %177 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %175, i32 %176)
  store i32 %177, i32* %15, align 4
  %178 = load i64, i64* @jiffies, align 8
  %179 = load i64, i64* %14, align 8
  %180 = call i64 @time_after(i64 %178, i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %174
  %183 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %184 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @dev_err(i32 %185, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %187 = load i32, i32* @ETIMEDOUT, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %5, align 4
  br label %309

189:                                              ; preds = %174
  %190 = call i32 (...) @cpu_relax()
  br label %169

191:                                              ; preds = %169
  %192 = load i32, i32* @OMAP_I2C_CON_STP, align 4
  %193 = load i32, i32* %12, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* @OMAP_I2C_CON_STT, align 4
  %196 = xor i32 %195, -1
  %197 = load i32, i32* %12, align 4
  %198 = and i32 %197, %196
  store i32 %198, i32* %12, align 4
  %199 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %200 = load i32, i32* @OMAP_I2C_CON_REG, align 4
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @omap_i2c_write_reg(%struct.omap_i2c_dev* %199, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %191, %159, %150
  %204 = load i32, i32* %9, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %203
  %207 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %208 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %207, i32 0, i32 5
  %209 = load i64, i64* @OMAP_I2C_TIMEOUT, align 8
  %210 = call i64 @wait_for_completion_timeout(i32* %208, i64 %209)
  store i64 %210, i64* %11, align 8
  br label %228

211:                                              ; preds = %203
  br label %212

212:                                              ; preds = %217, %211
  %213 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %214 = call i32 @omap_i2c_wait(%struct.omap_i2c_dev* %213)
  %215 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %216 = call i32 @omap_i2c_xfer_data(%struct.omap_i2c_dev* %215)
  store i32 %216, i32* %13, align 4
  br label %217

217:                                              ; preds = %212
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* @EAGAIN, align 4
  %220 = sub nsw i32 0, %219
  %221 = icmp eq i32 %218, %220
  br i1 %221, label %212, label %222

222:                                              ; preds = %217
  %223 = load i32, i32* %13, align 4
  %224 = icmp ne i32 %223, 0
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %11, align 8
  br label %228

228:                                              ; preds = %222, %206
  %229 = load i64, i64* %11, align 8
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %242

231:                                              ; preds = %228
  %232 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %233 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @dev_err(i32 %234, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %236 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %237 = call i32 @omap_i2c_reset(%struct.omap_i2c_dev* %236)
  %238 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %239 = call i32 @__omap_i2c_init(%struct.omap_i2c_dev* %238)
  %240 = load i32, i32* @ETIMEDOUT, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %5, align 4
  br label %309

242:                                              ; preds = %228
  %243 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %244 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  %247 = xor i1 %246, true
  %248 = zext i1 %247 to i32
  %249 = call i64 @likely(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %242
  store i32 0, i32* %5, align 4
  br label %309

252:                                              ; preds = %242
  %253 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %254 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @OMAP_I2C_STAT_ROVR, align 4
  %257 = load i32, i32* @OMAP_I2C_STAT_XUDF, align 4
  %258 = or i32 %256, %257
  %259 = and i32 %255, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %252
  %262 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %263 = call i32 @omap_i2c_reset(%struct.omap_i2c_dev* %262)
  %264 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %265 = call i32 @__omap_i2c_init(%struct.omap_i2c_dev* %264)
  %266 = load i32, i32* @EIO, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %5, align 4
  br label %309

268:                                              ; preds = %252
  %269 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %270 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @OMAP_I2C_STAT_AL, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %268
  %276 = load i32, i32* @EAGAIN, align 4
  %277 = sub nsw i32 0, %276
  store i32 %277, i32* %5, align 4
  br label %309

278:                                              ; preds = %268
  %279 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %280 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @OMAP_I2C_STAT_NACK, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %306

285:                                              ; preds = %278
  %286 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %287 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %285
  store i32 0, i32* %5, align 4
  br label %309

293:                                              ; preds = %285
  %294 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %295 = load i32, i32* @OMAP_I2C_CON_REG, align 4
  %296 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %294, i32 %295)
  store i32 %296, i32* %12, align 4
  %297 = load i32, i32* @OMAP_I2C_CON_STP, align 4
  %298 = load i32, i32* %12, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %12, align 4
  %300 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %10, align 8
  %301 = load i32, i32* @OMAP_I2C_CON_REG, align 4
  %302 = load i32, i32* %12, align 4
  %303 = call i32 @omap_i2c_write_reg(%struct.omap_i2c_dev* %300, i32 %301, i32 %302)
  %304 = load i32, i32* @EREMOTEIO, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %5, align 4
  br label %309

306:                                              ; preds = %278
  %307 = load i32, i32* @EIO, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %5, align 4
  br label %309

309:                                              ; preds = %306, %293, %292, %275, %261, %251, %231, %182
  %310 = load i32, i32* %5, align 4
  ret i32 %310
}

declare dso_local %struct.omap_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @omap_i2c_resize_fifo(%struct.omap_i2c_dev*, i32, i32) #1

declare dso_local i32 @omap_i2c_write_reg(%struct.omap_i2c_dev*, i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @omap_i2c_read_reg(%struct.omap_i2c_dev*, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @omap_i2c_wait(%struct.omap_i2c_dev*) #1

declare dso_local i32 @omap_i2c_xfer_data(%struct.omap_i2c_dev*) #1

declare dso_local i32 @omap_i2c_reset(%struct.omap_i2c_dev*) #1

declare dso_local i32 @__omap_i2c_init(%struct.omap_i2c_dev*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
