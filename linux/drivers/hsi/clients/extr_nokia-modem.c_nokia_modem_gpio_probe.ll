; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_nokia-modem.c_nokia_modem_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_nokia-modem.c_nokia_modem_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.nokia_modem_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"missing gpios: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"gpio-names\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"number of gpios does not equal number of gpio names\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Could not get gpio %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Could not get gpio name %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nokia_modem_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nokia_modem_gpio_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.nokia_modem_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.nokia_modem_device* @dev_get_drvdata(%struct.device* %13)
  store %struct.nokia_modem_device* %14, %struct.nokia_modem_device** %5, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = call i32 @of_gpio_count(%struct.device_node* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %152

24:                                               ; preds = %1
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = call i32 @of_property_count_strings(%struct.device_node* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %152

35:                                               ; preds = %24
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.TYPE_2__* @devm_kcalloc(%struct.device* %36, i32 %37, i32 8, i32 %38)
  %40 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %41 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %40, i32 0, i32 1
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %41, align 8
  %42 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %43 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %152

49:                                               ; preds = %35
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %52 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %148, %49
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %151

57:                                               ; preds = %53
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %61 = call i32 @devm_gpiod_get_index(%struct.device* %58, i32* null, i32 %59, i32 %60)
  %62 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %63 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %61, i32* %68, align 4
  %69 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %70 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %57
  %80 = load %struct.device*, %struct.device** %3, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %84 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %2, align 4
  br label %152

92:                                               ; preds = %57
  %93 = load %struct.device_node*, %struct.device_node** %4, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %96 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = call i32 @of_property_read_string_index(%struct.device_node* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %92
  %106 = load %struct.device*, %struct.device** %3, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %2, align 4
  br label %152

110:                                              ; preds = %92
  %111 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %112 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @gpiod_export(i32 %118, i32 0)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %110
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %2, align 4
  br label %152

124:                                              ; preds = %110
  %125 = load %struct.device*, %struct.device** %3, align 8
  %126 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %127 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.nokia_modem_device*, %struct.nokia_modem_device** %5, align 8
  %135 = getelementptr inbounds %struct.nokia_modem_device, %struct.nokia_modem_device* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @gpiod_export_link(%struct.device* %125, i32 %133, i32 %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %124
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %2, align 4
  br label %152

147:                                              ; preds = %124
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %53

151:                                              ; preds = %53
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %145, %122, %105, %79, %46, %30, %19
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.nokia_modem_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @of_gpio_count(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_property_count_strings(%struct.device_node*, i8*) #1

declare dso_local %struct.TYPE_2__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @devm_gpiod_get_index(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_property_read_string_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @gpiod_export(i32, i32) #1

declare dso_local i32 @gpiod_export_link(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
