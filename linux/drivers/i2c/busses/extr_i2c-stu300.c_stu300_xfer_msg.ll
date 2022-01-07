; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stu300.c_stu300_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stu300.c_stu300_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }
%struct.stu300_dev = type { i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"wait while busy\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"re-int hw\0A\00", align 1
@I2C_CR_PERIPHERAL_ENABLE = common dso_local global i32 0, align 4
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@I2C_CR_START_ENABLE = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_CR_ACK_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"send start event\0A\00", align 1
@STU300_EVENT_5 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"send address\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"failed sending address, retrying. Attempt: %d msg_index: %d/%d\0A\00", align 1
@NUM_ADDR_RESEND_ATTEMPTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"managed to get address through after %d attempts\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"I give up, tried %d times to resend address.\0A\00", align 1
@I2C_CR_STOP_ENABLE = common dso_local global i32 0, align 4
@I2C_CR = common dso_local global i64 0, align 8
@STU300_EVENT_7 = common dso_local global i32 0, align 4
@I2C_DR = common dso_local global i64 0, align 8
@STU300_EVENT_8 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"error awaiting event 8 (%d)\0A\00", align 1
@I2C_M_IGNORE_NAK = common dso_local global i32 0, align 4
@I2C_SR2 = common dso_local global i64 0, align 8
@I2C_SR2_AF_IND = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"I2C payload send returned NAK!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"timeout waiting for transfer to commence.\0A\00", align 1
@I2C_SR1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @stu300_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stu300_xfer_msg(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stu300_dev*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %14 = call %struct.stu300_dev* @i2c_get_adapdata(%struct.i2c_adapter* %13)
  store %struct.stu300_dev* %14, %struct.stu300_dev** %12, align 8
  %15 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %16 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @clk_enable(i32 %17)
  br label %19

19:                                               ; preds = %143, %3
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %24 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %22, %19
  %29 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %30 = call i32 @stu300_wait_while_busy(%struct.stu300_dev* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %335

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %39 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %37, %34
  %44 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %45 = call i32 @stu300_init_hw(%struct.stu300_dev* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %335

49:                                               ; preds = %43
  %50 = load i32, i32* @I2C_CR_PERIPHERAL_ENABLE, align 4
  store i32 %50, i32* %7, align 4
  %51 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @I2C_M_NOSTART, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @I2C_CR_START_ENABLE, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %49
  %62 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @I2C_M_RD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @I2C_CR_ACK_ENABLE, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %68, %61
  %78 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @I2C_M_NOSTART, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %89 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %87, %84
  %94 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @STU300_EVENT_5, align 4
  %97 = call i32 @stu300_start_and_await_event(%struct.stu300_dev* %94, i32 %95, i32 %96)
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %93, %77
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %103 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %107

107:                                              ; preds = %101, %98
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %112 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @stu300_send_address(%struct.stu300_dev* %111, %struct.i2c_msg* %112, i32 %115)
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %110, %107
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %117
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  %123 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %124 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %123, i32 0, i32 2
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %129 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %132 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %126, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %127, i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %120, %117
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @NUM_ADDR_RESEND_ATTEMPTS, align 4
  %142 = icmp slt i32 %140, %141
  br label %143

143:                                              ; preds = %139, %136
  %144 = phi i1 [ false, %136 ], [ %142, %139 ]
  br i1 %144, label %19, label %145

145:                                              ; preds = %143
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @NUM_ADDR_RESEND_ATTEMPTS, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %145
  %150 = load i32, i32* %11, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %154 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %153, i32 0, i32 2
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %11, align 4
  %158 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %156, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %157)
  br label %171

159:                                              ; preds = %149, %145
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @NUM_ADDR_RESEND_ATTEMPTS, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %165 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %164, i32 0, i32 2
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* @NUM_ADDR_RESEND_ATTEMPTS, align 4
  %169 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %167, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %168)
  br label %335

170:                                              ; preds = %159
  br label %171

171:                                              ; preds = %170, %152
  %172 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %173 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @I2C_M_RD, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %232

178:                                              ; preds = %171
  store i32 0, i32* %9, align 4
  br label %179

179:                                              ; preds = %228, %178
  %180 = load i32, i32* %9, align 4
  %181 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %182 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %231

185:                                              ; preds = %179
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %188 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sub nsw i32 %189, 1
  %191 = icmp eq i32 %186, %190
  br i1 %191, label %192, label %208

192:                                              ; preds = %185
  %193 = load i32, i32* @I2C_CR_PERIPHERAL_ENABLE, align 4
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %6, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = load i32, i32* @I2C_CR_STOP_ENABLE, align 4
  %198 = load i32, i32* %8, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %196, %192
  %201 = load i32, i32* %8, align 4
  %202 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %203 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @I2C_CR, align 8
  %206 = add nsw i64 %204, %205
  %207 = call i32 @stu300_wr8(i32 %201, i64 %206)
  br label %208

208:                                              ; preds = %200, %185
  %209 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %210 = load i32, i32* @STU300_EVENT_7, align 4
  %211 = call i32 @stu300_await_event(%struct.stu300_dev* %209, i32 %210)
  store i32 %211, i32* %10, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  br label %335

215:                                              ; preds = %208
  %216 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %217 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @I2C_DR, align 8
  %220 = add nsw i64 %218, %219
  %221 = call i32 @stu300_r8(i64 %220)
  %222 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %223 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  store i32 %221, i32* %227, align 4
  br label %228

228:                                              ; preds = %215
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %9, align 4
  br label %179

231:                                              ; preds = %179
  br label %311

232:                                              ; preds = %171
  store i32 0, i32* %9, align 4
  br label %233

233:                                              ; preds = %266, %232
  %234 = load i32, i32* %9, align 4
  %235 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %236 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %269

239:                                              ; preds = %233
  %240 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %241 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %248 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @I2C_DR, align 8
  %251 = add nsw i64 %249, %250
  %252 = call i32 @stu300_wr8(i32 %246, i64 %251)
  %253 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %254 = load i32, i32* @STU300_EVENT_8, align 4
  %255 = call i32 @stu300_await_event(%struct.stu300_dev* %253, i32 %254)
  store i32 %255, i32* %10, align 4
  %256 = load i32, i32* %10, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %239
  %259 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %260 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %259, i32 0, i32 2
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 0
  %263 = load i32, i32* %10, align 4
  %264 = call i32 (i32*, i8*, ...) @dev_err(i32* %262, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %263)
  br label %335

265:                                              ; preds = %239
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %9, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %9, align 4
  br label %233

269:                                              ; preds = %233
  %270 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %271 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %295, label %276

276:                                              ; preds = %269
  %277 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %278 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @I2C_SR2, align 8
  %281 = add nsw i64 %279, %280
  %282 = call i32 @stu300_r8(i64 %281)
  %283 = load i32, i32* @I2C_SR2_AF_IND, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %294

286:                                              ; preds = %276
  %287 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %288 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %287, i32 0, i32 2
  %289 = load %struct.TYPE_2__*, %struct.TYPE_2__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 0
  %291 = call i32 (i32*, i8*, ...) @dev_err(i32* %290, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %292 = load i32, i32* @EIO, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %10, align 4
  br label %335

294:                                              ; preds = %276
  br label %295

295:                                              ; preds = %294, %269
  %296 = load i32, i32* %6, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %310

298:                                              ; preds = %295
  %299 = load i32, i32* @I2C_CR_PERIPHERAL_ENABLE, align 4
  store i32 %299, i32* %8, align 4
  %300 = load i32, i32* @I2C_CR_STOP_ENABLE, align 4
  %301 = load i32, i32* %8, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %8, align 4
  %303 = load i32, i32* %8, align 4
  %304 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %305 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @I2C_CR, align 8
  %308 = add nsw i64 %306, %307
  %309 = call i32 @stu300_wr8(i32 %303, i64 %308)
  br label %310

310:                                              ; preds = %298, %295
  br label %311

311:                                              ; preds = %310, %231
  %312 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %313 = call i32 @stu300_wait_while_busy(%struct.stu300_dev* %312)
  store i32 %313, i32* %10, align 4
  %314 = load i32, i32* %10, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %311
  %317 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %318 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %317, i32 0, i32 2
  %319 = load %struct.TYPE_2__*, %struct.TYPE_2__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 0
  %321 = call i32 (i32*, i8*, ...) @dev_err(i32* %320, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  br label %335

322:                                              ; preds = %311
  %323 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %324 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @I2C_SR2, align 8
  %327 = add nsw i64 %325, %326
  %328 = call i32 @stu300_r8(i64 %327)
  store i32 %328, i32* %8, align 4
  %329 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %330 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @I2C_SR1, align 8
  %333 = add nsw i64 %331, %332
  %334 = call i32 @stu300_r8(i64 %333)
  store i32 %334, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %335

335:                                              ; preds = %322, %316, %286, %258, %214, %163, %48, %33
  %336 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %337 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %336, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @I2C_CR, align 8
  %340 = add nsw i64 %338, %339
  %341 = call i32 @stu300_wr8(i32 0, i64 %340)
  %342 = load %struct.stu300_dev*, %struct.stu300_dev** %12, align 8
  %343 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @clk_disable(i32 %344)
  %346 = load i32, i32* %10, align 4
  ret i32 %346
}

declare dso_local %struct.stu300_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @stu300_wait_while_busy(%struct.stu300_dev*) #1

declare dso_local i32 @stu300_init_hw(%struct.stu300_dev*) #1

declare dso_local i32 @stu300_start_and_await_event(%struct.stu300_dev*, i32, i32) #1

declare dso_local i32 @stu300_send_address(%struct.stu300_dev*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @stu300_wr8(i32, i64) #1

declare dso_local i32 @stu300_await_event(%struct.stu300_dev*, i32) #1

declare dso_local i32 @stu300_r8(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
