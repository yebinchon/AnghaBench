; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_xfer_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_xfer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_i2c_dev = type { i32, i32, i32, i32, i64, i64 }

@OMAP_I2C_IE_REG = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_REG = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_XDR = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_XRDY = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_RDR = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_RRDY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"IRQ (ISR = 0x%04x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Too much work in one IRQ\0A\00", align 1
@OMAP_I2C_STAT_NACK = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_AL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Arbitration lost\0A\00", align 1
@OMAP_I2C_STAT_ARDY = common dso_local global i32 0, align 4
@I2C_OMAP_ERRATA_I207 = common dso_local global i32 0, align 4
@OMAP_I2C_BUFSTAT_REG = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_ROVR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Receive overrun\0A\00", align 1
@OMAP_I2C_STAT_XUDF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Transmit underflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_i2c_dev*)* @omap_i2c_xfer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_i2c_xfer_data(%struct.omap_i2c_dev* %0) #0 {
  %2 = alloca %struct.omap_i2c_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.omap_i2c_dev* %0, %struct.omap_i2c_dev** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %260, %1
  %14 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %15 = load i32, i32* @OMAP_I2C_IE_REG, align 4
  %16 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %18 = load i32, i32* @OMAP_I2C_STAT_REG, align 4
  %19 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %24 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %13
  %28 = load i32, i32* @OMAP_I2C_STAT_XDR, align 4
  %29 = load i32, i32* @OMAP_I2C_STAT_XRDY, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %41

34:                                               ; preds = %13
  %35 = load i32, i32* @OMAP_I2C_STAT_RDR, align 4
  %36 = load i32, i32* @OMAP_I2C_STAT_RRDY, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %34, %27
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %263

47:                                               ; preds = %41
  %48 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %49 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = icmp eq i32 %53, 100
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %58 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_warn(i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %263

61:                                               ; preds = %47
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @OMAP_I2C_STAT_NACK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i32, i32* @OMAP_I2C_STAT_NACK, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %71 = load i32, i32* @OMAP_I2C_STAT_NACK, align 4
  %72 = call i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev* %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %61
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @OMAP_I2C_STAT_AL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %80 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @OMAP_I2C_STAT_AL, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %87 = load i32, i32* @OMAP_I2C_STAT_AL, align 4
  %88 = call i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev* %86, i32 %87)
  br label %89

89:                                               ; preds = %78, %73
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @OMAP_I2C_STAT_ARDY, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %96 = load i32, i32* @OMAP_I2C_STAT_ARDY, align 4
  %97 = call i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @OMAP_I2C_STAT_ARDY, align 4
  %101 = load i32, i32* @OMAP_I2C_STAT_NACK, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @OMAP_I2C_STAT_AL, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %99, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %98
  %108 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %109 = load i32, i32* @OMAP_I2C_STAT_RRDY, align 4
  %110 = load i32, i32* @OMAP_I2C_STAT_RDR, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @OMAP_I2C_STAT_XRDY, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @OMAP_I2C_STAT_XDR, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @OMAP_I2C_STAT_ARDY, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev* %108, i32 %117)
  br label %263

119:                                              ; preds = %98
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @OMAP_I2C_STAT_RDR, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %156

124:                                              ; preds = %119
  store i32 1, i32* %7, align 4
  %125 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %126 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %131 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %129, %124
  %134 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %135 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @I2C_OMAP_ERRATA_I207, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %133
  %141 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @i2c_omap_errata_i207(%struct.omap_i2c_dev* %141, i32 %142)
  %144 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %145 = load i32, i32* @OMAP_I2C_BUFSTAT_REG, align 4
  %146 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %144, i32 %145)
  %147 = ashr i32 %146, 8
  %148 = and i32 %147, 63
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %140, %133
  %150 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @omap_i2c_receive_data(%struct.omap_i2c_dev* %150, i32 %151, i32 1)
  %153 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %154 = load i32, i32* @OMAP_I2C_STAT_RDR, align 4
  %155 = call i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev* %153, i32 %154)
  br label %260

