; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-wmt.c_wmt_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-wmt.c_wmt_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.wmt_i2c_dev = type { i64, i64, i32 }

@I2C_M_NOSTART = common dso_local global i32 0, align 4
@REG_CR = common dso_local global i64 0, align 8
@CR_TX_END = common dso_local global i32 0, align 4
@CR_TX_NEXT_NO_ACK = common dso_local global i32 0, align 4
@CR_CPU_RDY = common dso_local global i32 0, align 4
@I2C_MODE_STANDARD = common dso_local global i64 0, align 8
@TCR_STANDARD_MODE = common dso_local global i32 0, align 4
@TCR_FAST_MODE = common dso_local global i32 0, align 4
@TCR_MASTER_READ = common dso_local global i32 0, align 4
@TCR_SLAVE_ADDR_MASK = common dso_local global i32 0, align 4
@REG_TCR = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@REG_CDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @wmt_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmt_i2c_read(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmt_i2c_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %15 = call %struct.wmt_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %14)
  store %struct.wmt_i2c_dev* %15, %struct.wmt_i2c_dev** %8, align 8
  store i64 0, i64* %13, align 8
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
  br label %248

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %3
  %31 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %32 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @REG_CR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readw(i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @CR_TX_END, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %43 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @REG_CR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writew(i32 %41, i64 %46)
  %48 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %49 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @REG_CR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readw(i64 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @CR_TX_NEXT_NO_ACK, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %60 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @REG_CR, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writew(i32 %58, i64 %63)
  %65 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @I2C_M_NOSTART, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %88, label %71

71:                                               ; preds = %30
  %72 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %73 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @REG_CR, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @readw(i64 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @CR_CPU_RDY, align 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %83 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @REG_CR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writew(i32 %81, i64 %86)
  br label %88

88:                                               ; preds = %71, %30
  %89 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %110

93:                                               ; preds = %88
  %94 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %95 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @REG_CR, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @readw(i64 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* @CR_TX_NEXT_NO_ACK, align 4
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %105 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @REG_CR, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writew(i32 %103, i64 %108)
  br label %110

110:                                              ; preds = %93, %88
  %111 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %112 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %111, i32 0, i32 2
  %113 = call i32 @reinit_completion(i32* %112)
  %114 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %115 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @I2C_MODE_STANDARD, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = load i32, i32* @TCR_STANDARD_MODE, align 4
  store i32 %120, i32* %10, align 4
  br label %123

121:                                              ; preds = %110
  %122 = load i32, i32* @TCR_FAST_MODE, align 4
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = load i32, i32* @TCR_MASTER_READ, align 4
  %125 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %126 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @TCR_SLAVE_ADDR_MASK, align 4
  %129 = and i32 %127, %128
  %130 = or i32 %124, %129
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %135 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @REG_TCR, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writew(i32 %133, i64 %138)
  %140 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %141 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @I2C_M_NOSTART, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %123
  %147 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %148 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @REG_CR, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @readw(i64 %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* @CR_CPU_RDY, align 4
  %154 = load i32, i32* %9, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %158 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @REG_CR, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @writew(i32 %156, i64 %161)
  br label %163

163:                                              ; preds = %146, %123
  br label %164

164:                                              ; preds = %246, %163
  %165 = load i64, i64* %13, align 8
  %166 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %167 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = icmp ult i64 %165, %169
  br i1 %170, label %171, label %247

171:                                              ; preds = %164
  %172 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %173 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %172, i32 0, i32 2
  %174 = call i32 @msecs_to_jiffies(i32 500)
  %175 = call i64 @wait_for_completion_timeout(i32* %173, i32 %174)
  store i64 %175, i64* %12, align 8
  %176 = load i64, i64* %12, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %171
  %179 = load i32, i32* @ETIMEDOUT, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %4, align 4
  br label %248

181:                                              ; preds = %171
  %182 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %183 = call i32 @wmt_check_status(%struct.wmt_i2c_dev* %182)
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i32, i32* %11, align 4
  store i32 %187, i32* %4, align 4
  br label %248

188:                                              ; preds = %181
  %189 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %190 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @REG_CDR, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @readw(i64 %193)
  %195 = ashr i32 %194, 8
  %196 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %197 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* %13, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32 %195, i32* %200, align 4
  %201 = load i64, i64* %13, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %13, align 8
  %203 = load i64, i64* %13, align 8
  %204 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %205 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = icmp eq i64 %203, %208
  br i1 %209, label %210, label %229

210:                                              ; preds = %188
  %211 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %212 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @REG_CR, align 8
  %215 = add nsw i64 %213, %214
  %216 = call i32 @readw(i64 %215)
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* @CR_TX_NEXT_NO_ACK, align 4
  %218 = load i32, i32* @CR_CPU_RDY, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* %9, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %9, align 4
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %224 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @REG_CR, align 8
  %227 = add nsw i64 %225, %226
  %228 = call i32 @writew(i32 %222, i64 %227)
  br label %246

229:                                              ; preds = %188
  %230 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %231 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @REG_CR, align 8
  %234 = add nsw i64 %232, %233
  %235 = call i32 @readw(i64 %234)
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* @CR_CPU_RDY, align 4
  %237 = load i32, i32* %9, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %9, align 4
  %239 = load i32, i32* %9, align 4
  %240 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %8, align 8
  %241 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @REG_CR, align 8
  %244 = add nsw i64 %242, %243
  %245 = call i32 @writew(i32 %239, i64 %244)
  br label %246

246:                                              ; preds = %229, %210
  br label %164

247:                                              ; preds = %164
  store i32 0, i32* %4, align 4
  br label %248

248:                                              ; preds = %247, %186, %178, %27
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local %struct.wmt_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @wmt_i2c_wait_bus_not_busy(%struct.wmt_i2c_dev*) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wmt_check_status(%struct.wmt_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
