; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlp9xx.c_xlp9xx_i2c_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlp9xx.c_xlp9xx_i2c_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp9xx_i2c_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i32, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@XLP9XX_I2C_MFIFOCTRL = common dso_local global i32 0, align 4
@XLP9XX_I2C_MFIFOCTRL_RST = common dso_local global i32 0, align 4
@XLP9XX_I2C_SLAVEADDR = common dso_local global i32 0, align 4
@XLP9XX_I2C_SLAVEADDR_ADDR_SHIFT = common dso_local global i32 0, align 4
@XLP9XX_I2C_SLAVEADDR_RW = common dso_local global i32 0, align 4
@XLP9XX_I2C_CTRL = common dso_local global i32 0, align 4
@XLP9XX_I2C_CTRL_FIFORD = common dso_local global i32 0, align 4
@I2C_M_TEN = common dso_local global i32 0, align 4
@XLP9XX_I2C_CTRL_ADDMODE = common dso_local global i32 0, align 4
@I2C_M_RECV_LEN = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@I2C_CLIENT_PEC = common dso_local global i32 0, align 4
@XLP9XX_I2C_CTRL_MCTLEN_MASK = common dso_local global i32 0, align 4
@XLP9XX_I2C_CTRL_MCTLEN_SHIFT = common dso_local global i32 0, align 4
@XLP9XX_I2C_INTEN_ARLOST = common dso_local global i32 0, align 4
@XLP9XX_I2C_INTEN_BUSERR = common dso_local global i32 0, align 4
@XLP9XX_I2C_INTEN_NACKADDR = common dso_local global i32 0, align 4
@XLP9XX_I2C_INTEN_DATADONE = common dso_local global i32 0, align 4
@XLP9XX_I2C_INTEN_MFIFOHI = common dso_local global i32 0, align 4
@XLP9XX_I2C_INTEN_SADDR = common dso_local global i32 0, align 4
@XLP9XX_I2C_INTEN_MFIFOEMTY = common dso_local global i32 0, align 4
@XLP9XX_I2C_CMD_START = common dso_local global i32 0, align 4
@XLP9XX_I2C_CMD_READ = common dso_local global i32 0, align 4
@XLP9XX_I2C_CMD_WRITE = common dso_local global i32 0, align 4
@XLP9XX_I2C_CMD_STOP = common dso_local global i32 0, align 4
@XLP9XX_I2C_CMD = common dso_local global i32 0, align 4
@XLP9XX_I2C_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"transfer error %x!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"i2c transfer timed out!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlp9xx_i2c_dev*, %struct.i2c_msg*, i32)* @xlp9xx_i2c_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp9xx_i2c_xfer_msg(%struct.xlp9xx_i2c_dev* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xlp9xx_i2c_dev*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xlp9xx_i2c_dev* %0, %struct.xlp9xx_i2c_dev** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %17 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 4
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %22 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %24 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %26 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %25, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @I2C_M_RD, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %33 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %35 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %34, i32 0, i32 7
  %36 = call i32 @reinit_completion(i32* %35)
  %37 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %38 = load i32, i32* @XLP9XX_I2C_MFIFOCTRL, align 4
  %39 = load i32, i32* @XLP9XX_I2C_MFIFOCTRL_RST, align 4
  %40 = call i32 @xlp9xx_write_i2c_reg(%struct.xlp9xx_i2c_dev* %37, i32 %38, i32 %39)
  %41 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %42 = load i32, i32* @XLP9XX_I2C_SLAVEADDR, align 4
  %43 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @XLP9XX_I2C_SLAVEADDR_ADDR_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %49 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %3
  %53 = load i32, i32* @XLP9XX_I2C_SLAVEADDR_RW, align 4
  br label %55

54:                                               ; preds = %3
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = or i32 %47, %56
  %58 = call i32 @xlp9xx_write_i2c_reg(%struct.xlp9xx_i2c_dev* %41, i32 %42, i32 %57)
  %59 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %60 = load i32, i32* @XLP9XX_I2C_CTRL, align 4
  %61 = call i32 @xlp9xx_read_i2c_reg(%struct.xlp9xx_i2c_dev* %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %63 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* @XLP9XX_I2C_CTRL_FIFORD, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %75

71:                                               ; preds = %55
  %72 = load i32, i32* @XLP9XX_I2C_CTRL_FIFORD, align 4
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @I2C_M_TEN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i32, i32* @XLP9XX_I2C_CTRL_ADDMODE, align 4
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  br label %91

86:                                               ; preds = %75
  %87 = load i32, i32* @XLP9XX_I2C_CTRL_ADDMODE, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %11, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %86, %82
  %92 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %93 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %96 = and i32 %94, %95
  %97 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %98 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %100 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %105 = add nsw i32 %104, 2
  br label %110

106:                                              ; preds = %91
  %107 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  br label %110

110:                                              ; preds = %106, %103
  %111 = phi i32 [ %105, %103 ], [ %109, %106 ]
  store i32 %111, i32* %12, align 4
  %112 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @I2C_CLIENT_PEC, align 4
  %116 = and i32 %114, %115
  %117 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %118 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %120 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %110
  %124 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %125 = call i32 @xlp9xx_i2c_update_rx_fifo_thres(%struct.xlp9xx_i2c_dev* %124)
  br label %126

126:                                              ; preds = %123, %110
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @XLP9XX_I2C_CTRL_MCTLEN_MASK, align 4
  %129 = xor i32 %128, -1
  %130 = and i32 %127, %129
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @XLP9XX_I2C_CTRL_MCTLEN_SHIFT, align 4
  %133 = shl i32 %131, %132
  %134 = or i32 %130, %133
  store i32 %134, i32* %11, align 4
  %135 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %136 = load i32, i32* @XLP9XX_I2C_CTRL, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @xlp9xx_write_i2c_reg(%struct.xlp9xx_i2c_dev* %135, i32 %136, i32 %137)
  %139 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %140 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %126
  %144 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %145 = call i32 @xlp9xx_i2c_fill_tx_fifo(%struct.xlp9xx_i2c_dev* %144)
  br label %146

146:                                              ; preds = %143, %126
  %147 = load i32, i32* @XLP9XX_I2C_INTEN_ARLOST, align 4
  %148 = load i32, i32* @XLP9XX_I2C_INTEN_BUSERR, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @XLP9XX_I2C_INTEN_NACKADDR, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @XLP9XX_I2C_INTEN_DATADONE, align 4
  %153 = or i32 %151, %152
  store i32 %153, i32* %9, align 4
  %154 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %155 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %146
  %159 = load i32, i32* @XLP9XX_I2C_INTEN_MFIFOHI, align 4
  %160 = load i32, i32* %9, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %9, align 4
  %162 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %163 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %158
  %167 = load i32, i32* @XLP9XX_I2C_INTEN_SADDR, align 4
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %9, align 4
  br label %170

170:                                              ; preds = %166, %158
  br label %185

171:                                              ; preds = %146
  %172 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %173 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* @XLP9XX_I2C_INTEN_SADDR, align 4
  %178 = load i32, i32* %9, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %9, align 4
  br label %184

180:                                              ; preds = %171
  %181 = load i32, i32* @XLP9XX_I2C_INTEN_MFIFOEMTY, align 4
  %182 = load i32, i32* %9, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %9, align 4
  br label %184

184:                                              ; preds = %180, %176
  br label %185

185:                                              ; preds = %184, %170
  %186 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @xlp9xx_i2c_unmask_irq(%struct.xlp9xx_i2c_dev* %186, i32 %187)
  %189 = load i32, i32* @XLP9XX_I2C_CMD_START, align 4
  store i32 %189, i32* %10, align 4
  %190 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %191 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %185
  %195 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %196 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = load i32, i32* @XLP9XX_I2C_CMD_READ, align 4
  br label %203

201:                                              ; preds = %194
  %202 = load i32, i32* @XLP9XX_I2C_CMD_WRITE, align 4
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i32 [ %200, %199 ], [ %202, %201 ]
  %205 = load i32, i32* %10, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %10, align 4
  br label %207

207:                                              ; preds = %203, %185
  %208 = load i32, i32* %7, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load i32, i32* @XLP9XX_I2C_CMD_STOP, align 4
  %212 = load i32, i32* %10, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %10, align 4
  br label %214

214:                                              ; preds = %210, %207
  %215 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %216 = load i32, i32* @XLP9XX_I2C_CMD, align 4
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @xlp9xx_write_i2c_reg(%struct.xlp9xx_i2c_dev* %215, i32 %216, i32 %217)
  %219 = load i32, i32* @XLP9XX_I2C_TIMEOUT_MS, align 4
  %220 = call i64 @msecs_to_jiffies(i32 %219)
  store i64 %220, i64* %8, align 8
  %221 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %222 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %221, i32 0, i32 7
  %223 = load i64, i64* %8, align 8
  %224 = call i64 @wait_for_completion_timeout(i32* %222, i64 %223)
  store i64 %224, i64* %8, align 8
  %225 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %226 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @XLP9XX_I2C_INTEN_BUSERR, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %245

231:                                              ; preds = %214
  %232 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %233 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %236 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = call i32 (i32, i8*, ...) @dev_dbg(i32 %234, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %237)
  %239 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %240 = load i32, i32* @XLP9XX_I2C_CMD, align 4
  %241 = load i32, i32* @XLP9XX_I2C_CMD_STOP, align 4
  %242 = call i32 @xlp9xx_write_i2c_reg(%struct.xlp9xx_i2c_dev* %239, i32 %240, i32 %241)
  %243 = load i32, i32* @EIO, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %4, align 4
  br label %290

245:                                              ; preds = %214
  %246 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %247 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @XLP9XX_I2C_INTEN_NACKADDR, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %245
  %253 = load i32, i32* @ENXIO, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %4, align 4
  br label %290

255:                                              ; preds = %245
  br label %256

256:                                              ; preds = %255
  %257 = load i64, i64* %8, align 8
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %256
  %260 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %261 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %260, i32 0, i32 6
  %262 = load i32, i32* %261, align 4
  %263 = call i32 (i32, i8*, ...) @dev_dbg(i32 %262, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %264 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %265 = call i32 @xlp9xx_i2c_init(%struct.xlp9xx_i2c_dev* %264)
  %266 = load i32, i32* @ETIMEDOUT, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %4, align 4
  br label %290

268:                                              ; preds = %256
  %269 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %270 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %289

275:                                              ; preds = %268
  %276 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %277 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %275
  %281 = load i32, i32* @EPROTO, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %4, align 4
  br label %290

283:                                              ; preds = %275
  %284 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %5, align 8
  %285 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %288 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %287, i32 0, i32 0
  store i32 %286, i32* %288, align 4
  br label %289

289:                                              ; preds = %283, %268
  store i32 0, i32* %4, align 4
  br label %290

290:                                              ; preds = %289, %280, %259, %252, %231
  %291 = load i32, i32* %4, align 4
  ret i32 %291
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @xlp9xx_write_i2c_reg(%struct.xlp9xx_i2c_dev*, i32, i32) #1

declare dso_local i32 @xlp9xx_read_i2c_reg(%struct.xlp9xx_i2c_dev*, i32) #1

declare dso_local i32 @xlp9xx_i2c_update_rx_fifo_thres(%struct.xlp9xx_i2c_dev*) #1

declare dso_local i32 @xlp9xx_i2c_fill_tx_fifo(%struct.xlp9xx_i2c_dev*) #1

declare dso_local i32 @xlp9xx_i2c_unmask_irq(%struct.xlp9xx_i2c_dev*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @xlp9xx_i2c_init(%struct.xlp9xx_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
