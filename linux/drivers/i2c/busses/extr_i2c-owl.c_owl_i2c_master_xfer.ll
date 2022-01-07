; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-owl.c_owl_i2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-owl.c_owl_i2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32 }
%struct.owl_i2c_dev = type { i32, i64, i64, i32, i32, %struct.i2c_msg* }

@OWL_I2C_REG_STAT = common dso_local global i64 0, align 8
@OWL_I2C_STAT_LAB = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@OWL_I2C_REG_CTL = common dso_local global i64 0, align 8
@OWL_I2C_CTL_IRQE = common dso_local global i32 0, align 4
@OWL_I2C_CMD_SECL = common dso_local global i32 0, align 4
@OWL_I2C_CMD_MSS = common dso_local global i32 0, align 4
@OWL_I2C_CMD_SE = common dso_local global i32 0, align 4
@OWL_I2C_CMD_NS = common dso_local global i32 0, align 4
@OWL_I2C_CMD_DE = common dso_local global i32 0, align 4
@OWL_I2C_CMD_SBE = common dso_local global i32 0, align 4
@OWL_I2C_CMD_RBE = common dso_local global i32 0, align 4
@OWL_I2C_REG_TXDAT = common dso_local global i64 0, align 8
@OWL_I2C_REG_DATCNT = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@OWL_I2C_REG_FIFOSTAT = common dso_local global i64 0, align 8
@OWL_I2C_FIFOSTAT_TFF = common dso_local global i32 0, align 4
@I2C_M_IGNORE_NAK = common dso_local global i32 0, align 4
@OWL_I2C_REG_FIFOCTL = common dso_local global i64 0, align 8
@OWL_I2C_FIFOCTL_NIB = common dso_local global i32 0, align 4
@OWL_I2C_REG_CMD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Transaction timed out\0A\00", align 1
@OWL_I2C_CTL_GBCC_STOP = common dso_local global i32 0, align 4
@OWL_I2C_CTL_RB = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@OWL_I2C_CTL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @owl_i2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_i2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.owl_i2c_dev*, align 8
  %8 = alloca %struct.i2c_msg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %17 = call %struct.owl_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %16)
  store %struct.owl_i2c_dev* %17, %struct.owl_i2c_dev** %7, align 8
  %18 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %19 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %18, i32 0, i32 3
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %23 = call i32 @owl_i2c_reset(%struct.owl_i2c_dev* %22)
  %24 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %25 = call i32 @owl_i2c_set_freq(%struct.owl_i2c_dev* %24)
  %26 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %27 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %26, i32 0, i32 3
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %31 = call i32 @owl_i2c_reset_fifo(%struct.owl_i2c_dev* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %302

35:                                               ; preds = %3
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %37 = call i32 @owl_i2c_check_bus_busy(%struct.i2c_adapter* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %302

41:                                               ; preds = %35
  %42 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %43 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %42, i32 0, i32 3
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %47 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @OWL_I2C_REG_STAT, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @OWL_I2C_STAT_LAB, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %41
  %57 = load i32, i32* @OWL_I2C_STAT_LAB, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %63 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @OWL_I2C_REG_STAT, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load i32, i32* @EAGAIN, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %14, align 4
  br label %297

70:                                               ; preds = %41
  %71 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %72 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %71, i32 0, i32 4
  %73 = call i32 @reinit_completion(i32* %72)
  %74 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %75 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @OWL_I2C_REG_CTL, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i32, i32* @OWL_I2C_CTL_IRQE, align 4
  %80 = call i32 @owl_i2c_update_reg(i64 %78, i32 %79, i32 1)
  %81 = load i32, i32* @OWL_I2C_CMD_SECL, align 4
  %82 = load i32, i32* @OWL_I2C_CMD_MSS, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @OWL_I2C_CMD_SE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @OWL_I2C_CMD_NS, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @OWL_I2C_CMD_DE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @OWL_I2C_CMD_SBE, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %145

94:                                               ; preds = %70
  %95 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %96 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %95, i64 0
  %97 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  %100 = call i32 @OWL_I2C_CMD_AS(i32 %99)
  %101 = call i32 @OWL_I2C_CMD_SAS(i32 1)
  %102 = or i32 %100, %101
  %103 = load i32, i32* @OWL_I2C_CMD_RBE, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %11, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %11, align 4
  %107 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i64 0
  %109 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %112 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @OWL_I2C_REG_TXDAT, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 %110, i64 %115)
  store i32 0, i32* %15, align 4
  br label %117

117:                                              ; preds = %139, %94
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %119, i64 0
  %121 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %124, label %142

124:                                              ; preds = %117
  %125 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %126 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %125, i64 0
  %127 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %134 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @OWL_I2C_REG_TXDAT, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @writel(i32 %132, i64 %137)
  br label %139

139:                                              ; preds = %124
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %15, align 4
  br label %117

142:                                              ; preds = %117
  %143 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %144 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %143, i64 1
  store %struct.i2c_msg* %144, %struct.i2c_msg** %8, align 8
  br label %151

145:                                              ; preds = %70
  %146 = call i32 @OWL_I2C_CMD_AS(i32 1)
  %147 = load i32, i32* %11, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %11, align 4
  %149 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %150 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %149, i64 0
  store %struct.i2c_msg* %150, %struct.i2c_msg** %8, align 8
  br label %151

151:                                              ; preds = %145, %142
  %152 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %153 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %154 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %153, i32 0, i32 5
  store %struct.i2c_msg* %152, %struct.i2c_msg** %154, align 8
  %155 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %156 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %155, i32 0, i32 0
  store i32 0, i32* %156, align 8
  %157 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %158 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %161 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @OWL_I2C_REG_DATCNT, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @writel(i32 %159, i64 %164)
  %166 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %167 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %166)
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %170 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @OWL_I2C_REG_TXDAT, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @writel(i32 %168, i64 %173)
  %175 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %176 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @I2C_M_RD, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %220, label %181

