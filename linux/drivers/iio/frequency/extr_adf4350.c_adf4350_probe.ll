; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4350.c_adf4350_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4350.c_adf4350_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf4350_platform_data = type { i64*, i64, i32, i64, i32 }
%struct.spi_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.adf4350_platform_data*, i64 }
%struct.iio_dev = type { i64*, i32, i32*, i32, i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.adf4350_state = type { %struct.clk*, i32, i32, i64, %struct.clk*, i32, %struct.adf4350_platform_data*, %struct.spi_device* }
%struct.clk = type { i32 }
%struct.TYPE_11__ = type { i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"no platform data? using default\0A\00", align 1
@default_pdata = common dso_local global %struct.adf4350_platform_data zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"clkin\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@adf4350_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@adf4350_chan = common dso_local global i32 0, align 4
@ADF4351_MIN_OUT_FREQ = common dso_local global i32 0, align 4
@ADF4350_MIN_OUT_FREQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"fail to request lock detect GPIO-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adf4350_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf4350_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.adf4350_platform_data*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.adf4350_state*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.clk* null, %struct.clk** %7, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = call %struct.adf4350_platform_data* @adf4350_parse_dt(%struct.TYPE_12__* %16)
  store %struct.adf4350_platform_data* %17, %struct.adf4350_platform_data** %4, align 8
  %18 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %4, align 8
  %19 = icmp eq %struct.adf4350_platform_data* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %243

23:                                               ; preds = %14
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %27, align 8
  store %struct.adf4350_platform_data* %28, %struct.adf4350_platform_data** %4, align 8
  br label %29

29:                                               ; preds = %24, %23
  %30 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %4, align 8
  %31 = icmp ne %struct.adf4350_platform_data* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = call i32 @dev_warn(%struct.TYPE_12__* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.adf4350_platform_data* @default_pdata, %struct.adf4350_platform_data** %4, align 8
  br label %36

36:                                               ; preds = %32, %29
  %37 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %4, align 8
  %38 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %36
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 0
  %44 = call %struct.clk* @devm_clk_get(%struct.TYPE_12__* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.clk* %44, %struct.clk** %7, align 8
  %45 = load %struct.clk*, %struct.clk** %7, align 8
  %46 = call i64 @IS_ERR(%struct.clk* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EPROBE_DEFER, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %243

51:                                               ; preds = %41
  %52 = load %struct.clk*, %struct.clk** %7, align 8
  %53 = call i32 @clk_prepare_enable(%struct.clk* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %243

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %36
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 0
  %62 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_12__* %61, i32 56)
  store %struct.iio_dev* %62, %struct.iio_dev** %5, align 8
  %63 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %64 = icmp eq %struct.iio_dev* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  br label %235

68:                                               ; preds = %59
  %69 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %70 = call %struct.adf4350_state* @iio_priv(%struct.iio_dev* %69)
  store %struct.adf4350_state* %70, %struct.adf4350_state** %6, align 8
  %71 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %72 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %71, i32 0, i32 0
  %73 = call %struct.clk* @devm_regulator_get(%struct.TYPE_12__* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.adf4350_state*, %struct.adf4350_state** %6, align 8
  %75 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %74, i32 0, i32 0
  store %struct.clk* %73, %struct.clk** %75, align 8
  %76 = load %struct.adf4350_state*, %struct.adf4350_state** %6, align 8
  %77 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %76, i32 0, i32 0
  %78 = load %struct.clk*, %struct.clk** %77, align 8
  %79 = call i64 @IS_ERR(%struct.clk* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %68
  %82 = load %struct.adf4350_state*, %struct.adf4350_state** %6, align 8
  %83 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %82, i32 0, i32 0
  %84 = load %struct.clk*, %struct.clk** %83, align 8
  %85 = call i32 @regulator_enable(%struct.clk* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %235

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %68
  %91 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %92 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %93 = call i32 @spi_set_drvdata(%struct.spi_device* %91, %struct.iio_dev* %92)
  %94 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %95 = load %struct.adf4350_state*, %struct.adf4350_state** %6, align 8
  %96 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %95, i32 0, i32 7
  store %struct.spi_device* %94, %struct.spi_device** %96, align 8
  %97 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %4, align 8
  %98 = load %struct.adf4350_state*, %struct.adf4350_state** %6, align 8
  %99 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %98, i32 0, i32 6
  store %struct.adf4350_platform_data* %97, %struct.adf4350_platform_data** %99, align 8
  %100 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %101 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %100, i32 0, i32 0
  %102 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %103 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  store %struct.TYPE_12__* %101, %struct.TYPE_12__** %104, align 8
  %105 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %4, align 8
  %106 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %90
  %112 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %4, align 8
  %113 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  br label %120

115:                                              ; preds = %90
  %116 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %117 = call %struct.TYPE_11__* @spi_get_device_id(%struct.spi_device* %116)
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  br label %120

120:                                              ; preds = %115, %111
  %121 = phi i64* [ %114, %111 ], [ %119, %115 ]
  %122 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %123 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %122, i32 0, i32 0
  store i64* %121, i64** %123, align 8
  %124 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %125 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %124, i32 0, i32 4
  store i32* @adf4350_info, i32** %125, align 8
  %126 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %127 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %128 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  %129 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %130 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %129, i32 0, i32 2
  store i32* @adf4350_chan, i32** %130, align 8
  %131 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %132 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %131, i32 0, i32 1
  store i32 1, i32* %132, align 8
  %133 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %4, align 8
  %134 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.adf4350_state*, %struct.adf4350_state** %6, align 8
  %137 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 8
  %138 = load %struct.clk*, %struct.clk** %7, align 8
  %139 = icmp ne %struct.clk* %138, null
  br i1 %139, label %140, label %148

140:                                              ; preds = %120
  %141 = load %struct.clk*, %struct.clk** %7, align 8
  %142 = load %struct.adf4350_state*, %struct.adf4350_state** %6, align 8
  %143 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %142, i32 0, i32 4
  store %struct.clk* %141, %struct.clk** %143, align 8
  %144 = load %struct.clk*, %struct.clk** %7, align 8
  %145 = call i64 @clk_get_rate(%struct.clk* %144)
  %146 = load %struct.adf4350_state*, %struct.adf4350_state** %6, align 8
  %147 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %146, i32 0, i32 3
  store i64 %145, i64* %147, align 8
  br label %154

148:                                              ; preds = %120
  %149 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %4, align 8
  %150 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.adf4350_state*, %struct.adf4350_state** %6, align 8
  %153 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %152, i32 0, i32 3
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %148, %140
  %155 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %156 = call %struct.TYPE_11__* @spi_get_device_id(%struct.spi_device* %155)
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %158, 4351
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* @ADF4351_MIN_OUT_FREQ, align 4
  br label %164

162:                                              ; preds = %154
  %163 = load i32, i32* @ADF4350_MIN_OUT_FREQ, align 4
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ]
  %166 = load %struct.adf4350_state*, %struct.adf4350_state** %6, align 8
  %167 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 4
  %168 = load %struct.adf4350_state*, %struct.adf4350_state** %6, align 8
  %169 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @memset(i32 %170, i32 255, i32 4)
  %172 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %4, align 8
  %173 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @gpio_is_valid(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %201

177:                                              ; preds = %164
  %178 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %179 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %178, i32 0, i32 0
  %180 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %4, align 8
  %181 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %184 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %183, i32 0, i32 0
  %185 = load i64*, i64** %184, align 8
  %186 = call i32 @devm_gpio_request(%struct.TYPE_12__* %179, i32 %182, i64* %185)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %177
  %190 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %191 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %190, i32 0, i32 0
  %192 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %4, align 8
  %193 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @dev_err(%struct.TYPE_12__* %191, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  br label %223

196:                                              ; preds = %177
  %197 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %4, align 8
  %198 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @gpio_direction_input(i32 %199)
  br label %201

201:                                              ; preds = %196, %164
  %202 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %4, align 8
  %203 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %201
  %207 = load %struct.adf4350_state*, %struct.adf4350_state** %6, align 8
  %208 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %4, align 8
  %209 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @adf4350_set_freq(%struct.adf4350_state* %207, i64 %210)
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  br label %223

215:                                              ; preds = %206
  br label %216

216:                                              ; preds = %215, %201
  %217 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %218 = call i32 @iio_device_register(%struct.iio_dev* %217)
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  br label %223

222:                                              ; preds = %216
  store i32 0, i32* %2, align 4
  br label %243

223:                                              ; preds = %221, %214, %189
  %224 = load %struct.adf4350_state*, %struct.adf4350_state** %6, align 8
  %225 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %224, i32 0, i32 0
  %226 = load %struct.clk*, %struct.clk** %225, align 8
  %227 = call i64 @IS_ERR(%struct.clk* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %234, label %229

229:                                              ; preds = %223
  %230 = load %struct.adf4350_state*, %struct.adf4350_state** %6, align 8
  %231 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %230, i32 0, i32 0
  %232 = load %struct.clk*, %struct.clk** %231, align 8
  %233 = call i32 @regulator_disable(%struct.clk* %232)
  br label %234

234:                                              ; preds = %229, %223
  br label %235

235:                                              ; preds = %234, %88, %65
  %236 = load %struct.clk*, %struct.clk** %7, align 8
  %237 = icmp ne %struct.clk* %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load %struct.clk*, %struct.clk** %7, align 8
  %240 = call i32 @clk_disable_unprepare(%struct.clk* %239)
  br label %241

241:                                              ; preds = %238, %235
  %242 = load i32, i32* %8, align 4
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %241, %222, %56, %48, %20
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local %struct.adf4350_platform_data* @adf4350_parse_dt(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.adf4350_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.clk* @devm_regulator_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @regulator_enable(%struct.clk*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_11__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request(%struct.TYPE_12__*, i32, i64*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @adf4350_set_freq(%struct.adf4350_state*, i64) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(%struct.clk*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
