; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_sirfsoc-onkey.c_sirfsoc_pwrc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_sirfsoc-onkey.c_sirfsoc_pwrc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sirfsoc_pwrc_drvdata = type { %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i8*, i8*, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Not enough memory for the device data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"unable to find base address of pwrc node in dtb\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"sirfsoc pwrckey\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"pwrc/input0\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@sirfsoc_pwrc_report_event = common dso_local global i32 0, align 4
@sirfsoc_pwrc_open = common dso_local global i32 0, align 4
@sirfsoc_pwrc_close = common dso_local global i32 0, align 4
@sirfsoc_pwrc_isr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"sirfsoc_pwrc_int\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"unable to claim irq %d, error: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"unable to register input device, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sirfsoc_pwrc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_pwrc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.sirfsoc_pwrc_drvdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sirfsoc_pwrc_drvdata* @devm_kzalloc(%struct.TYPE_13__* %13, i32 16, i32 %14)
  store %struct.sirfsoc_pwrc_drvdata* %15, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %16 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %17 = icmp ne %struct.sirfsoc_pwrc_drvdata* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @dev_info(%struct.TYPE_13__* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %131

24:                                               ; preds = %1
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %27 = getelementptr inbounds %struct.sirfsoc_pwrc_drvdata, %struct.sirfsoc_pwrc_drvdata* %26, i32 0, i32 2
  %28 = call i32 @of_property_read_u32(%struct.device_node* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %33, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %131

36:                                               ; preds = %24
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call %struct.TYPE_12__* @devm_input_allocate_device(%struct.TYPE_13__* %38)
  %40 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %41 = getelementptr inbounds %struct.sirfsoc_pwrc_drvdata, %struct.sirfsoc_pwrc_drvdata* %40, i32 0, i32 0
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %41, align 8
  %42 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %43 = getelementptr inbounds %struct.sirfsoc_pwrc_drvdata, %struct.sirfsoc_pwrc_drvdata* %42, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = icmp ne %struct.TYPE_12__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %131

49:                                               ; preds = %36
  %50 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %51 = getelementptr inbounds %struct.sirfsoc_pwrc_drvdata, %struct.sirfsoc_pwrc_drvdata* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %53, align 8
  %54 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %55 = getelementptr inbounds %struct.sirfsoc_pwrc_drvdata, %struct.sirfsoc_pwrc_drvdata* %54, i32 0, i32 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %57, align 8
  %58 = load i32, i32* @EV_KEY, align 4
  %59 = call i32 @BIT_MASK(i32 %58)
  %60 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %61 = getelementptr inbounds %struct.sirfsoc_pwrc_drvdata, %struct.sirfsoc_pwrc_drvdata* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %59, i32* %65, align 4
  %66 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %67 = getelementptr inbounds %struct.sirfsoc_pwrc_drvdata, %struct.sirfsoc_pwrc_drvdata* %66, i32 0, i32 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = load i32, i32* @EV_KEY, align 4
  %70 = load i32, i32* @KEY_POWER, align 4
  %71 = call i32 @input_set_capability(%struct.TYPE_12__* %68, i32 %69, i32 %70)
  %72 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %73 = getelementptr inbounds %struct.sirfsoc_pwrc_drvdata, %struct.sirfsoc_pwrc_drvdata* %72, i32 0, i32 1
  %74 = load i32, i32* @sirfsoc_pwrc_report_event, align 4
  %75 = call i32 @INIT_DELAYED_WORK(i32* %73, i32 %74)
  %76 = load i32, i32* @sirfsoc_pwrc_open, align 4
  %77 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %78 = getelementptr inbounds %struct.sirfsoc_pwrc_drvdata, %struct.sirfsoc_pwrc_drvdata* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 3
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* @sirfsoc_pwrc_close, align 4
  %82 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %83 = getelementptr inbounds %struct.sirfsoc_pwrc_drvdata, %struct.sirfsoc_pwrc_drvdata* %82, i32 0, i32 0
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  store i32 %81, i32* %85, align 8
  %86 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %87 = getelementptr inbounds %struct.sirfsoc_pwrc_drvdata, %struct.sirfsoc_pwrc_drvdata* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %90 = call i32 @input_set_drvdata(%struct.TYPE_12__* %88, %struct.sirfsoc_pwrc_drvdata* %89)
  %91 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %92 = call i32 @sirfsoc_pwrc_toggle_interrupts(%struct.sirfsoc_pwrc_drvdata* %91, i32 0)
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = call i32 @platform_get_irq(%struct.platform_device* %93, i32 0)
  store i32 %94, i32* %6, align 4
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @sirfsoc_pwrc_isr, align 4
  %99 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %100 = call i32 @devm_request_irq(%struct.TYPE_13__* %96, i32 %97, i32 %98, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), %struct.sirfsoc_pwrc_drvdata* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %49
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %2, align 4
  br label %131

110:                                              ; preds = %49
  %111 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %112 = getelementptr inbounds %struct.sirfsoc_pwrc_drvdata, %struct.sirfsoc_pwrc_drvdata* %111, i32 0, i32 0
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = call i32 @input_register_device(%struct.TYPE_12__* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load i32, i32* %7, align 4
  %121 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %119, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %2, align 4
  br label %131

123:                                              ; preds = %110
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %127 = call i32 @dev_set_drvdata(%struct.TYPE_13__* %125, %struct.sirfsoc_pwrc_drvdata* %126)
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 @device_init_wakeup(%struct.TYPE_13__* %129, i32 1)
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %123, %117, %103, %46, %31, %18
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.sirfsoc_pwrc_drvdata* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local %struct.TYPE_12__* @devm_input_allocate_device(%struct.TYPE_13__*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_12__*, %struct.sirfsoc_pwrc_drvdata*) #1

declare dso_local i32 @sirfsoc_pwrc_toggle_interrupts(%struct.sirfsoc_pwrc_drvdata*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_13__*, i32, i32, i32, i8*, %struct.sirfsoc_pwrc_drvdata*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_13__*, %struct.sirfsoc_pwrc_drvdata*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
