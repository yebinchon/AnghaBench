; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_pio_setup_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_pio_setup_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32* }
%struct.mxs_i2c_dev = type { i64, i64, i32 }

@MXS_I2C_IRQ_MASK = common dso_local global i32 0, align 4
@MXS_I2C_CTRL1_CLR = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@MXS_CMD_I2C_SELECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"PIO: Failed to send SELECT command!\0A\00", align 1
@MXS_CMD_I2C_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"PIO: Failed to send READ command!\0A\00", align 1
@MXS_I2C_CTRL0_PRE_SEND_START = common dso_local global i32 0, align 4
@MXS_I2C_CTRL0_RETAIN_CLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"PIO: len=%i pos=%i total=%i [W%s%s%s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MXS_I2C_CTRL0_POST_SEND_STOP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@MXS_I2C_DEBUG0_DMAREQ = common dso_local global i32 0, align 4
@MXS_I2C_CTRL0_MASTER_MODE = common dso_local global i32 0, align 4
@MXS_I2C_CTRL0_DIRECTION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"PIO: Failed to finish WRITE cmd!\0A\00", align 1
@MXS_I2C_STAT = common dso_local global i64 0, align 8
@MXS_I2C_STAT_GOT_A_NAK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MXS_I2C_CTRL1_SET = common dso_local global i64 0, align 8
@MXS_I2C_V1 = common dso_local global i64 0, align 8
@MXS_I2C_CTRL0_PIO_MODE = common dso_local global i32 0, align 4
@MXS_I2C_CTRL0_CLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @mxs_i2c_pio_setup_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_i2c_pio_setup_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mxs_i2c_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %16 = call %struct.mxs_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %15)
  store %struct.mxs_i2c_dev* %16, %struct.mxs_i2c_dev** %7, align 8
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %18 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %17)
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* @MXS_I2C_IRQ_MASK, align 4
  %20 = shl i32 %19, 8
  %21 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %22 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MXS_I2C_CTRL1_CLR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @I2C_M_RD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %102

