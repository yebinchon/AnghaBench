; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max3191x.c_max3191x_readout_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max3191x.c_max3191x_readout_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max3191x_chip = type { i32, i64, i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.gpio_desc** }
%struct.gpio_desc = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.spi_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"SPI receive error %d\0A\00", align 1
@STATUS_BYTE_ENABLED = common dso_local global i64 0, align 8
@max3191x_crc8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"chip %d: CRC error\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"chip %d: overtemperature\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"chip %d: undervoltage\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"chip %d: voltage warn\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"GPIO read error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"chip %d: fault\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max3191x_chip*)* @max3191x_readout_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max3191x_readout_locked(%struct.max3191x_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max3191x_chip*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gpio_desc*, align 8
  store %struct.max3191x_chip* %0, %struct.max3191x_chip** %3, align 8
  %13 = load %struct.max3191x_chip*, %struct.max3191x_chip** %3, align 8
  %14 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %13, i32 0, i32 11
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call %struct.spi_device* @to_spi_device(%struct.device* %17)
  store %struct.spi_device* %18, %struct.spi_device** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %20 = load %struct.max3191x_chip*, %struct.max3191x_chip** %3, align 8
  %21 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %20, i32 0, i32 10
  %22 = call i32 @spi_sync(%struct.spi_device* %19, i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dev_err_ratelimited(%struct.device* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %217

30:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %213, %30
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.max3191x_chip*, %struct.max3191x_chip** %3, align 8
  %34 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %216

37:                                               ; preds = %31
  %38 = load %struct.max3191x_chip*, %struct.max3191x_chip** %3, align 8
  %39 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @STATUS_BYTE_ENABLED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %146

43:                                               ; preds = %37
  %44 = load %struct.max3191x_chip*, %struct.max3191x_chip** %3, align 8
  %45 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load %struct.max3191x_chip*, %struct.max3191x_chip** %3, align 8
  %55 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %54, i32 0, i32 9
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 %59, 2
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, 248
  %67 = load i32, i32* @max3191x_crc8, align 4
  %68 = call i32 @crc8(i32 %67, i32* %10, i32 1, i32 0)
  %69 = icmp ne i32 %66, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.max3191x_chip*, %struct.max3191x_chip** %3, align 8
  %73 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @__assign_bit(i32 %71, i32 %74, i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %43
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @dev_err_ratelimited(%struct.device* %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %43
  %84 = load i32, i32* %11, align 4
  %85 = ashr i32 %84, 1
  %86 = and i32 %85, 1
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.max3191x_chip*, %struct.max3191x_chip** %3, align 8
  %89 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @__assign_bit(i32 %87, i32 %90, i32 %91)
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %83
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @dev_err_ratelimited(%struct.device* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95, %83
  %100 = load %struct.max3191x_chip*, %struct.max3191x_chip** %3, align 8
  %101 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %145, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %11, align 4
  %106 = ashr i32 %105, 2
  %107 = and i32 %106, 1
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.max3191x_chip*, %struct.max3191x_chip** %3, align 8
  %113 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @__assign_bit(i32 %111, i32 %114, i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %104
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @dev_err_ratelimited(%struct.device* %120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %119, %104
  %124 = load i32, i32* %11, align 4
  %125 = and i32 %124, 1
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.max3191x_chip*, %struct.max3191x_chip** %3, align 8
  %131 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @__assign_bit(i32 %129, i32 %132, i32 %133)
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %123
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = load %struct.device*, %struct.device** %4, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @dev_warn_ratelimited(%struct.device* %141, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %140, %137, %123
  br label %145

145:                                              ; preds = %144, %99
  br label %146

146:                                              ; preds = %145, %37
  %147 = load %struct.max3191x_chip*, %struct.max3191x_chip** %3, align 8
  %148 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %147, i32 0, i32 3
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = icmp ne %struct.TYPE_6__* %149, null
  br i1 %150, label %151, label %212

151:                                              ; preds = %146
  %152 = load %struct.max3191x_chip*, %struct.max3191x_chip** %3, align 8
  %153 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %212, label %156

156:                                              ; preds = %151
  %157 = load %struct.max3191x_chip*, %struct.max3191x_chip** %3, align 8
  %158 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %157, i32 0, i32 3
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %171

163:                                              ; preds = %156
  %164 = load %struct.max3191x_chip*, %struct.max3191x_chip** %3, align 8
  %165 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %164, i32 0, i32 3
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load %struct.gpio_desc**, %struct.gpio_desc*** %167, align 8
  %169 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %168, i64 0
  %170 = load %struct.gpio_desc*, %struct.gpio_desc** %169, align 8
  br label %181

171:                                              ; preds = %156
  %172 = load %struct.max3191x_chip*, %struct.max3191x_chip** %3, align 8
  %173 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %172, i32 0, i32 3
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load %struct.gpio_desc**, %struct.gpio_desc*** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %176, i64 %178
  %180 = load %struct.gpio_desc*, %struct.gpio_desc** %179, align 8
  br label %181

181:                                              ; preds = %171, %163
  %182 = phi %struct.gpio_desc* [ %170, %163 ], [ %180, %171 ]
  store %struct.gpio_desc* %182, %struct.gpio_desc** %12, align 8
  %183 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %184 = call i32 @gpiod_get_value_cansleep(%struct.gpio_desc* %183)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %181
  %188 = load %struct.device*, %struct.device** %4, align 8
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @dev_err_ratelimited(%struct.device* %188, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %6, align 4
  store i32 %191, i32* %2, align 4
  br label %217

192:                                              ; preds = %181
  %193 = load i32, i32* %7, align 4
  %194 = load %struct.max3191x_chip*, %struct.max3191x_chip** %3, align 8
  %195 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %6, align 4
  %198 = call i32 @__assign_bit(i32 %193, i32 %196, i32 %197)
  %199 = load i32, i32* %6, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %192
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %211, label %204

204:                                              ; preds = %201
  %205 = load i32, i32* %8, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %204
  %208 = load %struct.device*, %struct.device** %4, align 8
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @dev_err_ratelimited(%struct.device* %208, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %209)
  br label %211

211:                                              ; preds = %207, %204, %201, %192
  br label %212

212:                                              ; preds = %211, %151, %146
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %7, align 4
  br label %31

216:                                              ; preds = %31
  store i32 0, i32* %2, align 4
  br label %217

217:                                              ; preds = %216, %187, %25
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, i32*) #1

declare dso_local i32 @dev_err_ratelimited(%struct.device*, i8*, i32) #1

declare dso_local i32 @crc8(i32, i32*, i32, i32) #1

declare dso_local i32 @__assign_bit(i32, i32, i32) #1

declare dso_local i32 @dev_warn_ratelimited(%struct.device*, i8*, i32) #1

declare dso_local i32 @gpiod_get_value_cansleep(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
