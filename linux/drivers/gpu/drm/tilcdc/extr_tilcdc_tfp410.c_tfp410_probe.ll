; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_tfp410.c_tfp410_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_tfp410.c_tfp410_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.tilcdc_module*, %struct.device_node* }
%struct.tilcdc_module = type { i32 }
%struct.device_node = type { i32 }
%struct.tfp410_module = type { i64, i32, %struct.tilcdc_module }
%struct.pinctrl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"device-tree data is missing\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"tfp410\00", align 1
@tfp410_module_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"pins are not configured\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"could not get i2c bus phandle\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"could not get i2c bus node\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"could not get i2c\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"powerdn-gpio\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"No power down GPIO\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"DVI_PDn\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"could not get DVI_PDn gpio\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tfp410_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfp410_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.tfp410_module*, align 8
  %7 = alloca %struct.tilcdc_module*, align 8
  %8 = alloca %struct.pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_err(%struct.TYPE_5__* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %123

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.tfp410_module* @devm_kzalloc(%struct.TYPE_5__* %27, i32 16, i32 %28)
  store %struct.tfp410_module* %29, %struct.tfp410_module** %6, align 8
  %30 = load %struct.tfp410_module*, %struct.tfp410_module** %6, align 8
  %31 = icmp ne %struct.tfp410_module* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %123

35:                                               ; preds = %25
  %36 = load %struct.tfp410_module*, %struct.tfp410_module** %6, align 8
  %37 = getelementptr inbounds %struct.tfp410_module, %struct.tfp410_module* %36, i32 0, i32 2
  store %struct.tilcdc_module* %37, %struct.tilcdc_module** %7, align 8
  %38 = load %struct.tilcdc_module*, %struct.tilcdc_module** %7, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store %struct.tilcdc_module* %38, %struct.tilcdc_module** %41, align 8
  %42 = load %struct.tilcdc_module*, %struct.tilcdc_module** %7, align 8
  %43 = call i32 @tilcdc_module_init(%struct.tilcdc_module* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* @tfp410_module_ops)
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call %struct.pinctrl* @devm_pinctrl_get_select_default(%struct.TYPE_5__* %45)
  store %struct.pinctrl* %46, %struct.pinctrl** %8, align 8
  %47 = load %struct.pinctrl*, %struct.pinctrl** %8, align 8
  %48 = call i64 @IS_ERR(%struct.pinctrl* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %35
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @dev_warn(%struct.TYPE_5__* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %50, %35
  %55 = load %struct.device_node*, %struct.device_node** %4, align 8
  %56 = call i64 @of_property_read_u32(%struct.device_node* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @dev_err(%struct.TYPE_5__* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %119

62:                                               ; preds = %54
  %63 = load i32, i32* %9, align 4
  %64 = call %struct.device_node* @of_find_node_by_phandle(i32 %63)
  store %struct.device_node* %64, %struct.device_node** %5, align 8
  %65 = load %struct.device_node*, %struct.device_node** %5, align 8
  %66 = icmp ne %struct.device_node* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @dev_err(%struct.TYPE_5__* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %119

71:                                               ; preds = %62
  %72 = load %struct.device_node*, %struct.device_node** %5, align 8
  %73 = call i32 @of_find_i2c_adapter_by_node(%struct.device_node* %72)
  %74 = load %struct.tfp410_module*, %struct.tfp410_module** %6, align 8
  %75 = getelementptr inbounds %struct.tfp410_module, %struct.tfp410_module* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.tfp410_module*, %struct.tfp410_module** %6, align 8
  %77 = getelementptr inbounds %struct.tfp410_module, %struct.tfp410_module* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %71
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @dev_err(%struct.TYPE_5__* %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %84 = load %struct.device_node*, %struct.device_node** %5, align 8
  %85 = call i32 @of_node_put(%struct.device_node* %84)
  br label %119

86:                                               ; preds = %71
  %87 = load %struct.device_node*, %struct.device_node** %5, align 8
  %88 = call i32 @of_node_put(%struct.device_node* %87)
  %89 = load %struct.device_node*, %struct.device_node** %4, align 8
  %90 = call i64 @of_get_named_gpio_flags(%struct.device_node* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 0, i32* null)
  %91 = load %struct.tfp410_module*, %struct.tfp410_module** %6, align 8
  %92 = getelementptr inbounds %struct.tfp410_module, %struct.tfp410_module* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.tfp410_module*, %struct.tfp410_module** %6, align 8
  %94 = getelementptr inbounds %struct.tfp410_module, %struct.tfp410_module* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %86
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @dev_warn(%struct.TYPE_5__* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %113

101:                                              ; preds = %86
  %102 = load %struct.tfp410_module*, %struct.tfp410_module** %6, align 8
  %103 = getelementptr inbounds %struct.tfp410_module, %struct.tfp410_module* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @gpio_request(i64 %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 @dev_err(%struct.TYPE_5__* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %114

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %97
  store i32 0, i32* %2, align 4
  br label %123

114:                                              ; preds = %108
  %115 = load %struct.tfp410_module*, %struct.tfp410_module** %6, align 8
  %116 = getelementptr inbounds %struct.tfp410_module, %struct.tfp410_module* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @i2c_put_adapter(i32 %117)
  br label %119

119:                                              ; preds = %114, %80, %67, %58
  %120 = load %struct.tilcdc_module*, %struct.tilcdc_module** %7, align 8
  %121 = call i32 @tilcdc_module_cleanup(%struct.tilcdc_module* %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %119, %113, %32, %19
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.tfp410_module* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @tilcdc_module_init(%struct.tilcdc_module*, i8*, i32*) #1

declare dso_local %struct.pinctrl* @devm_pinctrl_get_select_default(%struct.TYPE_5__*) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_find_node_by_phandle(i32) #1

declare dso_local i32 @of_find_i2c_adapter_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @of_get_named_gpio_flags(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @gpio_request(i64, i8*) #1

declare dso_local i32 @i2c_put_adapter(i32) #1

declare dso_local i32 @tilcdc_module_cleanup(%struct.tilcdc_module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
