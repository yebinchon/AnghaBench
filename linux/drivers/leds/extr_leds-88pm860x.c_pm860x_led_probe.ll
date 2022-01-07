; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-88pm860x.c_pm860x_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-88pm860x.c_pm860x_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.pm860x_chip = type { i64, i32, i32, i32 }
%struct.pm860x_led_pdata = type { i32 }
%struct.pm860x_led = type { i32, %struct.TYPE_6__, i32, i32, i64, i32, i32, %struct.pm860x_chip*, i8*, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32)*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"No REG resource for control\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"blink\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"No REG resource for blink\0A\00", align 1
@MFD_NAME_SIZE = common dso_local global i32 0, align 4
@LED1_BLINK_EN = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"led0-red\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"led0-green\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"led0-blue\00", align 1
@LED2_BLINK_EN = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"led1-red\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"led1-green\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"led1-blue\00", align 1
@CHIP_PM8606 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"Failed to register LED: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm860x_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm860x_chip*, align 8
  %5 = alloca %struct.pm860x_led_pdata*, align 8
  %6 = alloca %struct.pm860x_led*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.pm860x_chip* @dev_get_drvdata(i32 %12)
  store %struct.pm860x_chip* %13, %struct.pm860x_chip** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 1
  %16 = call %struct.pm860x_led_pdata* @dev_get_platdata(%struct.TYPE_7__* %15)
  store %struct.pm860x_led_pdata* %16, %struct.pm860x_led_pdata** %5, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.pm860x_led* @devm_kzalloc(%struct.TYPE_7__* %18, i32 72, i32 %19)
  store %struct.pm860x_led* %20, %struct.pm860x_led** %6, align 8
  %21 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %22 = icmp eq %struct.pm860x_led* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %190

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load i32, i32* @IORESOURCE_REG, align 4
  %29 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %27, i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %29, %struct.resource** %7, align 8
  %30 = load %struct.resource*, %struct.resource** %7, align 8
  %31 = icmp ne %struct.resource* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 1
  %35 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ENXIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %190

38:                                               ; preds = %26
  %39 = load %struct.resource*, %struct.resource** %7, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %43 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %42, i32 0, i32 10
  store i32 %41, i32* %43, align 4
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load i32, i32* @IORESOURCE_REG, align 4
  %46 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %44, i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %46, %struct.resource** %7, align 8
  %47 = load %struct.resource*, %struct.resource** %7, align 8
  %48 = icmp ne %struct.resource* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %38
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 1
  %52 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %190

55:                                               ; preds = %38
  %56 = load %struct.resource*, %struct.resource** %7, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %60 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 8
  %61 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %62 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MFD_NAME_SIZE, align 4
  %65 = call i32 @memset(i32 %63, i32 0, i32 %64)
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %117 [
    i32 0, label %69
    i32 1, label %77
    i32 2, label %85
    i32 3, label %93
    i32 4, label %101
    i32 5, label %109
  ]

69:                                               ; preds = %55
  %70 = load i8*, i8** @LED1_BLINK_EN, align 8
  %71 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %72 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %71, i32 0, i32 8
  store i8* %70, i8** %72, align 8
  %73 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %74 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @sprintf(i32 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %117

77:                                               ; preds = %55
  %78 = load i8*, i8** @LED1_BLINK_EN, align 8
  %79 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %80 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %79, i32 0, i32 8
  store i8* %78, i8** %80, align 8
  %81 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %82 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @sprintf(i32 %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %117

85:                                               ; preds = %55
  %86 = load i8*, i8** @LED1_BLINK_EN, align 8
  %87 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %88 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %87, i32 0, i32 8
  store i8* %86, i8** %88, align 8
  %89 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %90 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @sprintf(i32 %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %117

93:                                               ; preds = %55
  %94 = load i8*, i8** @LED2_BLINK_EN, align 8
  %95 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %96 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %95, i32 0, i32 8
  store i8* %94, i8** %96, align 8
  %97 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %98 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @sprintf(i32 %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %117

101:                                              ; preds = %55
  %102 = load i8*, i8** @LED2_BLINK_EN, align 8
  %103 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %104 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %103, i32 0, i32 8
  store i8* %102, i8** %104, align 8
  %105 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %106 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @sprintf(i32 %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %117

109:                                              ; preds = %55
  %110 = load i8*, i8** @LED2_BLINK_EN, align 8
  %111 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %112 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %111, i32 0, i32 8
  store i8* %110, i8** %112, align 8
  %113 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %114 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @sprintf(i32 %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %117

117:                                              ; preds = %55, %109, %101, %93, %85, %77, %69
  %118 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %119 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %120 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %119, i32 0, i32 7
  store %struct.pm860x_chip* %118, %struct.pm860x_chip** %120, align 8
  %121 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %122 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @CHIP_PM8606, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %117
  %127 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %128 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  br label %134

130:                                              ; preds = %117
  %131 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %132 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  br label %134

134:                                              ; preds = %130, %126
  %135 = phi i32 [ %129, %126 ], [ %133, %130 ]
  %136 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %137 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 4
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %142 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %145 = call i64 @pm860x_led_dt_init(%struct.platform_device* %143, %struct.pm860x_led* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %134
  %148 = load %struct.pm860x_led_pdata*, %struct.pm860x_led_pdata** %5, align 8
  %149 = icmp ne %struct.pm860x_led_pdata* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load %struct.pm860x_led_pdata*, %struct.pm860x_led_pdata** %5, align 8
  %152 = getelementptr inbounds %struct.pm860x_led_pdata, %struct.pm860x_led_pdata* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %155 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %150, %147
  br label %157

157:                                              ; preds = %156, %134
  %158 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %159 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %158, i32 0, i32 4
  store i64 0, i64* %159, align 8
  %160 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %161 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %164 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 8
  %166 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %167 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  store i32 (%struct.TYPE_6__*, i32)* @pm860x_led_set, i32 (%struct.TYPE_6__*, i32)** %168, align 8
  %169 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %170 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %169, i32 0, i32 2
  %171 = call i32 @mutex_init(i32* %170)
  %172 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %173 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %176 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %175, i32 0, i32 1
  %177 = call i32 @devm_led_classdev_register(i32 %174, %struct.TYPE_6__* %176)
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %157
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 1
  %183 = load i32, i32* %8, align 4
  %184 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %182, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* %8, align 4
  store i32 %185, i32* %2, align 4
  br label %190

186:                                              ; preds = %157
  %187 = load %struct.pm860x_led*, %struct.pm860x_led** %6, align 8
  %188 = getelementptr inbounds %struct.pm860x_led, %struct.pm860x_led* %187, i32 0, i32 1
  %189 = call i32 @pm860x_led_set(%struct.TYPE_6__* %188, i32 0)
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %186, %180, %49, %32, %23
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.pm860x_chip* @dev_get_drvdata(i32) #1

declare dso_local %struct.pm860x_led_pdata* @dev_get_platdata(%struct.TYPE_7__*) #1

declare dso_local %struct.pm860x_led* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i64 @pm860x_led_dt_init(%struct.platform_device*, %struct.pm860x_led*) #1

declare dso_local i32 @pm860x_led_set(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_led_classdev_register(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