181:                                              ; preds = %151
  store i32 0, i32* %15, align 4
  br label %182

182:                                              ; preds = %213, %181
  %183 = load i32, i32* %15, align 4
  %184 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %185 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %216

188:                                              ; preds = %182
  %189 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %190 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @OWL_I2C_REG_FIFOSTAT, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @readl(i64 %193)
  %195 = load i32, i32* @OWL_I2C_FIFOSTAT_TFF, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %188
  br label %216

199:                                              ; preds = %188
  %200 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %201 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %15, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %208 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @OWL_I2C_REG_TXDAT, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @writel(i32 %206, i64 %211)
  br label %213

213:                                              ; preds = %199
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %15, align 4
  br label %182

216:                                              ; preds = %198, %182
  %217 = load i32, i32* %15, align 4
  %218 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %219 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  br label %220

220:                                              ; preds = %216, %151
  %221 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %222 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %220
  %228 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %229 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @OWL_I2C_REG_FIFOCTL, align 8
  %232 = add nsw i64 %230, %231
  %233 = load i32, i32* @OWL_I2C_FIFOCTL_NIB, align 4
  %234 = call i32 @owl_i2c_update_reg(i64 %232, i32 %233, i32 1)
  br label %243

235:                                              ; preds = %220
  %236 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %237 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @OWL_I2C_REG_FIFOCTL, align 8
  %240 = add nsw i64 %238, %239
  %241 = load i32, i32* @OWL_I2C_FIFOCTL_NIB, align 4
  %242 = call i32 @owl_i2c_update_reg(i64 %240, i32 %241, i32 0)
  br label %243

243:                                              ; preds = %235, %227
  %244 = load i32, i32* %11, align 4
  %245 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %246 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @OWL_I2C_REG_CMD, align 8
  %249 = add nsw i64 %247, %248
  %250 = call i32 @writel(i32 %244, i64 %249)
  %251 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %252 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %251, i32 0, i32 3
  %253 = load i64, i64* %10, align 8
  %254 = call i32 @spin_unlock_irqrestore(i32* %252, i64 %253)
  %255 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %256 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %255, i32 0, i32 4
  %257 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %258 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call i64 @wait_for_completion_timeout(i32* %256, i32 %259)
  store i64 %260, i64* %9, align 8
  %261 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %262 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %261, i32 0, i32 3
  %263 = load i64, i64* %10, align 8
  %264 = call i32 @spin_lock_irqsave(i32* %262, i64 %263)
  %265 = load i64, i64* %9, align 8
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %282

267:                                              ; preds = %243
  %268 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %269 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %268, i32 0, i32 0
  %270 = call i32 @dev_err(i32* %269, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %271 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %272 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @OWL_I2C_REG_CTL, align 8
  %275 = add nsw i64 %273, %274
  %276 = load i32, i32* @OWL_I2C_CTL_GBCC_STOP, align 4
  %277 = load i32, i32* @OWL_I2C_CTL_RB, align 4
  %278 = or i32 %276, %277
  %279 = call i32 @owl_i2c_update_reg(i64 %275, i32 %278, i32 1)
  %280 = load i32, i32* @ETIMEDOUT, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %14, align 4
  br label %297

282:                                              ; preds = %243
  %283 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %284 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = icmp slt i64 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %282
  %288 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %289 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  br label %294

291:                                              ; preds = %282
  %292 = load i32, i32* %6, align 4
  %293 = sext i32 %292 to i64
  br label %294

294:                                              ; preds = %291, %287
  %295 = phi i64 [ %290, %287 ], [ %293, %291 ]
  %296 = trunc i64 %295 to i32
  store i32 %296, i32* %14, align 4
  br label %297

297:                                              ; preds = %294, %267, %56
  %298 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %299 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %298, i32 0, i32 3
  %300 = load i64, i64* %10, align 8
  %301 = call i32 @spin_unlock_irqrestore(i32* %299, i64 %300)
  br label %302

302:                                              ; preds = %297, %40, %34
  %303 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %7, align 8
  %304 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @OWL_I2C_REG_CTL, align 8
  %307 = add nsw i64 %305, %306
  %308 = load i32, i32* @OWL_I2C_CTL_EN, align 4
  %309 = call i32 @owl_i2c_update_reg(i64 %307, i32 %308, i32 0)
  %310 = load i32, i32* %14, align 4
  ret i32 %310
}

declare dso_local %struct.owl_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @owl_i2c_reset(%struct.owl_i2c_dev*) #1

declare dso_local i32 @owl_i2c_set_freq(%struct.owl_i2c_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @owl_i2c_reset_fifo(%struct.owl_i2c_dev*) #1

declare dso_local i32 @owl_i2c_check_bus_busy(%struct.i2c_adapter*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @owl_i2c_update_reg(i64, i32, i32) #1

declare dso_local i32 @OWL_I2C_CMD_AS(i32) #1

declare dso_local i32 @OWL_I2C_CMD_SAS(i32) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
