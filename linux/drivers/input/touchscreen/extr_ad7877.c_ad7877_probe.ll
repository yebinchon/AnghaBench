; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7877.c_ad7877_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7877.c_ad7877_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i64, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.ad7877 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.input_dev*, %struct.spi_device* }
%struct.input_dev = type { i8*, i32, i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.ad7877_platform_data = type { i64, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"no IRQ?\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"no platform data?\0A\00", align 1
@MAX_SPI_FREQ_HZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"SPI CLK %d Hz?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"spi master doesn't support 16 bits/word\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ad7877_disable = common dso_local global i32 0, align 4
@ad7877_timer = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"AD7877 Touchscreen\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@MAX_12BIT = common dso_local global i64 0, align 8
@AD7877_REG_SEQ1 = common dso_local global i32 0, align 4
@AD7877_MM_SEQUENCE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"%s: Failed to probe %s\0A\00", align 1
@gpio3 = common dso_local global i64 0, align 8
@AD7877_REG_EXTWRITE = common dso_local global i32 0, align 4
@AD7877_EXTW_GPIO_3_CONF = common dso_local global i64 0, align 8
@ad7877_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"irq %d busy?\0A\00", align 1
@ad7877_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7877_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7877_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad7877*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.ad7877_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 3
  %11 = call %struct.ad7877_platform_data* @dev_get_platdata(%struct.TYPE_14__* %10)
  store %struct.ad7877_platform_data* %11, %struct.ad7877_platform_data** %6, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 3
  %19 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_dbg(%struct.TYPE_14__* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %353

22:                                               ; preds = %1
  %23 = load %struct.ad7877_platform_data*, %struct.ad7877_platform_data** %6, align 8
  %24 = icmp ne %struct.ad7877_platform_data* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 3
  %28 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_dbg(%struct.TYPE_14__* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %353

31:                                               ; preds = %22
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MAX_SPI_FREQ_HZ, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 3
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_dbg(%struct.TYPE_14__* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %353

46:                                               ; preds = %31
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 2
  store i32 16, i32* %48, align 8
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = call i32 @spi_setup(%struct.spi_device* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 3
  %56 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_dbg(%struct.TYPE_14__* %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %353

58:                                               ; preds = %46
  %59 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 3
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.ad7877* @devm_kzalloc(%struct.TYPE_14__* %60, i32 72, i32 %61)
  store %struct.ad7877* %62, %struct.ad7877** %4, align 8
  %63 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %64 = icmp ne %struct.ad7877* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %353

68:                                               ; preds = %58
  %69 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %70 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %69, i32 0, i32 3
  %71 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_14__* %70)
  store %struct.input_dev* %71, %struct.input_dev** %5, align 8
  %72 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %73 = icmp ne %struct.input_dev* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %353

77:                                               ; preds = %68
  %78 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %79 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %78, i32 0, i32 3
  %80 = load i32, i32* @ad7877_disable, align 4
  %81 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %82 = call i32 @devm_add_action_or_reset(%struct.TYPE_14__* %79, i32 %80, %struct.ad7877* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %353

87:                                               ; preds = %77
  %88 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %89 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %90 = call i32 @spi_set_drvdata(%struct.spi_device* %88, %struct.ad7877* %89)
  %91 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %92 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %93 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %92, i32 0, i32 14
  store %struct.spi_device* %91, %struct.spi_device** %93, align 8
  %94 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %95 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %96 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %95, i32 0, i32 13
  store %struct.input_dev* %94, %struct.input_dev** %96, align 8
  %97 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %98 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %97, i32 0, i32 12
  %99 = load i32, i32* @ad7877_timer, align 4
  %100 = call i32 @timer_setup(i32* %98, i32 %99, i32 0)
  %101 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %102 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %101, i32 0, i32 11
  %103 = call i32 @mutex_init(i32* %102)
  %104 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %105 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %104, i32 0, i32 10
  %106 = call i32 @spin_lock_init(i32* %105)
  %107 = load %struct.ad7877_platform_data*, %struct.ad7877_platform_data** %6, align 8
  %108 = getelementptr inbounds %struct.ad7877_platform_data, %struct.ad7877_platform_data* %107, i32 0, i32 13
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %87
  br label %113

112:                                              ; preds = %87
  br label %113

113:                                              ; preds = %112, %111
  %114 = phi i64 [ %109, %111 ], [ 7877, %112 ]
  %115 = trunc i64 %114 to i32
  %116 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %117 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.ad7877_platform_data*, %struct.ad7877_platform_data** %6, align 8
  %119 = getelementptr inbounds %struct.ad7877_platform_data, %struct.ad7877_platform_data* %118, i32 0, i32 12
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  br label %124

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123, %122
  %125 = phi i64 [ %120, %122 ], [ 100, %123 ]
  %126 = trunc i64 %125 to i32
  %127 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %128 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.ad7877_platform_data*, %struct.ad7877_platform_data** %6, align 8
  %130 = getelementptr inbounds %struct.ad7877_platform_data, %struct.ad7877_platform_data* %129, i32 0, i32 11
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  br label %135

134:                                              ; preds = %124
  br label %135

135:                                              ; preds = %134, %133
  %136 = phi i64 [ %131, %133 ], [ 400, %134 ]
  %137 = trunc i64 %136 to i32
  %138 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %139 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.ad7877_platform_data*, %struct.ad7877_platform_data** %6, align 8
  %141 = getelementptr inbounds %struct.ad7877_platform_data, %struct.ad7877_platform_data* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %146

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145, %144
  %147 = phi i64 [ %142, %144 ], [ -1, %145 ]
  %148 = trunc i64 %147 to i32
  %149 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %150 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %149, i32 0, i32 9
  store i32 %148, i32* %150, align 4
  %151 = load %struct.ad7877_platform_data*, %struct.ad7877_platform_data** %6, align 8
  %152 = getelementptr inbounds %struct.ad7877_platform_data, %struct.ad7877_platform_data* %151, i32 0, i32 10
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %155 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %154, i32 0, i32 8
  store i32 %153, i32* %155, align 8
  %156 = load %struct.ad7877_platform_data*, %struct.ad7877_platform_data** %6, align 8
  %157 = getelementptr inbounds %struct.ad7877_platform_data, %struct.ad7877_platform_data* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %160 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %159, i32 0, i32 7
  store i32 %158, i32* %160, align 4
  %161 = load %struct.ad7877_platform_data*, %struct.ad7877_platform_data** %6, align 8
  %162 = getelementptr inbounds %struct.ad7877_platform_data, %struct.ad7877_platform_data* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %165 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 8
  %166 = load %struct.ad7877_platform_data*, %struct.ad7877_platform_data** %6, align 8
  %167 = getelementptr inbounds %struct.ad7877_platform_data, %struct.ad7877_platform_data* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %170 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 4
  %171 = load %struct.ad7877_platform_data*, %struct.ad7877_platform_data** %6, align 8
  %172 = getelementptr inbounds %struct.ad7877_platform_data, %struct.ad7877_platform_data* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %175 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 8
  %176 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %177 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %180 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %179, i32 0, i32 3
  %181 = call i8* @dev_name(%struct.TYPE_14__* %180)
  %182 = call i32 @snprintf(i32 %178, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %181)
  %183 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %184 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %183, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8** %184, align 8
  %185 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %186 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %189 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %188, i32 0, i32 5
  store i32 %187, i32* %189, align 8
  %190 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %191 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %190, i32 0, i32 3
  %192 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %193 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  store %struct.TYPE_14__* %191, %struct.TYPE_14__** %194, align 8
  %195 = load i32, i32* @EV_KEY, align 4
  %196 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %197 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @__set_bit(i32 %195, i32 %198)
  %200 = load i32, i32* @BTN_TOUCH, align 4
  %201 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %202 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @__set_bit(i32 %200, i32 %203)
  %205 = load i32, i32* @EV_ABS, align 4
  %206 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %207 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @__set_bit(i32 %205, i32 %208)
  %210 = load i32, i32* @ABS_X, align 4
  %211 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %212 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @__set_bit(i32 %210, i32 %213)
  %215 = load i32, i32* @ABS_Y, align 4
  %216 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %217 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @__set_bit(i32 %215, i32 %218)
  %220 = load i32, i32* @ABS_PRESSURE, align 4
  %221 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %222 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @__set_bit(i32 %220, i32 %223)
  %225 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %226 = load i32, i32* @ABS_X, align 4
  %227 = load %struct.ad7877_platform_data*, %struct.ad7877_platform_data** %6, align 8
  %228 = getelementptr inbounds %struct.ad7877_platform_data, %struct.ad7877_platform_data* %227, i32 0, i32 5
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %146
  br label %233

232:                                              ; preds = %146
  br label %233

233:                                              ; preds = %232, %231
  %234 = phi i64 [ %229, %231 ], [ 0, %232 ]
  %235 = trunc i64 %234 to i32
  %236 = load %struct.ad7877_platform_data*, %struct.ad7877_platform_data** %6, align 8
  %237 = getelementptr inbounds %struct.ad7877_platform_data, %struct.ad7877_platform_data* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %233
  br label %243

241:                                              ; preds = %233
  %242 = load i64, i64* @MAX_12BIT, align 8
  br label %243

243:                                              ; preds = %241, %240
  %244 = phi i64 [ %238, %240 ], [ %242, %241 ]
  %245 = call i32 @input_set_abs_params(%struct.input_dev* %225, i32 %226, i32 %235, i64 %244, i32 0, i32 0)
  %246 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %247 = load i32, i32* @ABS_Y, align 4
  %248 = load %struct.ad7877_platform_data*, %struct.ad7877_platform_data** %6, align 8
  %249 = getelementptr inbounds %struct.ad7877_platform_data, %struct.ad7877_platform_data* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %243
  br label %254

253:                                              ; preds = %243
  br label %254

254:                                              ; preds = %253, %252
  %255 = phi i64 [ %250, %252 ], [ 0, %253 ]
  %256 = trunc i64 %255 to i32
  %257 = load %struct.ad7877_platform_data*, %struct.ad7877_platform_data** %6, align 8
  %258 = getelementptr inbounds %struct.ad7877_platform_data, %struct.ad7877_platform_data* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %254
  br label %264

262:                                              ; preds = %254
  %263 = load i64, i64* @MAX_12BIT, align 8
  br label %264

264:                                              ; preds = %262, %261
  %265 = phi i64 [ %259, %261 ], [ %263, %262 ]
  %266 = call i32 @input_set_abs_params(%struct.input_dev* %246, i32 %247, i32 %256, i64 %265, i32 0, i32 0)
  %267 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %268 = load i32, i32* @ABS_PRESSURE, align 4
  %269 = load %struct.ad7877_platform_data*, %struct.ad7877_platform_data** %6, align 8
  %270 = getelementptr inbounds %struct.ad7877_platform_data, %struct.ad7877_platform_data* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.ad7877_platform_data*, %struct.ad7877_platform_data** %6, align 8
  %273 = getelementptr inbounds %struct.ad7877_platform_data, %struct.ad7877_platform_data* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @input_set_abs_params(%struct.input_dev* %267, i32 %268, i32 %271, i64 %274, i32 0, i32 0)
  %276 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %277 = load i32, i32* @AD7877_REG_SEQ1, align 4
  %278 = load i64, i64* @AD7877_MM_SEQUENCE, align 8
  %279 = call i32 @ad7877_write(%struct.spi_device* %276, i32 %277, i64 %278)
  %280 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %281 = load i32, i32* @AD7877_REG_SEQ1, align 4
  %282 = call i64 @ad7877_read(%struct.spi_device* %280, i32 %281)
  store i64 %282, i64* %8, align 8
  %283 = load i64, i64* %8, align 8
  %284 = load i64, i64* @AD7877_MM_SEQUENCE, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %298

286:                                              ; preds = %264
  %287 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %288 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %287, i32 0, i32 3
  %289 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %290 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %289, i32 0, i32 3
  %291 = call i8* @dev_name(%struct.TYPE_14__* %290)
  %292 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %293 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %292, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = call i32 @dev_err(%struct.TYPE_14__* %288, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %291, i8* %294)
  %296 = load i32, i32* @ENODEV, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %2, align 4
  br label %353

298:                                              ; preds = %264
  %299 = load i64, i64* @gpio3, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %298
  %302 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %303 = load i32, i32* @AD7877_REG_EXTWRITE, align 4
  %304 = load i64, i64* @AD7877_EXTW_GPIO_3_CONF, align 8
  %305 = call i32 @ad7877_write(%struct.spi_device* %302, i32 %303, i64 %304)
  br label %306

306:                                              ; preds = %301, %298
  %307 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %308 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %309 = call i32 @ad7877_setup_ts_def_msg(%struct.spi_device* %307, %struct.ad7877* %308)
  %310 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %311 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %310, i32 0, i32 3
  %312 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %313 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load i32, i32* @ad7877_irq, align 4
  %316 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %317 = load i32, i32* @IRQF_ONESHOT, align 4
  %318 = or i32 %316, %317
  %319 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %320 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.ad7877*, %struct.ad7877** %4, align 8
  %326 = call i32 @devm_request_threaded_irq(%struct.TYPE_14__* %311, i64 %314, i32* null, i32 %315, i32 %318, i32 %324, %struct.ad7877* %325)
  store i32 %326, i32* %7, align 4
  %327 = load i32, i32* %7, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %337

329:                                              ; preds = %306
  %330 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %331 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %330, i32 0, i32 3
  %332 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %333 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_dbg(%struct.TYPE_14__* %331, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64 %334)
  %336 = load i32, i32* %7, align 4
  store i32 %336, i32* %2, align 4
  br label %353

337:                                              ; preds = %306
  %338 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %339 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %338, i32 0, i32 3
  %340 = call i32 @devm_device_add_group(%struct.TYPE_14__* %339, i32* @ad7877_attr_group)
  store i32 %340, i32* %7, align 4
  %341 = load i32, i32* %7, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %337
  %344 = load i32, i32* %7, align 4
  store i32 %344, i32* %2, align 4
  br label %353

345:                                              ; preds = %337
  %346 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %347 = call i32 @input_register_device(%struct.input_dev* %346)
  store i32 %347, i32* %7, align 4
  %348 = load i32, i32* %7, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %345
  %351 = load i32, i32* %7, align 4
  store i32 %351, i32* %2, align 4
  br label %353

352:                                              ; preds = %345
  store i32 0, i32* %2, align 4
  br label %353

353:                                              ; preds = %352, %350, %343, %329, %286, %85, %74, %65, %53, %37, %25, %16
  %354 = load i32, i32* %2, align 4
  ret i32 %354
}

declare dso_local %struct.ad7877_platform_data* @dev_get_platdata(%struct.TYPE_14__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.ad7877* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_14__*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.TYPE_14__*, i32, %struct.ad7877*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ad7877*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.TYPE_14__*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @ad7877_write(%struct.spi_device*, i32, i64) #1

declare dso_local i64 @ad7877_read(%struct.spi_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, i8*, i8*) #1

declare dso_local i32 @ad7877_setup_ts_def_msg(%struct.spi_device*, %struct.ad7877*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_14__*, i64, i32*, i32, i32, i32, %struct.ad7877*) #1

declare dso_local i32 @devm_device_add_group(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
