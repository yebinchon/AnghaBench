; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5588-keys.c_adp5588_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5588-keys.c_adp5588_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adp5588_kpad_platform_data = type { i32, i32, i32, %struct.TYPE_2__*, i64, i32, i32, %struct.adp5588_gpio_platform_data* }
%struct.TYPE_2__ = type { i16 }
%struct.adp5588_gpio_platform_data = type { i32 }

@KP_GPIO1 = common dso_local global i64 0, align 8
@KP_GPIO2 = common dso_local global i64 0, align 8
@KP_GPIO3 = common dso_local global i64 0, align 8
@UNLOCK1 = common dso_local global i64 0, align 8
@UNLOCK2 = common dso_local global i64 0, align 8
@KEY_LCK_EC_STAT = common dso_local global i64 0, align 8
@ADP5588_K_LCK_EN = common dso_local global i32 0, align 4
@KEYP_MAX_EVENT = common dso_local global i32 0, align 4
@Key_EVENTA = common dso_local global i32 0, align 4
@GPI_PIN_ROW_END = common dso_local global i16 0, align 2
@GPI_PIN_ROW_BASE = common dso_local global i16 0, align 2
@GPI_PIN_COL_BASE = common dso_local global i16 0, align 2
@GPI_EM1 = common dso_local global i64 0, align 8
@GPI_EM2 = common dso_local global i64 0, align 8
@GPI_EM3 = common dso_local global i64 0, align 8
@ADP5588_MAXGPIO = common dso_local global i32 0, align 4
@GPIO_PULL1 = common dso_local global i64 0, align 8
@INT_STAT = common dso_local global i64 0, align 8
@ADP5588_CMP2_INT = common dso_local global i32 0, align 4
@ADP5588_CMP1_INT = common dso_local global i32 0, align 4
@ADP5588_OVR_FLOW_INT = common dso_local global i32 0, align 4
@ADP5588_K_LCK_INT = common dso_local global i32 0, align 4
@ADP5588_GPI_INT = common dso_local global i32 0, align 4
@ADP5588_KE_INT = common dso_local global i32 0, align 4
@CFG = common dso_local global i64 0, align 8
@ADP5588_INT_CFG = common dso_local global i32 0, align 4
@ADP5588_OVR_FLOW_IEN = common dso_local global i32 0, align 4
@ADP5588_KE_IEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Write Error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @adp5588_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5588_setup(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.adp5588_kpad_platform_data*, align 8
  %5 = alloca %struct.adp5588_gpio_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call %struct.adp5588_kpad_platform_data* @dev_get_platdata(i32* %14)
  store %struct.adp5588_kpad_platform_data* %15, %struct.adp5588_kpad_platform_data** %4, align 8
  %16 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %4, align 8
  %17 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %16, i32 0, i32 7
  %18 = load %struct.adp5588_gpio_platform_data*, %struct.adp5588_gpio_platform_data** %17, align 8
  store %struct.adp5588_gpio_platform_data* %18, %struct.adp5588_gpio_platform_data** %5, align 8
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  store i8 0, i8* %10, align 1
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = load i64, i64* @KP_GPIO1, align 8
  %21 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %4, align 8
  %22 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @KP_SEL(i32 %23)
  %25 = call i32 @adp5588_write(%struct.i2c_client* %19, i64 %20, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = load i64, i64* @KP_GPIO2, align 8
  %28 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %4, align 8
  %29 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @KP_SEL(i32 %30)
  %32 = and i32 %31, 255
  %33 = call i32 @adp5588_write(%struct.i2c_client* %26, i64 %27, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = load i64, i64* @KP_GPIO3, align 8
  %38 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %4, align 8
  %39 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @KP_SEL(i32 %40)
  %42 = ashr i32 %41, 8
  %43 = call i32 @adp5588_write(%struct.i2c_client* %36, i64 %37, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %4, align 8
  %47 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %1
  %51 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %52 = load i64, i64* @UNLOCK1, align 8
  %53 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %4, align 8
  %54 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @adp5588_write(%struct.i2c_client* %51, i64 %52, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %60 = load i64, i64* @UNLOCK2, align 8
  %61 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %4, align 8
  %62 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @adp5588_write(%struct.i2c_client* %59, i64 %60, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %68 = load i64, i64* @KEY_LCK_EC_STAT, align 8
  %69 = load i32, i32* @ADP5588_K_LCK_EN, align 4
  %70 = call i32 @adp5588_write(%struct.i2c_client* %67, i64 %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %50, %1
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %84, %73
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @KEYP_MAX_EVENT, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %80 = load i32, i32* @Key_EVENTA, align 4
  %81 = call i32 @adp5588_read(%struct.i2c_client* %79, i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %74

87:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %143, %87
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %4, align 8
  %91 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %146

94:                                               ; preds = %88
  %95 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %4, align 8
  %96 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %95, i32 0, i32 3
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i16, i16* %101, align 2
  store i16 %102, i16* %11, align 2
  %103 = load i16, i16* %11, align 2
  %104 = zext i16 %103 to i32
  %105 = load i16, i16* @GPI_PIN_ROW_END, align 2
  %106 = zext i16 %105 to i32
  %107 = icmp sle i32 %104, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %94
  %109 = load i16, i16* %11, align 2
  %110 = zext i16 %109 to i32
  %111 = load i16, i16* @GPI_PIN_ROW_BASE, align 2
  %112 = zext i16 %111 to i32
  %113 = sub nsw i32 %110, %112
  %114 = shl i32 1, %113
  %115 = load i8, i8* %8, align 1
  %116 = zext i8 %115 to i32
  %117 = or i32 %116, %114
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %8, align 1
  br label %142

119:                                              ; preds = %94
  %120 = load i16, i16* %11, align 2
  %121 = zext i16 %120 to i32
  %122 = load i16, i16* @GPI_PIN_COL_BASE, align 2
  %123 = zext i16 %122 to i32
  %124 = sub nsw i32 %121, %123
  %125 = shl i32 1, %124
  %126 = and i32 %125, 255
  %127 = load i8, i8* %9, align 1
  %128 = zext i8 %127 to i32
  %129 = or i32 %128, %126
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %9, align 1
  %131 = load i16, i16* %11, align 2
  %132 = zext i16 %131 to i32
  %133 = load i16, i16* @GPI_PIN_COL_BASE, align 2
  %134 = zext i16 %133 to i32
  %135 = sub nsw i32 %132, %134
  %136 = shl i32 1, %135
  %137 = ashr i32 %136, 8
  %138 = load i8, i8* %10, align 1
  %139 = zext i8 %138 to i32
  %140 = or i32 %139, %137
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %10, align 1
  br label %142

142:                                              ; preds = %119, %108
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %88

146:                                              ; preds = %88
  %147 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %4, align 8
  %148 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %173

151:                                              ; preds = %146
  %152 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %153 = load i64, i64* @GPI_EM1, align 8
  %154 = load i8, i8* %8, align 1
  %155 = zext i8 %154 to i32
  %156 = call i32 @adp5588_write(%struct.i2c_client* %152, i64 %153, i32 %155)
  %157 = load i32, i32* %7, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %7, align 4
  %159 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %160 = load i64, i64* @GPI_EM2, align 8
  %161 = load i8, i8* %9, align 1
  %162 = zext i8 %161 to i32
  %163 = call i32 @adp5588_write(%struct.i2c_client* %159, i64 %160, i32 %162)
  %164 = load i32, i32* %7, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %7, align 4
  %166 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %167 = load i64, i64* @GPI_EM3, align 8
  %168 = load i8, i8* %10, align 1
  %169 = zext i8 %168 to i32
  %170 = call i32 @adp5588_write(%struct.i2c_client* %166, i64 %167, i32 %169)
  %171 = load i32, i32* %7, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %151, %146
  %174 = load %struct.adp5588_gpio_platform_data*, %struct.adp5588_gpio_platform_data** %5, align 8
  %175 = icmp ne %struct.adp5588_gpio_platform_data* %174, null
  br i1 %175, label %176, label %203

176:                                              ; preds = %173
  store i32 0, i32* %6, align 4
  br label %177

177:                                              ; preds = %199, %176
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @ADP5588_MAXGPIO, align 4
  %180 = call i32 @ADP5588_BANK(i32 %179)
  %181 = icmp sle i32 %178, %180
  br i1 %181, label %182, label %202

182:                                              ; preds = %177
  %183 = load %struct.adp5588_gpio_platform_data*, %struct.adp5588_gpio_platform_data** %5, align 8
  %184 = getelementptr inbounds %struct.adp5588_gpio_platform_data, %struct.adp5588_gpio_platform_data* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %12, align 4
  %186 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %187 = load i64, i64* @GPIO_PULL1, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %187, %189
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* %6, align 4
  %193 = mul nsw i32 8, %192
  %194 = ashr i32 %191, %193
  %195 = and i32 %194, 255
  %196 = call i32 @adp5588_write(%struct.i2c_client* %186, i64 %190, i32 %195)
  %197 = load i32, i32* %7, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %7, align 4
  br label %199

199:                                              ; preds = %182
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  br label %177

202:                                              ; preds = %177
  br label %203

203:                                              ; preds = %202, %173
  %204 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %205 = load i64, i64* @INT_STAT, align 8
  %206 = load i32, i32* @ADP5588_CMP2_INT, align 4
  %207 = load i32, i32* @ADP5588_CMP1_INT, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @ADP5588_OVR_FLOW_INT, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @ADP5588_K_LCK_INT, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @ADP5588_GPI_INT, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @ADP5588_KE_INT, align 4
  %216 = or i32 %214, %215
  %217 = call i32 @adp5588_write(%struct.i2c_client* %204, i64 %205, i32 %216)
  %218 = load i32, i32* %7, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %7, align 4
  %220 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %221 = load i64, i64* @CFG, align 8
  %222 = load i32, i32* @ADP5588_INT_CFG, align 4
  %223 = load i32, i32* @ADP5588_OVR_FLOW_IEN, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @ADP5588_KE_IEN, align 4
  %226 = or i32 %224, %225
  %227 = call i32 @adp5588_write(%struct.i2c_client* %220, i64 %221, i32 %226)
  %228 = load i32, i32* %7, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %7, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %203
  %233 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %234 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %233, i32 0, i32 0
  %235 = call i32 @dev_err(i32* %234, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %236 = load i32, i32* %7, align 4
  store i32 %236, i32* %2, align 4
  br label %238

237:                                              ; preds = %203
  store i32 0, i32* %2, align 4
  br label %238

238:                                              ; preds = %237, %232
  %239 = load i32, i32* %2, align 4
  ret i32 %239
}

declare dso_local %struct.adp5588_kpad_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @adp5588_write(%struct.i2c_client*, i64, i32) #1

declare dso_local i32 @KP_SEL(i32) #1

declare dso_local i32 @adp5588_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADP5588_BANK(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
