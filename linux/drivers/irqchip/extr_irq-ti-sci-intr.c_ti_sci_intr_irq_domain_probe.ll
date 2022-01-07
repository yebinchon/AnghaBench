; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ti-sci-intr.c_ti_sci_intr_irq_domain_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ti-sci-intr.c_ti_sci_intr_irq_domain_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.irq_domain = type { i32 }
%struct.ti_sci_intr_irq_domain = type { i32*, i32, i32*, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to get IRQ parent node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to find IRQ parent domain\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"ti,intr-trigger-type\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"missing ti,intr-trigger-type property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"ti,sci\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"ti,sci read fail %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"ti,sci-dst-id\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"missing 'ti,sci-dst-id' property\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"ti,sci-rm-range-girq\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Destination irq resource allocation failed\0A\00", align 1
@ti_sci_intr_irq_domain_ops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Failed to allocate IRQ domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ti_sci_intr_irq_domain_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_intr_irq_domain_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca %struct.ti_sci_intr_irq_domain*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %8, align 8
  %12 = load %struct.device*, %struct.device** %8, align 8
  %13 = call i32 @dev_of_node(%struct.device* %12)
  %14 = call %struct.device_node* @of_irq_find_parent(i32 %13)
  store %struct.device_node* %14, %struct.device_node** %7, align 8
  %15 = load %struct.device_node*, %struct.device_node** %7, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %8, align 8
  %19 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %131

22:                                               ; preds = %1
  %23 = load %struct.device_node*, %struct.device_node** %7, align 8
  %24 = call %struct.irq_domain* @irq_find_host(%struct.device_node* %23)
  store %struct.irq_domain* %24, %struct.irq_domain** %4, align 8
  %25 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %26 = icmp ne %struct.irq_domain* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %8, align 8
  %29 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %131

32:                                               ; preds = %22
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.ti_sci_intr_irq_domain* @devm_kzalloc(%struct.device* %33, i32 32, i32 %34)
  store %struct.ti_sci_intr_irq_domain* %35, %struct.ti_sci_intr_irq_domain** %6, align 8
  %36 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %6, align 8
  %37 = icmp ne %struct.ti_sci_intr_irq_domain* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %131

41:                                               ; preds = %32
  %42 = load %struct.device*, %struct.device** %8, align 8
  %43 = call i32 @dev_of_node(%struct.device* %42)
  %44 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %6, align 8
  %45 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %44, i32 0, i32 3
  %46 = call i32 @of_property_read_u32(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.device*, %struct.device** %8, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %131

54:                                               ; preds = %41
  %55 = load %struct.device*, %struct.device** %8, align 8
  %56 = call i32* @devm_ti_sci_get_by_phandle(%struct.device* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %57 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %6, align 8
  %58 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  %59 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %6, align 8
  %60 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @IS_ERR(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %54
  %65 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %6, align 8
  %66 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @PTR_ERR(i32* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @EPROBE_DEFER, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load %struct.device*, %struct.device** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %64
  %78 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %6, align 8
  %79 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %78, i32 0, i32 2
  store i32* null, i32** %79, align 8
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %2, align 4
  br label %131

81:                                               ; preds = %54
  %82 = load %struct.device*, %struct.device** %8, align 8
  %83 = call i32 @dev_of_node(%struct.device* %82)
  %84 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %6, align 8
  %85 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %84, i32 0, i32 1
  %86 = call i32 @of_property_read_u32(i32 %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load %struct.device*, %struct.device** %8, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %131

94:                                               ; preds = %81
  %95 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %6, align 8
  %96 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.device*, %struct.device** %8, align 8
  %99 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %6, align 8
  %100 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32* @devm_ti_sci_get_of_resource(i32* %97, %struct.device* %98, i32 %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %103 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %6, align 8
  %104 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %103, i32 0, i32 0
  store i32* %102, i32** %104, align 8
  %105 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %6, align 8
  %106 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i64 @IS_ERR(i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %94
  %111 = load %struct.device*, %struct.device** %8, align 8
  %112 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %111, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %113 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %6, align 8
  %114 = getelementptr inbounds %struct.ti_sci_intr_irq_domain, %struct.ti_sci_intr_irq_domain* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @PTR_ERR(i32* %115)
  store i32 %116, i32* %2, align 4
  br label %131

117:                                              ; preds = %94
  %118 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %119 = load %struct.device*, %struct.device** %8, align 8
  %120 = call i32 @dev_of_node(%struct.device* %119)
  %121 = load %struct.ti_sci_intr_irq_domain*, %struct.ti_sci_intr_irq_domain** %6, align 8
  %122 = call %struct.irq_domain* @irq_domain_add_hierarchy(%struct.irq_domain* %118, i32 0, i32 0, i32 %120, i32* @ti_sci_intr_irq_domain_ops, %struct.ti_sci_intr_irq_domain* %121)
  store %struct.irq_domain* %122, %struct.irq_domain** %5, align 8
  %123 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %124 = icmp ne %struct.irq_domain* %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %117
  %126 = load %struct.device*, %struct.device** %8, align 8
  %127 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %126, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %131

130:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %125, %110, %89, %77, %49, %38, %27, %17
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.device_node* @of_irq_find_parent(i32) #1

declare dso_local i32 @dev_of_node(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.irq_domain* @irq_find_host(%struct.device_node*) #1

declare dso_local %struct.ti_sci_intr_irq_domain* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32* @devm_ti_sci_get_by_phandle(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_ti_sci_get_of_resource(i32*, %struct.device*, i32, i8*) #1

declare dso_local %struct.irq_domain* @irq_domain_add_hierarchy(%struct.irq_domain*, i32, i32, i32, i32*, %struct.ti_sci_intr_irq_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
