; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2-gpio.c_ps2_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2-gpio.c_ps2_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ps2_gpio_data = type { i32, i32, i32, i32, i32, i32, %struct.device*, %struct.serio*, i64, i32, i32 }
%struct.serio = type { i32, i32, %struct.TYPE_4__, %struct.ps2_gpio_data*, i32*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"GPIO data or clk are connected via slow bus\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ps2_gpio_irq = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to request irq %d: %d\0A\00", align 1
@SERIO_8042 = common dso_local global i32 0, align 4
@ps2_gpio_open = common dso_local global i32 0, align 4
@ps2_gpio_close = common dso_local global i32 0, align 4
@ps2_gpio_write = common dso_local global i32* null, align 8
@PS2_MODE_RX = common dso_local global i32 0, align 4
@ps2_gpio_tx_work_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ps2_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ps2_gpio_data*, align 8
  %5 = alloca %struct.serio*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ps2_gpio_data* @devm_kzalloc(%struct.device* %10, i32 56, i32 %11)
  store %struct.ps2_gpio_data* %12, %struct.ps2_gpio_data** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.serio* @kzalloc(i32 48, i32 %13)
  store %struct.serio* %14, %struct.serio** %5, align 8
  %15 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %16 = icmp ne %struct.ps2_gpio_data* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.serio*, %struct.serio** %5, align 8
  %19 = icmp ne %struct.serio* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %150

23:                                               ; preds = %17
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %26 = call i32 @ps2_gpio_get_props(%struct.device* %24, %struct.ps2_gpio_data* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %150

30:                                               ; preds = %23
  %31 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %32 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @gpiod_cansleep(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %38 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @gpiod_cansleep(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36, %30
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %150

47:                                               ; preds = %36
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = call i32 @platform_get_irq(%struct.platform_device* %48, i32 0)
  %50 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %51 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %53 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %58 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %7, align 4
  br label %150

60:                                               ; preds = %47
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %63 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ps2_gpio_irq, align 4
  %66 = load i32, i32* @IRQF_NO_THREAD, align 4
  %67 = load i32, i32* @DRIVER_NAME, align 4
  %68 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %69 = call i32 @devm_request_irq(%struct.device* %61, i32 %64, i32 %65, i32 %66, i32 %67, %struct.ps2_gpio_data* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %60
  %73 = load %struct.device*, %struct.device** %6, align 8
  %74 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %75 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77)
  br label %150

79:                                               ; preds = %60
  %80 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %81 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @disable_irq(i32 %82)
  %84 = load i32, i32* @SERIO_8042, align 4
  %85 = load %struct.serio*, %struct.serio** %5, align 8
  %86 = getelementptr inbounds %struct.serio, %struct.serio* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* @ps2_gpio_open, align 4
  %89 = load %struct.serio*, %struct.serio** %5, align 8
  %90 = getelementptr inbounds %struct.serio, %struct.serio* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @ps2_gpio_close, align 4
  %92 = load %struct.serio*, %struct.serio** %5, align 8
  %93 = getelementptr inbounds %struct.serio, %struct.serio* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %95 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %94, i32 0, i32 8
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %79
  %99 = load i32*, i32** @ps2_gpio_write, align 8
  br label %101

100:                                              ; preds = %79
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32* [ %99, %98 ], [ null, %100 ]
  %103 = load %struct.serio*, %struct.serio** %5, align 8
  %104 = getelementptr inbounds %struct.serio, %struct.serio* %103, i32 0, i32 4
  store i32* %102, i32** %104, align 8
  %105 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %106 = load %struct.serio*, %struct.serio** %5, align 8
  %107 = getelementptr inbounds %struct.serio, %struct.serio* %106, i32 0, i32 3
  store %struct.ps2_gpio_data* %105, %struct.ps2_gpio_data** %107, align 8
  %108 = load %struct.device*, %struct.device** %6, align 8
  %109 = load %struct.serio*, %struct.serio** %5, align 8
  %110 = getelementptr inbounds %struct.serio, %struct.serio* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store %struct.device* %108, %struct.device** %111, align 8
  %112 = load %struct.serio*, %struct.serio** %5, align 8
  %113 = getelementptr inbounds %struct.serio, %struct.serio* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.device*, %struct.device** %6, align 8
  %116 = call i32 @dev_name(%struct.device* %115)
  %117 = call i32 @strlcpy(i32 %114, i32 %116, i32 4)
  %118 = load %struct.serio*, %struct.serio** %5, align 8
  %119 = getelementptr inbounds %struct.serio, %struct.serio* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.device*, %struct.device** %6, align 8
  %122 = call i32 @dev_name(%struct.device* %121)
  %123 = call i32 @strlcpy(i32 %120, i32 %122, i32 4)
  %124 = load %struct.serio*, %struct.serio** %5, align 8
  %125 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %126 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %125, i32 0, i32 7
  store %struct.serio* %124, %struct.serio** %126, align 8
  %127 = load %struct.device*, %struct.device** %6, align 8
  %128 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %129 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %128, i32 0, i32 6
  store %struct.device* %127, %struct.device** %129, align 8
  %130 = load i32, i32* @PS2_MODE_RX, align 4
  %131 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %132 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 4
  %133 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %134 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %133, i32 0, i32 1
  store i32 1, i32* %134, align 4
  %135 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %136 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %135, i32 0, i32 4
  %137 = load i32, i32* @ps2_gpio_tx_work_fn, align 4
  %138 = call i32 @INIT_DELAYED_WORK(i32* %136, i32 %137)
  %139 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %140 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %139, i32 0, i32 3
  %141 = call i32 @init_completion(i32* %140)
  %142 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %143 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %142, i32 0, i32 2
  %144 = call i32 @mutex_init(i32* %143)
  %145 = load %struct.serio*, %struct.serio** %5, align 8
  %146 = call i32 @serio_register_port(%struct.serio* %145)
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %4, align 8
  %149 = call i32 @platform_set_drvdata(%struct.platform_device* %147, %struct.ps2_gpio_data* %148)
  store i32 0, i32* %2, align 4
  br label %154

150:                                              ; preds = %72, %56, %42, %29, %20
  %151 = load %struct.serio*, %struct.serio** %5, align 8
  %152 = call i32 @kfree(%struct.serio* %151)
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %150, %101
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.ps2_gpio_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.serio* @kzalloc(i32, i32) #1

declare dso_local i32 @ps2_gpio_get_props(%struct.device*, %struct.ps2_gpio_data*) #1

declare dso_local i64 @gpiod_cansleep(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.ps2_gpio_data*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @serio_register_port(%struct.serio*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ps2_gpio_data*) #1

declare dso_local i32 @kfree(%struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
