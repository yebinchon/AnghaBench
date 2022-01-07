; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-wmt.c_wmt_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-wmt.c_wmt_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }
%struct.wmt_i2c_dev = type { i64, i64, i32, i32 }

@I2C_M_NOSTART = common dso_local global i32 0, align 4
@REG_CDR = common dso_local global i64 0, align 8
@REG_CR = common dso_local global i64 0, align 8
@CR_TX_END = common dso_local global i32 0, align 4
@CR_CPU_RDY = common dso_local global i32 0, align 4
@I2C_MODE_STANDARD = common dso_local global i64 0, align 8
@TCR_STANDARD_MODE = common dso_local global i32 0, align 4
@TCR_FAST_MODE = common dso_local global i32 0, align 4
@TCR_MASTER_WRITE = common dso_local global i32 0, align 4
@TCR_SLAVE_ADDR_MASK = common dso_local global i32 0, align 4
@REG_TCR = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@REG_CSR = common dso_local global i64 0, align 8
@CSR_RCV_ACK_MASK = common dso_local global i32 0, align 4
@CSR_RCV_NOT_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"write RCV NACK error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @wmt_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmt_i2c_write(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmt_i2c_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %15 = call %struct.wmt_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %14)
  store %struct.wmt_i2c_dev* %15, %struct.wmt_i2c_dev** %8, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @I2C_M_NOSTART, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %24 = call i32 @wmt_i2c_wait_bus_not_busy(%struct.wmt_i2c_dev* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %256

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %3
  %31 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  store i32 -1, i32* %13, align 4
  %36 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %37 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @REG_CDR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writew(i32 0, i64 %40)
  br label %55

42:                                               ; preds = %30
  %43 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 255
  %49 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %50 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @REG_CDR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writew(i32 %48, i64 %53)
  br label %55

55:                                               ; preds = %42, %35
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @I2C_M_NOSTART, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %96, label %62

62:                                               ; preds = %55
  %63 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %64 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @REG_CR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @readw(i64 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* @CR_TX_END, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %75 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @REG_CR, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writew(i32 %73, i64 %78)
  %80 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %81 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @REG_CR, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @readw(i64 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* @CR_CPU_RDY, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %91 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @REG_CR, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writew(i32 %89, i64 %94)
  br label %96

96:                                               ; preds = %62, %55
  %97 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %98 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %97, i32 0, i32 3
  %99 = call i32 @reinit_completion(i32* %98)
  %100 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %101 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @I2C_MODE_STANDARD, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @TCR_STANDARD_MODE, align 4
  store i32 %106, i32* %10, align 4
  br label %109

107:                                              ; preds = %96
  %108 = load i32, i32* @TCR_FAST_MODE, align 4
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = load i32, i32* @TCR_MASTER_WRITE, align 4
  %111 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %112 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @TCR_SLAVE_ADDR_MASK, align 4
  %115 = and i32 %113, %114
  %116 = or i32 %110, %115
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %121 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @REG_TCR, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writew(i32 %119, i64 %124)
  %126 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %127 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @I2C_M_NOSTART, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %109
  %133 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %134 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @REG_CR, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @readw(i64 %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* @CR_CPU_RDY, align 4
  %140 = load i32, i32* %9, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %144 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @REG_CR, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writew(i32 %142, i64 %147)
  br label %149

149:                                              ; preds = %132, %109
  br label %150

150:                                              ; preds = %254, %149
  %151 = load i32, i32* %13, align 4
  %152 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %153 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %255

156:                                              ; preds = %150
  %157 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %158 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %157, i32 0, i32 3
  %159 = call i32 @msecs_to_jiffies(i32 500)
  %160 = call i64 @wait_for_completion_timeout(i32* %158, i32 %159)
  store i64 %160, i64* %12, align 8
  %161 = load i64, i64* %12, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i32, i32* @ETIMEDOUT, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %4, align 4
  br label %256

166:                                              ; preds = %156
  %167 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %168 = call i32 @wmt_check_status(%struct.wmt_i2c_dev* %167)
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i32, i32* %11, align 4
  store i32 %172, i32* %4, align 4
  br label %256

173:                                              ; preds = %166
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %13, align 4
  %176 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %177 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @REG_CSR, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @readw(i64 %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @CSR_RCV_ACK_MASK, align 4
  %184 = and i32 %182, %183
  %185 = load i32, i32* @CSR_RCV_NOT_ACK, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %173
  %188 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %189 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @dev_dbg(i32 %190, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %192 = load i32, i32* @EIO, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %4, align 4
  br label %256

194:                                              ; preds = %173
  %195 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %196 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %212

199:                                              ; preds = %194
  %200 = load i32, i32* @CR_TX_END, align 4
  %201 = load i32, i32* @CR_CPU_RDY, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @CR_ENABLE, align 4
  %204 = or i32 %202, %203
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %207 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @REG_CR, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 @writew(i32 %205, i64 %210)
  br label %255

212:                                              ; preds = %194
  %213 = load i32, i32* %13, align 4
  %214 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %215 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %213, %216
  br i1 %217, label %218, label %230

218:                                              ; preds = %212
  %219 = load i32, i32* %7, align 4
  %220 = icmp ne i32 %219, 1
  br i1 %220, label %221, label %229

221:                                              ; preds = %218
  %222 = load i32, i32* @CR_ENABLE, align 4
  %223 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %224 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @REG_CR, align 8
  %227 = add nsw i64 %225, %226
  %228 = call i32 @writew(i32 %222, i64 %227)
  br label %229

229:                                              ; preds = %221, %218
  br label %254

230:                                              ; preds = %212
  %231 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %232 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = and i32 %237, 255
  %239 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %240 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @REG_CDR, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i32 @writew(i32 %238, i64 %243)
  %245 = load i32, i32* @CR_CPU_RDY, align 4
  %246 = load i32, i32* @CR_ENABLE, align 4
  %247 = or i32 %245, %246
  %248 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %249 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @REG_CR, align 8
  %252 = add nsw i64 %250, %251
  %253 = call i32 @writew(i32 %247, i64 %252)
  br label %254

254:                                              ; preds = %230, %229
  br label %150

255:                                              ; preds = %199, %150
  store i32 0, i32* %4, align 4
  br label %256

256:                                              ; preds = %255, %187, %171, %163, %27
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local %struct.wmt_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @wmt_i2c_wait_bus_not_busy(%struct.wmt_i2c_dev*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wmt_check_status(%struct.wmt_i2c_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