156:                                              ; preds = %119
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @OMAP_I2C_STAT_RRDY, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %156
  store i32 1, i32* %8, align 4
  %162 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %163 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %168 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %166, %161
  %171 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @omap_i2c_receive_data(%struct.omap_i2c_dev* %171, i32 %172, i32 0)
  %174 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %175 = load i32, i32* @OMAP_I2C_STAT_RRDY, align 4
  %176 = call i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev* %174, i32 %175)
  br label %260

177:                                              ; preds = %156
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* @OMAP_I2C_STAT_XDR, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %202

182:                                              ; preds = %177
  store i32 1, i32* %9, align 4
  %183 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %184 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %189 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  store i32 %190, i32* %9, align 4
  br label %191

191:                                              ; preds = %187, %182
  %192 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @omap_i2c_transmit_data(%struct.omap_i2c_dev* %192, i32 %193, i32 1)
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  br label %263

198:                                              ; preds = %191
  %199 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %200 = load i32, i32* @OMAP_I2C_STAT_XDR, align 4
  %201 = call i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev* %199, i32 %200)
  br label %260

202:                                              ; preds = %177
  %203 = load i32, i32* %4, align 4
  %204 = load i32, i32* @OMAP_I2C_STAT_XRDY, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %227

207:                                              ; preds = %202
  store i32 1, i32* %11, align 4
  %208 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %209 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %214 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  store i32 %215, i32* %11, align 4
  br label %216

216:                                              ; preds = %212, %207
  %217 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @omap_i2c_transmit_data(%struct.omap_i2c_dev* %217, i32 %218, i32 0)
  store i32 %219, i32* %12, align 4
  %220 = load i32, i32* %12, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  br label %263

223:                                              ; preds = %216
  %224 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %225 = load i32, i32* @OMAP_I2C_STAT_XRDY, align 4
  %226 = call i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev* %224, i32 %225)
  br label %260

227:                                              ; preds = %202
  %228 = load i32, i32* %4, align 4
  %229 = load i32, i32* @OMAP_I2C_STAT_ROVR, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %227
  %233 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %234 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @dev_err(i32 %235, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %237 = load i32, i32* @OMAP_I2C_STAT_ROVR, align 4
  %238 = load i32, i32* %5, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %5, align 4
  %240 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %241 = load i32, i32* @OMAP_I2C_STAT_ROVR, align 4
  %242 = call i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev* %240, i32 %241)
  br label %263

243:                                              ; preds = %227
  %244 = load i32, i32* %4, align 4
  %245 = load i32, i32* @OMAP_I2C_STAT_XUDF, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %259

248:                                              ; preds = %243
  %249 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %250 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @dev_err(i32 %251, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %253 = load i32, i32* @OMAP_I2C_STAT_XUDF, align 4
  %254 = load i32, i32* %5, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %5, align 4
  %256 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %2, align 8
  %257 = load i32, i32* @OMAP_I2C_STAT_XUDF, align 4
  %258 = call i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev* %256, i32 %257)
  br label %263

259:                                              ; preds = %243
  br label %260

260:                                              ; preds = %259, %223, %198, %170, %149
  %261 = load i32, i32* %4, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %13, label %263

263:                                              ; preds = %260, %248, %232, %222, %197, %107, %56, %44
  %264 = load i32, i32* %5, align 4
  ret i32 %264
}

declare dso_local i32 @omap_i2c_read_reg(%struct.omap_i2c_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @omap_i2c_ack_stat(%struct.omap_i2c_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @i2c_omap_errata_i207(%struct.omap_i2c_dev*, i32) #1

declare dso_local i32 @omap_i2c_receive_data(%struct.omap_i2c_dev*, i32, i32) #1

declare dso_local i32 @omap_i2c_transmit_data(%struct.omap_i2c_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
