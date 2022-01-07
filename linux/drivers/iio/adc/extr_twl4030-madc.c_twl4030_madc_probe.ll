; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030_madc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030_madc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_madc_data = type { i32, i32, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.TYPE_10__ }
%struct.twl4030_madc_platform_data = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.device_node*, %struct.TYPE_10__* }

@.str = private unnamed_addr constant [54 x i8] c"neither platform data nor Device Tree node available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed allocating iio device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@twl4030_madc_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@twl4030_madc_iio_channels = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"ti,system-uses-second-madc-irq\00", align 1
@TWL4030_MADC_IMR2 = common dso_local global i32 0, align 4
@TWL4030_MADC_IMR1 = common dso_local global i32 0, align 4
@TWL4030_MADC_ISR2 = common dso_local global i32 0, align 4
@TWL4030_MADC_ISR1 = common dso_local global i32 0, align 4
@TWL_MODULE_MAIN_CHARGE = common dso_local global i32 0, align 4
@TWL4030_BCI_BCICTL1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"unable to read reg BCI CTL1 0x%X\0A\00", align 1
@TWL4030_BCI_MESBAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"unable to write reg BCI Ctl1 0x%X\0A\00", align 1
@TWL4030_MODULE_INTBR = common dso_local global i32 0, align 4
@TWL4030_REG_GPBR1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"unable to read reg GPBR1 0x%X\0A\00", align 1
@TWL4030_GPBR1_MADC_HFCLK_EN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"clk disabled, enabling\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"unable to write reg GPBR1 0x%X\0A\00", align 1
@twl4030_madc_threaded_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"twl4030_madc\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"could not request irq\0A\00", align 1
@twl4030_madc = common dso_local global %struct.twl4030_madc_data* null, align 8
@TWL_MODULE_USB = common dso_local global i32 0, align 4
@TWL4030_USB_CARKIT_ANA_CTRL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"unable to read reg CARKIT_ANA_CTRL  0x%X\0A\00", align 1
@TWL4030_USB_SEL_MADC_MCPC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [42 x i8] c"unable to write reg CARKIT_ANA_CTRL 0x%X\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"vusb3v1\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"could not enable 3v1 bias regulator\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"could not register iio device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl4030_madc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_madc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.twl4030_madc_data*, align 8
  %5 = alloca %struct.twl4030_madc_platform_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iio_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.twl4030_madc_platform_data* @dev_get_platdata(%struct.TYPE_10__* %12)
  store %struct.twl4030_madc_platform_data* %13, %struct.twl4030_madc_platform_data** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  store %struct.iio_dev* null, %struct.iio_dev** %10, align 8
  %18 = load %struct.twl4030_madc_platform_data*, %struct.twl4030_madc_platform_data** %5, align 8
  %19 = icmp ne %struct.twl4030_madc_platform_data* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %1
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %25, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %290

29:                                               ; preds = %20, %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_10__* %31, i32 32)
  store %struct.iio_dev* %32, %struct.iio_dev** %10, align 8
  %33 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %34 = icmp ne %struct.iio_dev* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %290

41:                                               ; preds = %29
  %42 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %43 = call %struct.twl4030_madc_data* @iio_priv(%struct.iio_dev* %42)
  store %struct.twl4030_madc_data* %43, %struct.twl4030_madc_data** %4, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %47 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %46, i32 0, i32 2
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_name(%struct.TYPE_10__* %49)
  %51 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.device_node*, %struct.device_node** %60, align 8
  %62 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store %struct.device_node* %61, %struct.device_node** %64, align 8
  %65 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 3
  store i32* @twl4030_madc_iio_info, i32** %66, align 8
  %67 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %68 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @twl4030_madc_iio_channels, align 4
  %71 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %72 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @twl4030_madc_iio_channels, align 4
  %74 = call i32 @ARRAY_SIZE(i32 %73)
  %75 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %76 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.twl4030_madc_platform_data*, %struct.twl4030_madc_platform_data** %5, align 8
  %78 = icmp ne %struct.twl4030_madc_platform_data* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %41
  %80 = load %struct.twl4030_madc_platform_data*, %struct.twl4030_madc_platform_data** %5, align 8
  %81 = getelementptr inbounds %struct.twl4030_madc_platform_data, %struct.twl4030_madc_platform_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 1
  %84 = zext i1 %83 to i32
  %85 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %86 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %92

