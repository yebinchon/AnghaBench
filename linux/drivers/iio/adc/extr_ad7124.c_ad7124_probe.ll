; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.spi_device_id = type { i64, i32 }
%struct.ad7124_state = type { i32*, i32, i32, i32* }
%struct.iio_dev = type { i32*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@ENOMEM = common dso_local global i32 0, align 4
@ad7124_chip_info_tbl = common dso_local global i32* null, align 8
@ad7124_sigma_delta_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ad7124_info = common dso_local global i32 0, align 4
@AD7124_INT_REF = common dso_local global i32 0, align 4
@ad7124_ref_names = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to register iio device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7124_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7124_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_device_id*, align 8
  %5 = alloca %struct.ad7124_state*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_7__* %10, i32 24)
  store %struct.iio_dev* %11, %struct.iio_dev** %6, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %234

17:                                               ; preds = %1
  %18 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %19 = call %struct.ad7124_state* @iio_priv(%struct.iio_dev* %18)
  store %struct.ad7124_state* %19, %struct.ad7124_state** %5, align 8
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %20)
  store %struct.spi_device_id* %21, %struct.spi_device_id** %4, align 8
  %22 = load i32*, i32** @ad7124_chip_info_tbl, align 8
  %23 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %24 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %28 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %27, i32 0, i32 3
  store i32* %26, i32** %28, align 8
  %29 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %30 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %29, i32 0, i32 2
  %31 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = call i32 @ad_sd_init(i32* %30, %struct.iio_dev* %31, %struct.spi_device* %32, i32* @ad7124_sigma_delta_info)
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %36 = call i32 @spi_set_drvdata(%struct.spi_device* %34, %struct.iio_dev* %35)
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 0
  %39 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %41, align 8
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %42)
  %44 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %49 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 0
  store i32* @ad7124_info, i32** %52, align 8
  %53 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ad7124_of_parse_channel_config(%struct.iio_dev* %53, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %17
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %234

63:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %137, %63
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %67 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @ARRAY_SIZE(i32* %68)
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %140

71:                                               ; preds = %64
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @AD7124_INT_REF, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %137

76:                                               ; preds = %71
  %77 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %78 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %77, i32 0, i32 0
  %79 = load i32*, i32** @ad7124_ref_names, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @devm_regulator_get_optional(%struct.TYPE_7__* %78, i32 %83)
  %85 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %86 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  %91 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %92 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @PTR_ERR(i32 %97)
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %76
  br label %137

103:                                              ; preds = %76
  %104 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %105 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @IS_ERR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %103
  %114 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %115 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @PTR_ERR(i32 %120)
  store i32 %121, i32* %2, align 4
  br label %234

122:                                              ; preds = %103
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %125 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @regulator_enable(i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %123
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %2, align 4
  br label %234

136:                                              ; preds = %123
  br label %137

137:                                              ; preds = %136, %102, %75
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %64

140:                                              ; preds = %64
  %141 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %142 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %141, i32 0, i32 0
  %143 = call i32 @devm_clk_get(%struct.TYPE_7__* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %144 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %145 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  %146 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %147 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @IS_ERR(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %140
  %152 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %153 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @PTR_ERR(i32 %154)
  store i32 %155, i32* %8, align 4
  br label %200

156:                                              ; preds = %140
  %157 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %158 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @clk_prepare_enable(i32 %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  br label %200

164:                                              ; preds = %156
  %165 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %166 = call i32 @ad7124_soft_reset(%struct.ad7124_state* %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %195

170:                                              ; preds = %164
  %171 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %172 = call i32 @ad7124_setup(%struct.ad7124_state* %171)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %195

176:                                              ; preds = %170
  %177 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %178 = call i32 @ad_sd_setup_buffer_and_trigger(%struct.iio_dev* %177)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %195

182:                                              ; preds = %176
  %183 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %184 = call i32 @iio_device_register(%struct.iio_dev* %183)
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %189 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %188, i32 0, i32 0
  %190 = call i32 @dev_err(%struct.TYPE_7__* %189, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %192

191:                                              ; preds = %182
  store i32 0, i32* %2, align 4
  br label %234

192:                                              ; preds = %187
  %193 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %194 = call i32 @ad_sd_cleanup_buffer_and_trigger(%struct.iio_dev* %193)
  br label %195

195:                                              ; preds = %192, %181, %175, %169
  %196 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %197 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @clk_disable_unprepare(i32 %198)
  br label %200

200:                                              ; preds = %195, %163, %151
  %201 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %202 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @ARRAY_SIZE(i32* %203)
  %205 = sub nsw i32 %204, 1
  store i32 %205, i32* %7, align 4
  br label %206

206:                                              ; preds = %229, %200
  %207 = load i32, i32* %7, align 4
  %208 = icmp sge i32 %207, 0
  br i1 %208, label %209, label %232

209:                                              ; preds = %206
  %210 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %211 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @IS_ERR_OR_NULL(i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %228, label %219

219:                                              ; preds = %209
  %220 = load %struct.ad7124_state*, %struct.ad7124_state** %5, align 8
  %221 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @regulator_disable(i32 %226)
  br label %228

228:                                              ; preds = %219, %209
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %7, align 4
  %231 = add nsw i32 %230, -1
  store i32 %231, i32* %7, align 4
  br label %206

232:                                              ; preds = %206
  %233 = load i32, i32* %8, align 4
  store i32 %233, i32* %2, align 4
  br label %234

234:                                              ; preds = %232, %191, %134, %113, %61, %14
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.ad7124_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @ad_sd_init(i32*, %struct.iio_dev*, %struct.spi_device*, i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @ad7124_of_parse_channel_config(%struct.iio_dev*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @devm_regulator_get_optional(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @ad7124_soft_reset(%struct.ad7124_state*) #1

declare dso_local i32 @ad7124_setup(%struct.ad7124_state*) #1

declare dso_local i32 @ad_sd_setup_buffer_and_trigger(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @ad_sd_cleanup_buffer_and_trigger(%struct.iio_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
