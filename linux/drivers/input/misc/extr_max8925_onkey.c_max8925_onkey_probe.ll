; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8925_onkey.c_max8925_onkey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8925_onkey.c_max8925_onkey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.max8925_chip = type { i32, i32 }
%struct.max8925_onkey_info = type { i32*, %struct.input_dev*, %struct.TYPE_9__*, i32 }
%struct.input_dev = type { i8*, i8*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"max8925_on\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"max8925_on/input0\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@max8925_onkey_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"onkey-down\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to request IRQ: #%d: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"onkey-up\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Can't register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max8925_onkey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_onkey_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max8925_chip*, align 8
  %5 = alloca %struct.max8925_onkey_info*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.max8925_chip* @dev_get_drvdata(i32 %12)
  store %struct.max8925_chip* %13, %struct.max8925_chip** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = call i32 @platform_get_irq(%struct.platform_device* %14, i32 0)
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %154

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call i32 @platform_get_irq(%struct.platform_device* %24, i32 1)
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %154

33:                                               ; preds = %23
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.max8925_onkey_info* @devm_kzalloc(%struct.TYPE_9__* %35, i32 32, i32 %36)
  store %struct.max8925_onkey_info* %37, %struct.max8925_onkey_info** %5, align 8
  %38 = load %struct.max8925_onkey_info*, %struct.max8925_onkey_info** %5, align 8
  %39 = icmp ne %struct.max8925_onkey_info* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %154

43:                                               ; preds = %33
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_9__* %45)
  store %struct.input_dev* %46, %struct.input_dev** %6, align 8
  %47 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %48 = icmp ne %struct.input_dev* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %154

52:                                               ; preds = %43
  %53 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %54 = load %struct.max8925_onkey_info*, %struct.max8925_onkey_info** %5, align 8
  %55 = getelementptr inbounds %struct.max8925_onkey_info, %struct.max8925_onkey_info* %54, i32 0, i32 1
  store %struct.input_dev* %53, %struct.input_dev** %55, align 8
  %56 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %57 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.max8925_onkey_info*, %struct.max8925_onkey_info** %5, align 8
  %60 = getelementptr inbounds %struct.max8925_onkey_info, %struct.max8925_onkey_info* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.max8925_onkey_info*, %struct.max8925_onkey_info** %5, align 8
  %64 = getelementptr inbounds %struct.max8925_onkey_info, %struct.max8925_onkey_info* %63, i32 0, i32 2
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %64, align 8
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.max8925_onkey_info*, %struct.max8925_onkey_info** %5, align 8
  %68 = getelementptr inbounds %struct.max8925_onkey_info, %struct.max8925_onkey_info* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %66, i32* %70, align 4
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.max8925_onkey_info*, %struct.max8925_onkey_info** %5, align 8
  %74 = getelementptr inbounds %struct.max8925_onkey_info, %struct.max8925_onkey_info* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %72, i32* %76, align 4
  %77 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %77, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %78, align 8
  %79 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %80 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %79, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %80, align 8
  %81 = load i32, i32* @BUS_I2C, align 4
  %82 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %83 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %88 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %89, align 8
  %90 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %91 = load i32, i32* @EV_KEY, align 4
  %92 = load i32, i32* @KEY_POWER, align 4
  %93 = call i32 @input_set_capability(%struct.input_dev* %90, i32 %91, i32 %92)
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @max8925_onkey_handler, align 4
  %99 = load i32, i32* @IRQF_ONESHOT, align 4
  %100 = load %struct.max8925_onkey_info*, %struct.max8925_onkey_info** %5, align 8
  %101 = call i32 @devm_request_threaded_irq(%struct.TYPE_9__* %95, i32 %97, i32* null, i32 %98, i32 %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.max8925_onkey_info* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %52
  %105 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %106 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %2, align 4
  br label %154

113:                                              ; preds = %52
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @max8925_onkey_handler, align 4
  %119 = load i32, i32* @IRQF_ONESHOT, align 4
  %120 = load %struct.max8925_onkey_info*, %struct.max8925_onkey_info** %5, align 8
  %121 = call i32 @devm_request_threaded_irq(%struct.TYPE_9__* %115, i32 %117, i32* null, i32 %118, i32 %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.max8925_onkey_info* %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %113
  %125 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %126 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %129, i32 %130)
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %2, align 4
  br label %154

133:                                              ; preds = %113
  %134 = load %struct.max8925_onkey_info*, %struct.max8925_onkey_info** %5, align 8
  %135 = getelementptr inbounds %struct.max8925_onkey_info, %struct.max8925_onkey_info* %134, i32 0, i32 1
  %136 = load %struct.input_dev*, %struct.input_dev** %135, align 8
  %137 = call i32 @input_register_device(%struct.input_dev* %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %133
  %141 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %142 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %2, align 4
  br label %154

147:                                              ; preds = %133
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = load %struct.max8925_onkey_info*, %struct.max8925_onkey_info** %5, align 8
  %150 = call i32 @platform_set_drvdata(%struct.platform_device* %148, %struct.max8925_onkey_info* %149)
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = call i32 @device_init_wakeup(%struct.TYPE_9__* %152, i32 1)
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %147, %140, %124, %104, %49, %40, %30, %20
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.max8925_chip* @dev_get_drvdata(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.max8925_onkey_info* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_9__*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_9__*, i32, i32*, i32, i32, i8*, %struct.max8925_onkey_info*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max8925_onkey_info*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