87:                                               ; preds = %41
  %88 = load %struct.device_node*, %struct.device_node** %6, align 8
  %89 = call i32 @of_property_read_bool(%struct.device_node* %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %91 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %87, %79
  %93 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %94 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @TWL4030_MADC_IMR2, align 4
  br label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @TWL4030_MADC_IMR1, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %104 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %106 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @TWL4030_MADC_ISR2, align 4
  br label %113

111:                                              ; preds = %101
  %112 = load i32, i32* @TWL4030_MADC_ISR1, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  %115 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %116 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 4
  %117 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %118 = call i32 @twl4030_madc_set_power(%struct.twl4030_madc_data* %117, i32 1)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %2, align 4
  br label %290

123:                                              ; preds = %113
  %124 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %125 = call i32 @twl4030_madc_set_current_generator(%struct.twl4030_madc_data* %124, i32 0, i32 1)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %286

129:                                              ; preds = %123
  %130 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %131 = load i32, i32* @TWL4030_BCI_BCICTL1, align 4
  %132 = call i32 @twl_i2c_read_u8(i32 %130, i32* %9, i32 %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load i32, i32* @TWL4030_BCI_BCICTL1, align 4
  %139 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  br label %283

140:                                              ; preds = %129
  %141 = load i32, i32* @TWL4030_BCI_MESBAT, align 4
  %142 = load i32, i32* %9, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @TWL4030_BCI_BCICTL1, align 4
  %147 = call i32 @twl_i2c_write_u8(i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %140
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = load i32, i32* @TWL4030_BCI_BCICTL1, align 4
  %154 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %153)
  br label %283

155:                                              ; preds = %140
  %156 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %157 = load i32, i32* @TWL4030_REG_GPBR1, align 4
  %158 = call i32 @twl_i2c_read_u8(i32 %156, i32* %9, i32 %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = load i32, i32* @TWL4030_REG_GPBR1, align 4
  %165 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %163, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %164)
  br label %283

166:                                              ; preds = %155
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @TWL4030_GPBR1_MADC_HFCLK_EN, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %190, label %171

171:                                              ; preds = %166
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = call i32 @dev_info(%struct.TYPE_10__* %173, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %175 = load i32, i32* @TWL4030_GPBR1_MADC_HFCLK_EN, align 4
  %176 = load i32, i32* %9, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @TWL4030_REG_GPBR1, align 4
  %181 = call i32 @twl_i2c_write_u8(i32 %178, i32 %179, i32 %180)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %171
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = load i32, i32* @TWL4030_REG_GPBR1, align 4
  %188 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %186, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %187)
  br label %283

189:                                              ; preds = %171
  br label %190

190:                                              ; preds = %189, %166
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %193 = call i32 @platform_set_drvdata(%struct.platform_device* %191, %struct.iio_dev* %192)
  %194 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %195 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %194, i32 0, i32 3
  %196 = call i32 @mutex_init(i32* %195)
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = call i32 @platform_get_irq(%struct.platform_device* %197, i32 0)
  store i32 %198, i32* %7, align 4
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* @twl4030_madc_threaded_irq_handler, align 4
  %203 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %204 = load i32, i32* @IRQF_ONESHOT, align 4
  %205 = or i32 %203, %204
  %206 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %207 = call i32 @devm_request_threaded_irq(%struct.TYPE_10__* %200, i32 %201, i32* null, i32 %202, i32 %205, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), %struct.twl4030_madc_data* %206)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %190
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %211, i32 0, i32 0
  %213 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %212, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %283

214:                                              ; preds = %190
  %215 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  store %struct.twl4030_madc_data* %215, %struct.twl4030_madc_data** @twl4030_madc, align 8
  %216 = load i32, i32* @TWL_MODULE_USB, align 4
  %217 = load i32, i32* @TWL4030_USB_CARKIT_ANA_CTRL, align 4
  %218 = call i32 @twl_i2c_read_u8(i32 %216, i32* %9, i32 %217)
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %214
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %222, i32 0, i32 0
  %224 = load i32, i32* @TWL4030_USB_CARKIT_ANA_CTRL, align 4
  %225 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %223, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %224)
  br label %283

226:                                              ; preds = %214
  %227 = load i32, i32* @TWL4030_USB_SEL_MADC_MCPC, align 4
  %228 = load i32, i32* %9, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %9, align 4
  %230 = load i32, i32* @TWL_MODULE_USB, align 4
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* @TWL4030_USB_CARKIT_ANA_CTRL, align 4
  %233 = call i32 @twl_i2c_write_u8(i32 %230, i32 %231, i32 %232)
  store i32 %233, i32* %8, align 4
  %234 = load i32, i32* %8, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %226
  %237 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %238 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %237, i32 0, i32 0
  %239 = load i32, i32* @TWL4030_USB_CARKIT_ANA_CTRL, align 4
  %240 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %238, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %239)
  br label %283

241:                                              ; preds = %226
  %242 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %243 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %242, i32 0, i32 2
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %243, align 8
  %245 = call i32 @devm_regulator_get(%struct.TYPE_10__* %244, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %246 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %247 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 4
  %248 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %249 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i64 @IS_ERR(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %241
  %254 = load i32, i32* @ENODEV, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %8, align 4
  br label %283

256:                                              ; preds = %241
  %257 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %258 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @regulator_enable(i32 %259)
  store i32 %260, i32* %8, align 4
  %261 = load i32, i32* %8, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %256
  %264 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %265 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %264, i32 0, i32 2
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %265, align 8
  %267 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %266, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  br label %283

268:                                              ; preds = %256
  %269 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %270 = call i32 @iio_device_register(%struct.iio_dev* %269)
  store i32 %270, i32* %8, align 4
  %271 = load i32, i32* %8, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %268
  %274 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %275 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %274, i32 0, i32 0
  %276 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %275, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %278

277:                                              ; preds = %268
  store i32 0, i32* %2, align 4
  br label %290

278:                                              ; preds = %273
  %279 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %280 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @regulator_disable(i32 %281)
  br label %283

283:                                              ; preds = %278, %263, %253, %236, %221, %210, %184, %161, %150, %135
  %284 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %285 = call i32 @twl4030_madc_set_current_generator(%struct.twl4030_madc_data* %284, i32 0, i32 0)
  br label %286

286:                                              ; preds = %283, %128
  %287 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %288 = call i32 @twl4030_madc_set_power(%struct.twl4030_madc_data* %287, i32 0)
  %289 = load i32, i32* %8, align 4
  store i32 %289, i32* %2, align 4
  br label %290

290:                                              ; preds = %286, %277, %121, %35, %23
  %291 = load i32, i32* %2, align 4
  ret i32 %291
}

declare dso_local %struct.twl4030_madc_platform_data* @dev_get_platdata(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.twl4030_madc_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @twl4030_madc_set_power(%struct.twl4030_madc_data*, i32) #1

declare dso_local i32 @twl4030_madc_set_current_generator(%struct.twl4030_madc_data*, i32, i32) #1

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_10__*, i32, i32*, i32, i32, i8*, %struct.twl4030_madc_data*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
