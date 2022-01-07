; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-spear-spics.c_spics_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-spear-spics.c_spics_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.spear_spics = type { i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"st-spics,peripcfg-reg\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"st-spics,sw-enable-bit\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"st-spics,cs-value-bit\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"st-spics,cs-enable-mask\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"st-spics,cs-enable-shift\00", align 1
@NUM_OF_GPIO = common dso_local global i32 0, align 4
@spics_request = common dso_local global i32 0, align 4
@spics_free = common dso_local global i32 0, align 4
@spics_direction_input = common dso_local global i32 0, align 4
@spics_direction_output = common dso_local global i32 0, align 4
@spics_get_value = common dso_local global i32 0, align 4
@spics_set_value = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"unable to add gpio chip\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"spear spics registered\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"DT probe failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spics_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spics_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.spear_spics*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.spear_spics* @devm_kzalloc(%struct.TYPE_7__* %12, i32 80, i32 %13)
  store %struct.spear_spics* %14, %struct.spear_spics** %5, align 8
  %15 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %16 = icmp ne %struct.spear_spics* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %145

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %21, i32 0)
  %23 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %24 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %26 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %32 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %145

35:                                               ; preds = %20
  %36 = load %struct.device_node*, %struct.device_node** %4, align 8
  %37 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %38 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %37, i32 0, i32 6
  %39 = call i64 @of_property_read_u32(%struct.device_node* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %139

42:                                               ; preds = %35
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %45 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %44, i32 0, i32 5
  %46 = call i64 @of_property_read_u32(%struct.device_node* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %139

49:                                               ; preds = %42
  %50 = load %struct.device_node*, %struct.device_node** %4, align 8
  %51 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %52 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %51, i32 0, i32 4
  %53 = call i64 @of_property_read_u32(%struct.device_node* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %139

56:                                               ; preds = %49
  %57 = load %struct.device_node*, %struct.device_node** %4, align 8
  %58 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %59 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %58, i32 0, i32 3
  %60 = call i64 @of_property_read_u32(%struct.device_node* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %139

63:                                               ; preds = %56
  %64 = load %struct.device_node*, %struct.device_node** %4, align 8
  %65 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %66 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %65, i32 0, i32 2
  %67 = call i64 @of_property_read_u32(%struct.device_node* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %139

70:                                               ; preds = %63
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %73 = call i32 @platform_set_drvdata(%struct.platform_device* %71, %struct.spear_spics* %72)
  %74 = load i32, i32* @NUM_OF_GPIO, align 4
  %75 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %76 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 10
  store i32 %74, i32* %77, align 4
  %78 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %79 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 -1, i32* %80, align 8
  %81 = load i32, i32* @spics_request, align 4
  %82 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %83 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 9
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* @spics_free, align 4
  %86 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %87 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 8
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* @spics_direction_input, align 4
  %90 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %91 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 7
  store i32 %89, i32* %92, align 8
  %93 = load i32, i32* @spics_direction_output, align 4
  %94 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %95 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 6
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @spics_get_value, align 4
  %98 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %99 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 5
  store i32 %97, i32* %100, align 8
  %101 = load i32, i32* @spics_set_value, align 4
  %102 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %103 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  store i32 %101, i32* %104, align 4
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 @dev_name(%struct.TYPE_7__* %106)
  %108 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %109 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  store i32 %107, i32* %110, align 8
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %114 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  store %struct.TYPE_7__* %112, %struct.TYPE_7__** %115, align 8
  %116 = load i32, i32* @THIS_MODULE, align 4
  %117 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %118 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %121 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %120, i32 0, i32 0
  store i32 -1, i32* %121, align 8
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %125 = getelementptr inbounds %struct.spear_spics, %struct.spear_spics* %124, i32 0, i32 1
  %126 = load %struct.spear_spics*, %struct.spear_spics** %5, align 8
  %127 = call i32 @devm_gpiochip_add_data(%struct.TYPE_7__* %123, %struct.TYPE_8__* %125, %struct.spear_spics* %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %70
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 @dev_err(%struct.TYPE_7__* %132, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %2, align 4
  br label %145

135:                                              ; preds = %70
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 @dev_info(%struct.TYPE_7__* %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %145

139:                                              ; preds = %69, %62, %55, %48, %41
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 @dev_err(%struct.TYPE_7__* %141, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %139, %135, %130, %30, %17
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.spear_spics* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spear_spics*) #1

declare dso_local i32 @dev_name(%struct.TYPE_7__*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.spear_spics*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