33:                                               ; preds = %3
  %34 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 4
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %41 = load i32, i32* @MXS_CMD_I2C_SELECT, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @mxs_i2c_pio_trigger_write_cmd(%struct.mxs_i2c_dev* %40, i32 %41, i32 %42)
  %44 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %45 = call i32 @mxs_i2c_pio_wait_xfer_end(%struct.mxs_i2c_dev* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %50 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %253

53:                                               ; preds = %33
  %54 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %55 = load i32, i32* @MXS_CMD_I2C_READ, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @MXS_I2C_CTRL0_XFER_COUNT(i32 %60)
  %62 = or i32 %57, %61
  %63 = call i32 @mxs_i2c_pio_trigger_cmd(%struct.mxs_i2c_dev* %54, i32 %62)
  %64 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %65 = call i32 @mxs_i2c_pio_wait_xfer_end(%struct.mxs_i2c_dev* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %53
  %69 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %70 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32, i8*, ...) @dev_dbg(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %253

73:                                               ; preds = %53
  %74 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %75 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %78 = call i64 @MXS_I2C_DATA(%struct.mxs_i2c_dev* %77)
  %79 = add nsw i64 %76, %78
  %80 = call i32 @readl(i64 %79)
  store i32 %80, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %98, %73
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %84 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %81
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %88, 255
  %90 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  %96 = load i32, i32* %9, align 4
  %97 = ashr i32 %96, 8
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %81

101:                                              ; preds = %81
  br label %250

102:                                              ; preds = %3
  %103 = load i32, i32* %8, align 4
  %104 = shl i32 %103, 24
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* @MXS_I2C_CTRL0_PRE_SEND_START, align 4
  store i32 %105, i32* %14, align 4
  %106 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %108, 3
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = load i32, i32* @MXS_I2C_CTRL0_RETAIN_CLOCK, align 4
  %112 = load i32, i32* %14, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %110, %102
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %246, %114
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %118 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %249

121:                                              ; preds = %115
  %122 = load i32, i32* %9, align 4
  %123 = ashr i32 %122, 8
  store i32 %123, i32* %9, align 4
  %124 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %125 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 24
  %132 = load i32, i32* %9, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  %136 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %137 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %135, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %121
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %14, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* @MXS_I2C_CTRL0_RETAIN_CLOCK, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %14, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %148

148:                                              ; preds = %140, %121
  %149 = load i32, i32* %10, align 4
  %150 = and i32 %149, 3
  %151 = icmp eq i32 %150, 2
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 1, i32* %13, align 4
  br label %153

153:                                              ; preds = %152, %148
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  br label %246

157:                                              ; preds = %153
  %158 = load i32, i32* %10, align 4
  %159 = srem i32 %158, 4
  %160 = icmp eq i32 %159, 3
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store i32 1, i32* %12, align 4
  br label %166

162:                                              ; preds = %157
  %163 = load i32, i32* %10, align 4
  %164 = srem i32 %163, 4
  %165 = add nsw i32 %164, 2
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %162, %161
  %167 = load i32, i32* %12, align 4
  %168 = sub nsw i32 4, %167
  %169 = mul nsw i32 %168, 8
  %170 = load i32, i32* %9, align 4
  %171 = ashr i32 %170, %169
  store i32 %171, i32* %9, align 4
  %172 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %173 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %178 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* @MXS_I2C_CTRL0_PRE_SEND_START, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* @MXS_I2C_CTRL0_POST_SEND_STOP, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* @MXS_I2C_CTRL0_RETAIN_CLOCK, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %198 = call i32 (i32, i8*, ...) @dev_dbg(i32 %174, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %175, i32 %176, i32 %179, i8* %185, i8* %191, i8* %197)
  %199 = load i32, i32* @MXS_I2C_DEBUG0_DMAREQ, align 4
  %200 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %201 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %204 = call i64 @MXS_I2C_DEBUG0_CLR(%struct.mxs_i2c_dev* %203)
  %205 = add nsw i64 %202, %204
  %206 = call i32 @writel(i32 %199, i64 %205)
  %207 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* @MXS_I2C_CTRL0_MASTER_MODE, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @MXS_I2C_CTRL0_DIRECTION, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* %12, align 4
  %214 = call i32 @MXS_I2C_CTRL0_XFER_COUNT(i32 %213)
  %215 = or i32 %212, %214
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @mxs_i2c_pio_trigger_write_cmd(%struct.mxs_i2c_dev* %207, i32 %215, i32 %216)
  %218 = load i32, i32* @MXS_I2C_CTRL0_PRE_SEND_START, align 4
  %219 = xor i32 %218, -1
  %220 = load i32, i32* %14, align 4
  %221 = and i32 %220, %219
  store i32 %221, i32* %14, align 4
  %222 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %223 = call i32 @mxs_i2c_pio_wait_xfer_end(%struct.mxs_i2c_dev* %222)
  store i32 %223, i32* %11, align 4
  %224 = load i32, i32* %11, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %166
  %227 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %228 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call i32 (i32, i8*, ...) @dev_dbg(i32 %229, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %249

231:                                              ; preds = %166
  %232 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %233 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @MXS_I2C_STAT, align 8
  %236 = add nsw i64 %234, %235
  %237 = call i32 @readl(i64 %236)
  %238 = load i32, i32* @MXS_I2C_STAT_GOT_A_NAK, align 4
  %239 = and i32 %237, %238
  store i32 %239, i32* %11, align 4
  %240 = load i32, i32* %11, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %231
  %243 = load i32, i32* @ENXIO, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %11, align 4
  br label %253

245:                                              ; preds = %231
  br label %246

246:                                              ; preds = %245, %156
  %247 = load i32, i32* %10, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %10, align 4
  br label %115

249:                                              ; preds = %226, %115
  br label %250

250:                                              ; preds = %249, %101
  %251 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %252 = call i32 @mxs_i2c_pio_check_error_state(%struct.mxs_i2c_dev* %251)
  store i32 %252, i32* %11, align 4
  br label %253

253:                                              ; preds = %250, %242, %68, %48
  %254 = load i32, i32* @MXS_I2C_IRQ_MASK, align 4
  %255 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %256 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @MXS_I2C_CTRL1_CLR, align 8
  %259 = add nsw i64 %257, %258
  %260 = call i32 @writel(i32 %254, i64 %259)
  %261 = load i32, i32* @MXS_I2C_IRQ_MASK, align 4
  %262 = shl i32 %261, 8
  %263 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %264 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @MXS_I2C_CTRL1_SET, align 8
  %267 = add nsw i64 %265, %266
  %268 = call i32 @writel(i32 %262, i64 %267)
  %269 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %270 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @MXS_I2C_V1, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %282

274:                                              ; preds = %253
  %275 = load i32, i32* @MXS_I2C_CTRL0_PIO_MODE, align 4
  %276 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %7, align 8
  %277 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @MXS_I2C_CTRL0_CLR, align 8
  %280 = add nsw i64 %278, %279
  %281 = call i32 @writel(i32 %275, i64 %280)
  br label %282

282:                                              ; preds = %274, %253
  %283 = load i32, i32* %11, align 4
  ret i32 %283
}

declare dso_local %struct.mxs_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mxs_i2c_pio_trigger_write_cmd(%struct.mxs_i2c_dev*, i32, i32) #1

declare dso_local i32 @mxs_i2c_pio_wait_xfer_end(%struct.mxs_i2c_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mxs_i2c_pio_trigger_cmd(%struct.mxs_i2c_dev*, i32) #1

declare dso_local i32 @MXS_I2C_CTRL0_XFER_COUNT(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @MXS_I2C_DATA(%struct.mxs_i2c_dev*) #1

declare dso_local i64 @MXS_I2C_DEBUG0_CLR(%struct.mxs_i2c_dev*) #1

declare dso_local i32 @mxs_i2c_pio_check_error_state(%struct.mxs_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
