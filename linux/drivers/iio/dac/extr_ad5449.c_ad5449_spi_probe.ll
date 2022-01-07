; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5449.c_ad5449_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5449.c_ad5449_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.spi_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.ad5449_platform_data* }
%struct.ad5449_platform_data = type { i32, i64 }
%struct.spi_device_id = type { i64, i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.ad5449 = type { i32, %struct.TYPE_9__*, %struct.TYPE_11__*, %struct.spi_device* }
%struct.TYPE_9__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ad5449_chip_info = common dso_local global %struct.TYPE_11__* null, align 8
@ad5449_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@AD5449_CTRL_HCLR_TO_MIDSCALE = common dso_local global i32 0, align 4
@AD5449_CTRL_SDO_OFFSET = common dso_local global i32 0, align 4
@AD5449_SDO_DISABLED = common dso_local global i32 0, align 4
@AD5449_CMD_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad5449_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5449_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad5449_platform_data*, align 8
  %5 = alloca %struct.spi_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ad5449*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.ad5449_platform_data*, %struct.ad5449_platform_data** %13, align 8
  store %struct.ad5449_platform_data* %14, %struct.ad5449_platform_data** %4, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %15)
  store %struct.spi_device_id* %16, %struct.spi_device_id** %5, align 8
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 0
  %19 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_10__* %18, i32 32)
  store %struct.iio_dev* %19, %struct.iio_dev** %6, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %21 = icmp eq %struct.iio_dev* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %183

25:                                               ; preds = %1
  %26 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %27 = call %struct.ad5449* @iio_priv(%struct.iio_dev* %26)
  store %struct.ad5449* %27, %struct.ad5449** %7, align 8
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %30 = call i32 @spi_set_drvdata(%struct.spi_device* %28, %struct.iio_dev* %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ad5449_chip_info, align 8
  %32 = load %struct.spi_device_id*, %struct.spi_device_id** %5, align 8
  %33 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i64 %34
  %36 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %37 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %36, i32 0, i32 2
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %37, align 8
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %40 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %39, i32 0, i32 3
  store %struct.spi_device* %38, %struct.spi_device** %40, align 8
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %60, %25
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %44 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %43, i32 0, i32 2
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %42, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %41
  %50 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @ad5449_vref_name(%struct.ad5449* %50, i32 %51)
  %53 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %54 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %53, i32 0, i32 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 %52, i32* %59, align 4
  br label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %41

63:                                               ; preds = %41
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 0
  %66 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %67 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %66, i32 0, i32 2
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %72 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = call i32 @devm_regulator_bulk_get(%struct.TYPE_10__* %65, i32 %70, %struct.TYPE_9__* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %63
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %2, align 4
  br label %183

79:                                               ; preds = %63
  %80 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %81 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %80, i32 0, i32 2
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %86 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = call i32 @regulator_bulk_enable(i32 %84, %struct.TYPE_9__* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %2, align 4
  br label %183

93:                                               ; preds = %79
  %94 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %95 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %94, i32 0, i32 0
  %96 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %97 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %98, align 8
  %99 = load %struct.spi_device_id*, %struct.spi_device_id** %5, align 8
  %100 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %103 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %105 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %104, i32 0, i32 3
  store i32* @ad5449_info, i32** %105, align 8
  %106 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %107 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %108 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %110 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %109, i32 0, i32 2
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %115 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %117 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %116, i32 0, i32 2
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %122 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %124 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %123, i32 0, i32 2
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %165

129:                                              ; preds = %93
  store i32 0, i32* %10, align 4
  %130 = load %struct.ad5449_platform_data*, %struct.ad5449_platform_data** %4, align 8
  %131 = icmp ne %struct.ad5449_platform_data* %130, null
  br i1 %131, label %132, label %157

132:                                              ; preds = %129
  %133 = load %struct.ad5449_platform_data*, %struct.ad5449_platform_data** %4, align 8
  %134 = getelementptr inbounds %struct.ad5449_platform_data, %struct.ad5449_platform_data* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* @AD5449_CTRL_HCLR_TO_MIDSCALE, align 4
  %139 = load i32, i32* %10, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %137, %132
  %142 = load %struct.ad5449_platform_data*, %struct.ad5449_platform_data** %4, align 8
  %143 = getelementptr inbounds %struct.ad5449_platform_data, %struct.ad5449_platform_data* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @AD5449_CTRL_SDO_OFFSET, align 4
  %146 = shl i32 %144, %145
  %147 = load i32, i32* %10, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %10, align 4
  %149 = load %struct.ad5449_platform_data*, %struct.ad5449_platform_data** %4, align 8
  %150 = getelementptr inbounds %struct.ad5449_platform_data, %struct.ad5449_platform_data* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @AD5449_SDO_DISABLED, align 4
  %153 = icmp ne i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %156 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  br label %160

157:                                              ; preds = %129
  %158 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %159 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  br label %160

160:                                              ; preds = %157, %141
  %161 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %162 = load i32, i32* @AD5449_CMD_CTRL, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @ad5449_write(%struct.iio_dev* %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %160, %93
  %166 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %167 = call i32 @iio_device_register(%struct.iio_dev* %166)
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %172

171:                                              ; preds = %165
  store i32 0, i32* %2, align 4
  br label %183

172:                                              ; preds = %170
  %173 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %174 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %173, i32 0, i32 2
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.ad5449*, %struct.ad5449** %7, align 8
  %179 = getelementptr inbounds %struct.ad5449, %struct.ad5449* %178, i32 0, i32 1
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = call i32 @regulator_bulk_disable(i32 %177, %struct.TYPE_9__* %180)
  %182 = load i32, i32* %9, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %172, %171, %91, %77, %22
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.ad5449* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @ad5449_vref_name(%struct.ad5449*, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_10__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ad5449_write(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
