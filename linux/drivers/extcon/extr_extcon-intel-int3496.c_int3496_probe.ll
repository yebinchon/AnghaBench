; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-int3496.c_int3496_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-int3496.c_int3496_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.int3496_data = type { i32, i32, i8*, i8*, i8*, i8*, %struct.device* }

@acpi_int3496_default_gpios = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't add GPIO ACPI mapping\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@int3496_do_usb_id = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"can't request USB ID GPIO: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"can't get USB ID IRQ: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@GPIOD_ASIS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"can't request VBUS EN GPIO\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"mux\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"can't request USB MUX GPIO\0A\00", align 1
@int3496_cable = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"can't register extcon device: %d\0A\00", align 1
@int3496_thread_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"can't request IRQ for USB ID GPIO: %d\0A\00", align 1
@system_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @int3496_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int3496_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.int3496_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @acpi_int3496_default_gpios, align 4
  %11 = call i32 @devm_acpi_dev_add_driver_gpios(%struct.device* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %164

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.int3496_data* @devm_kzalloc(%struct.device* %19, i32 48, i32 %20)
  store %struct.int3496_data* %21, %struct.int3496_data** %5, align 8
  %22 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %23 = icmp ne %struct.int3496_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %164

27:                                               ; preds = %18
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %30 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %29, i32 0, i32 6
  store %struct.device* %28, %struct.device** %30, align 8
  %31 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %32 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %31, i32 0, i32 1
  %33 = load i32, i32* @int3496_do_usb_id, align 4
  %34 = call i32 @INIT_DELAYED_WORK(i32* %32, i32 %33)
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* @GPIOD_IN, align 4
  %37 = call i8* @devm_gpiod_get(%struct.device* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %39 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %41 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %40, i32 0, i32 5
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @IS_ERR(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %27
  %46 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %47 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %46, i32 0, i32 5
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @PTR_ERR(i8* %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %164

54:                                               ; preds = %27
  %55 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %56 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %55, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @gpiod_to_irq(i8* %57)
  %59 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %60 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %62 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %54
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %68 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %72 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %2, align 4
  br label %164

74:                                               ; preds = %54
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load i32, i32* @GPIOD_ASIS, align 4
  %77 = call i8* @devm_gpiod_get(%struct.device* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %79 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %81 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %80, i32 0, i32 4
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = call i32 @dev_info(%struct.device* %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %74
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load i32, i32* @GPIOD_ASIS, align 4
  %91 = call i8* @devm_gpiod_get(%struct.device* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  %92 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %93 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %95 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @IS_ERR(i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = call i32 @dev_info(%struct.device* %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %88
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = load i32, i32* @int3496_cable, align 4
  %105 = call i8* @devm_extcon_dev_allocate(%struct.device* %103, i32 %104)
  %106 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %107 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %109 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @IS_ERR(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %102
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %164

116:                                              ; preds = %102
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %119 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @devm_extcon_dev_register(%struct.device* %117, i8* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %116
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %125, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %2, align 4
  br label %164

129:                                              ; preds = %116
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %132 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @int3496_thread_isr, align 4
  %135 = load i32, i32* @IRQF_SHARED, align 4
  %136 = load i32, i32* @IRQF_ONESHOT, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.device*, %struct.device** %4, align 8
  %143 = call i32 @dev_name(%struct.device* %142)
  %144 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %145 = call i32 @devm_request_threaded_irq(%struct.device* %130, i32 %133, i32* null, i32 %134, i32 %141, i32 %143, %struct.int3496_data* %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %129
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %149, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %2, align 4
  br label %164

153:                                              ; preds = %129
  %154 = load i32, i32* @system_wq, align 4
  %155 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %156 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %155, i32 0, i32 1
  %157 = call i32 @queue_delayed_work(i32 %154, i32* %156, i32 0)
  %158 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %159 = getelementptr inbounds %struct.int3496_data, %struct.int3496_data* %158, i32 0, i32 1
  %160 = call i32 @flush_delayed_work(i32* %159)
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = load %struct.int3496_data*, %struct.int3496_data** %5, align 8
  %163 = call i32 @platform_set_drvdata(%struct.platform_device* %161, %struct.int3496_data* %162)
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %153, %148, %124, %113, %65, %45, %24, %14
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @devm_acpi_dev_add_driver_gpios(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.int3496_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @gpiod_to_irq(i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i8* @devm_extcon_dev_allocate(%struct.device*, i32) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.int3496_data*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.int3496_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
