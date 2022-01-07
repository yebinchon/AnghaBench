; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4371.c_adf4371_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4371.c_adf4371_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf4371_state = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32 }

@OUT_RF8_FREQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADF4371_MIN_VCO_FREQ = common dso_local global i64 0, align 8
@OUT_RF16_FREQ = common dso_local global i32 0, align 4
@OUT_RF32_FREQ = common dso_local global i32 0, align 4
@ADF4371_RF_DIV_SEL_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adf4371_state*, i64, i32)* @adf4371_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf4371_set_freq(%struct.adf4371_state* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adf4371_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adf4371_state* %0, %struct.adf4371_state** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %57 [
    i32 129, label %12
    i32 128, label %12
    i32 131, label %35
    i32 130, label %46
  ]

12:                                               ; preds = %3, %3
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* @OUT_RF8_FREQ, align 4
  %15 = call i32 @ADF4371_CHECK_RANGE(i64 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %245

20:                                               ; preds = %12
  %21 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %22 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %21, i32 0, i32 7
  store i32 0, i32* %22, align 8
  br label %23

23:                                               ; preds = %27, %20
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @ADF4371_MIN_VCO_FREQ, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = shl i64 %28, 1
  store i64 %29, i64* %6, align 8
  %30 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %31 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  br label %23

34:                                               ; preds = %23
  br label %60

35:                                               ; preds = %3
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @OUT_RF16_FREQ, align 4
  %38 = call i32 @ADF4371_CHECK_RANGE(i64 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %245

43:                                               ; preds = %35
  %44 = load i64, i64* %6, align 8
  %45 = lshr i64 %44, 1
  store i64 %45, i64* %6, align 8
  br label %60

46:                                               ; preds = %3
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* @OUT_RF32_FREQ, align 4
  %49 = call i32 @ADF4371_CHECK_RANGE(i64 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %245

54:                                               ; preds = %46
  %55 = load i64, i64* %6, align 8
  %56 = lshr i64 %55, 2
  store i64 %56, i64* %6, align 8
  br label %60

57:                                               ; preds = %3
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %245

60:                                               ; preds = %54, %43, %34
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %63 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %66 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %65, i32 0, i32 0
  %67 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %68 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %67, i32 0, i32 1
  %69 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %70 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %69, i32 0, i32 2
  %71 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %72 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %71, i32 0, i32 3
  %73 = call i32 @adf4371_pll_fract_n_compute(i64 %61, i32 %64, i32* %66, i32* %68, i32* %70, i32* %72)
  %74 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %75 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = ashr i32 %76, 8
  %78 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %79 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %77, i32* %81, align 4
  %82 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %83 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 64, i32* %85, align 4
  %86 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %87 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  store i32 0, i32* %89, align 4
  %90 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %91 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 255
  %94 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %95 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  store i32 %93, i32* %97, align 4
  %98 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %99 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 8
  %102 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %103 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 4
  store i32 %101, i32* %105, align 4
  %106 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %107 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 16
  %110 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %111 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 5
  store i32 %109, i32* %113, align 4
  %114 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %115 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, 127
  %118 = call i32 @ADF4371_FRAC2WORD_L(i32 %117)
  %119 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %120 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 24
  %123 = call i32 @ADF4371_FRAC1WORD(i32 %122)
  %124 = or i32 %118, %123
  %125 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %126 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 6
  store i32 %124, i32* %128, align 4
  %129 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %130 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = ashr i32 %131, 7
  %133 = call i32 @ADF4371_FRAC2WORD_H(i32 %132)
  %134 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %135 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 7
  store i32 %133, i32* %137, align 4
  %138 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %139 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 255
  %142 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %143 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 8
  store i32 %141, i32* %145, align 4
  %146 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %147 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = ashr i32 %148, 8
  %150 = call i32 @ADF4371_MOD2WORD(i32 %149)
  %151 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %152 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 9
  store i32 %150, i32* %154, align 4
  %155 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %156 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ADF4371_REG(i32 17)
  %159 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %160 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @regmap_bulk_write(i32 %157, i32 %158, i32* %161, i32 10)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %60
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %4, align 4
  br label %245

167:                                              ; preds = %60
  %168 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %169 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ADF4371_REG(i32 31)
  %172 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %173 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @regmap_write(i32 %170, i32 %171, i32 %174)
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %167
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %4, align 4
  br label %245

180:                                              ; preds = %167
  %181 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %182 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @ADF4371_REG(i32 36)
  %185 = load i32, i32* @ADF4371_RF_DIV_SEL_MSK, align 4
  %186 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %187 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @ADF4371_RF_DIV_SEL(i32 %188)
  %190 = call i32 @regmap_update_bits(i32 %183, i32 %184, i32 %185, i32 %189)
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %180
  %194 = load i32, i32* %10, align 4
  store i32 %194, i32* %4, align 4
  br label %245

195:                                              ; preds = %180
  %196 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %197 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = mul nsw i32 %198, 375
  %200 = call i32 @DIV_ROUND_UP(i32 700000, i32 %199)
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @clamp(i32 %201, i32 1, i32 255)
  store i32 %202, i32* %8, align 4
  %203 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %204 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @ADF4371_REG(i32 38)
  %207 = load i32, i32* %8, align 4
  %208 = call i32 @regmap_write(i32 %205, i32 %206, i32 %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %195
  %212 = load i32, i32* %10, align 4
  store i32 %212, i32* %4, align 4
  br label %245

213:                                              ; preds = %195
  %214 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %215 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %220 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  store i32 1, i32* %9, align 4
  br label %224

224:                                              ; preds = %223, %218, %213
  %225 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %226 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @ADF4371_REG(i32 43)
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @regmap_write(i32 %227, i32 %228, i32 %229)
  store i32 %230, i32* %10, align 4
  %231 = load i32, i32* %10, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %224
  %234 = load i32, i32* %10, align 4
  store i32 %234, i32* %4, align 4
  br label %245

235:                                              ; preds = %224
  %236 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %237 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @ADF4371_REG(i32 16)
  %240 = load %struct.adf4371_state*, %struct.adf4371_state** %5, align 8
  %241 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = and i32 %242, 255
  %244 = call i32 @regmap_write(i32 %238, i32 %239, i32 %243)
  store i32 %244, i32* %4, align 4
  br label %245

245:                                              ; preds = %235, %233, %211, %193, %178, %165, %57, %51, %40, %17
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare dso_local i32 @ADF4371_CHECK_RANGE(i64, i32) #1

declare dso_local i32 @adf4371_pll_fract_n_compute(i64, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ADF4371_FRAC2WORD_L(i32) #1

declare dso_local i32 @ADF4371_FRAC1WORD(i32) #1

declare dso_local i32 @ADF4371_FRAC2WORD_H(i32) #1

declare dso_local i32 @ADF4371_MOD2WORD(i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @ADF4371_REG(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ADF4371_RF_DIV_SEL(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
