; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp320x.c_mcp320x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp320x.c_mcp320x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcp320x_chip_info = type { i32, i32, i32 }
%struct.spi_device = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_10__* }
%struct.mcp320x = type { i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_8__*, i32, i32, i32, %struct.mcp320x_chip_info*, %struct.spi_device* }
%struct.TYPE_8__ = type { i32, i32, i32, i32* }
%struct.TYPE_9__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@mcp320x_info = common dso_local global i32 0, align 4
@mcp320x_chip_infos = common dso_local global %struct.mcp320x_chip_info* null, align 8
@SPI_CPOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mcp320x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp320x_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.mcp320x*, align 8
  %6 = alloca %struct.mcp320x_chip_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 1
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_10__* %10, i32 80)
  store %struct.iio_dev* %11, %struct.iio_dev** %4, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %195

17:                                               ; preds = %1
  %18 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %19 = call %struct.mcp320x* @iio_priv(%struct.iio_dev* %18)
  store %struct.mcp320x* %19, %struct.mcp320x** %5, align 8
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %22 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %21, i32 0, i32 9
  store %struct.spi_device* %20, %struct.spi_device** %22, align 8
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 1
  %25 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %26 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %27, align 8
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = call %struct.TYPE_9__* @spi_get_device_id(%struct.spi_device* %35)
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %42 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 2
  store i32* @mcp320x_info, i32** %45, align 8
  %46 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %47 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %48 = call i32 @spi_set_drvdata(%struct.spi_device* %46, %struct.iio_dev* %47)
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = call %struct.TYPE_9__* @spi_get_device_id(%struct.spi_device* %49)
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load %struct.mcp320x_chip_info*, %struct.mcp320x_chip_info** @mcp320x_chip_infos, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mcp320x_chip_info, %struct.mcp320x_chip_info* %53, i64 %55
  store %struct.mcp320x_chip_info* %56, %struct.mcp320x_chip_info** %6, align 8
  %57 = load %struct.mcp320x_chip_info*, %struct.mcp320x_chip_info** %6, align 8
  %58 = getelementptr inbounds %struct.mcp320x_chip_info, %struct.mcp320x_chip_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.mcp320x_chip_info*, %struct.mcp320x_chip_info** %6, align 8
  %63 = getelementptr inbounds %struct.mcp320x_chip_info, %struct.mcp320x_chip_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.mcp320x_chip_info*, %struct.mcp320x_chip_info** %6, align 8
  %68 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %69 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %68, i32 0, i32 8
  store %struct.mcp320x_chip_info* %67, %struct.mcp320x_chip_info** %69, align 8
  %70 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %71 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %70, i32 0, i32 7
  %72 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %73 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %72, i32 0, i32 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  store i32* %71, i32** %76, align 8
  %77 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %78 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %77, i32 0, i32 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32 4, i32* %81, align 8
  %82 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %83 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %86 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %85, i32 0, i32 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  store i32 %84, i32* %89, align 8
  %90 = load %struct.mcp320x_chip_info*, %struct.mcp320x_chip_info** %6, align 8
  %91 = getelementptr inbounds %struct.mcp320x_chip_info, %struct.mcp320x_chip_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @DIV_ROUND_UP(i32 %92, i32 8)
  %94 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %95 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %94, i32 0, i32 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i32 %93, i32* %98, align 8
  %99 = load %struct.mcp320x_chip_info*, %struct.mcp320x_chip_info** %6, align 8
  %100 = getelementptr inbounds %struct.mcp320x_chip_info, %struct.mcp320x_chip_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %111

103:                                              ; preds = %17
  %104 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %105 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %104, i32 0, i32 5
  %106 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %107 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %106, i32 0, i32 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 1
  %110 = call i32 @spi_message_init_with_transfers(i32* %105, %struct.TYPE_8__* %109, i32 1)
  br label %122

111:                                              ; preds = %17
  %112 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %113 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %112, i32 0, i32 5
  %114 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %115 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %114, i32 0, i32 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %118 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %117, i32 0, i32 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %119)
  %121 = call i32 @spi_message_init_with_transfers(i32* %113, %struct.TYPE_8__* %116, i32 %120)
  br label %122

122:                                              ; preds = %111, %103
  %123 = load i32, i32* %8, align 4
  switch i32 %123, label %154 [
    i32 131, label %124
    i32 130, label %124
    i32 129, label %124
    i32 128, label %124
  ]

124:                                              ; preds = %122, %122, %122, %122
  %125 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %126 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @SPI_CPOL, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %124
  %132 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %133 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %132, i32 0, i32 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 1
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %131, %124
  %140 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %141 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  store i32 8, i32* %142, align 4
  %143 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %144 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %143, i32 0, i32 3
  %145 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %146 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %145, i32 0, i32 2
  %147 = call i32 @spi_message_init_with_transfers(i32* %144, %struct.TYPE_8__* %146, i32 1)
  %148 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @mcp320x_adc_conversion(%struct.mcp320x* %148, i32 0, i32 1, i32 %149, i32* %7)
  %151 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @mcp320x_adc_conversion(%struct.mcp320x* %151, i32 0, i32 1, i32 %152, i32* %7)
  br label %154

154:                                              ; preds = %139, %122
  %155 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %156 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %155, i32 0, i32 1
  %157 = call i32 @devm_regulator_get(%struct.TYPE_10__* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %158 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %159 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %161 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i64 @IS_ERR(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %154
  %166 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %167 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @PTR_ERR(i32 %168)
  store i32 %169, i32* %2, align 4
  br label %195

170:                                              ; preds = %154
  %171 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %172 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @regulator_enable(i32 %173)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %170
  %178 = load i32, i32* %7, align 4
  store i32 %178, i32* %2, align 4
  br label %195

179:                                              ; preds = %170
  %180 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %181 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %180, i32 0, i32 1
  %182 = call i32 @mutex_init(i32* %181)
  %183 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %184 = call i32 @iio_device_register(%struct.iio_dev* %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  br label %189

188:                                              ; preds = %179
  store i32 0, i32* %2, align 4
  br label %195

189:                                              ; preds = %187
  %190 = load %struct.mcp320x*, %struct.mcp320x** %5, align 8
  %191 = getelementptr inbounds %struct.mcp320x, %struct.mcp320x* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @regulator_disable(i32 %192)
  %194 = load i32, i32* %7, align 4
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %189, %188, %177, %165, %14
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.mcp320x* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.TYPE_9__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @spi_message_init_with_transfers(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @mcp320x_adc_conversion(%struct.mcp320x*, i32, i32, i32, i32*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
