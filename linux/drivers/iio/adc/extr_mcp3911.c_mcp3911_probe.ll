; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3911.c_mcp3911_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3911.c_mcp3911_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* }
%struct.mcp3911 = type { i32*, i32*, i32, %struct.spi_device* }
%struct.TYPE_8__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to get regulator (%ld)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to get adc clk (%ld)\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to enable clki: %d\0A\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@mcp3911_info = common dso_local global i32 0, align 4
@mcp3911_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mcp3911_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp3911_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.mcp3911*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__* %8, i32 32)
  store %struct.iio_dev* %9, %struct.iio_dev** %4, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %194

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %17 = call %struct.mcp3911* @iio_priv(%struct.iio_dev* %16)
  store %struct.mcp3911* %17, %struct.mcp3911** %5, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %20 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %19, i32 0, i32 3
  store %struct.spi_device* %18, %struct.spi_device** %20, align 8
  %21 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %22 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %21, i32 0, i32 3
  %23 = load %struct.spi_device*, %struct.spi_device** %22, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = call i32* @devm_regulator_get_optional(%struct.TYPE_9__* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %27 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %29 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @IS_ERR(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %15
  %34 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %35 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @PTR_ERR(i32* %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %43 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %58

44:                                               ; preds = %33
  %45 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %46 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %45, i32 0, i32 3
  %47 = load %struct.spi_device*, %struct.spi_device** %46, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 0
  %49 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %50 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @PTR_ERR(i32* %51)
  %53 = call i32 @dev_err(%struct.TYPE_9__* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %55 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @PTR_ERR(i32* %56)
  store i32 %57, i32* %2, align 4
  br label %194

58:                                               ; preds = %41
  br label %69

59:                                               ; preds = %15
  %60 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %61 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @regulator_enable(i32* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %194

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %58
  %70 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %71 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %70, i32 0, i32 3
  %72 = load %struct.spi_device*, %struct.spi_device** %71, align 8
  %73 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %72, i32 0, i32 0
  %74 = call i32* @devm_clk_get(%struct.TYPE_9__* %73, i32* null)
  %75 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %76 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %75, i32 0, i32 1
  store i32* %74, i32** %76, align 8
  %77 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %78 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @IS_ERR(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %69
  %83 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %84 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @PTR_ERR(i32* %85)
  %87 = load i32, i32* @ENOENT, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %92 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %91, i32 0, i32 1
  store i32* null, i32** %92, align 8
  br label %107

93:                                               ; preds = %82
  %94 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %95 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %94, i32 0, i32 3
  %96 = load %struct.spi_device*, %struct.spi_device** %95, align 8
  %97 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %96, i32 0, i32 0
  %98 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %99 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @PTR_ERR(i32* %100)
  %102 = call i32 @dev_err(%struct.TYPE_9__* %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %104 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @PTR_ERR(i32* %105)
  store i32 %106, i32* %6, align 4
  br label %182

107:                                              ; preds = %90
  br label %123

108:                                              ; preds = %69
  %109 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %110 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @clk_prepare_enable(i32* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %117 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %116, i32 0, i32 3
  %118 = load %struct.spi_device*, %struct.spi_device** %117, align 8
  %119 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %118, i32 0, i32 0
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @dev_err(%struct.TYPE_9__* %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  br label %182

122:                                              ; preds = %108
  br label %123

123:                                              ; preds = %122, %107
  %124 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %125 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %126 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @mcp3911_config(%struct.mcp3911* %124, i32 %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %177

133:                                              ; preds = %123
  %134 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %135 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %134, i32 0, i32 0
  %136 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %137 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  store %struct.TYPE_9__* %135, %struct.TYPE_9__** %138, align 8
  %139 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %140 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %144 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  %146 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %147 = call %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device* %146)
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %151 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %153 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %154 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 8
  %155 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %156 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %155, i32 0, i32 2
  store i32* @mcp3911_info, i32** %156, align 8
  %157 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %158 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %159 = call i32 @spi_set_drvdata(%struct.spi_device* %157, %struct.iio_dev* %158)
  %160 = load i32, i32* @mcp3911_channels, align 4
  %161 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %162 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* @mcp3911_channels, align 4
  %164 = call i32 @ARRAY_SIZE(i32 %163)
  %165 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %166 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %168 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %167, i32 0, i32 2
  %169 = call i32 @mutex_init(i32* %168)
  %170 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %171 = call i32 @iio_device_register(%struct.iio_dev* %170)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %133
  br label %177

175:                                              ; preds = %133
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %2, align 4
  br label %194

177:                                              ; preds = %174, %132
  %178 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %179 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @clk_disable_unprepare(i32* %180)
  br label %182

182:                                              ; preds = %177, %115, %93
  %183 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %184 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load %struct.mcp3911*, %struct.mcp3911** %5, align 8
  %189 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @regulator_disable(i32* %190)
  br label %192

192:                                              ; preds = %187, %182
  %193 = load i32, i32* %6, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %192, %175, %66, %44, %12
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.mcp3911* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32* @devm_regulator_get_optional(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32* @devm_clk_get(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @mcp3911_config(%struct.mcp3911*, i32) #1

declare dso_local %struct.TYPE_8__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

declare dso_local i32 @regulator_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
