; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ti-sci-inta.c_ti_sci_inta_irq_domain_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ti-sci-inta.c_ti_sci_inta_irq_domain_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.irq_domain = type { i32 }
%struct.device_node = type { i32 }
%struct.ti_sci_inta_irq_domain = type { i32, i32, i32*, i32*, i32*, i32*, %struct.platform_device* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to get IRQ parent node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ti,sci\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ti,sci read fail %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ti,sci-dev-id\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"missing 'ti,sci-dev-id' property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"ti,sci-rm-range-vint\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"VINT resource allocation failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"ti,sci-rm-range-global-event\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Global event resource allocation failed\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ti_sci_inta_irq_domain_ops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"Failed to allocate IRQ domain\0A\00", align 1
@ti_sci_inta_msi_domain_info = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Failed to allocate msi domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ti_sci_inta_irq_domain_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_inta_irq_domain_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.ti_sci_inta_irq_domain*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %10, align 8
  %15 = load %struct.device*, %struct.device** %10, align 8
  %16 = call %struct.device_node* @dev_of_node(%struct.device* %15)
  store %struct.device_node* %16, %struct.device_node** %8, align 8
  %17 = load %struct.device_node*, %struct.device_node** %8, align 8
  %18 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* %17)
  store %struct.device_node* %18, %struct.device_node** %7, align 8
  %19 = load %struct.device_node*, %struct.device_node** %7, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %10, align 8
  %23 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %189

26:                                               ; preds = %1
  %27 = load %struct.device_node*, %struct.device_node** %7, align 8
  %28 = call %struct.irq_domain* @irq_find_host(%struct.device_node* %27)
  store %struct.irq_domain* %28, %struct.irq_domain** %4, align 8
  %29 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %30 = icmp ne %struct.irq_domain* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EPROBE_DEFER, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %189

34:                                               ; preds = %26
  %35 = load %struct.device*, %struct.device** %10, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.ti_sci_inta_irq_domain* @devm_kzalloc(%struct.device* %35, i32 48, i32 %36)
  store %struct.ti_sci_inta_irq_domain* %37, %struct.ti_sci_inta_irq_domain** %9, align 8
  %38 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %39 = icmp ne %struct.ti_sci_inta_irq_domain* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %189

43:                                               ; preds = %34
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %46 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %45, i32 0, i32 6
  store %struct.platform_device* %44, %struct.platform_device** %46, align 8
  %47 = load %struct.device*, %struct.device** %10, align 8
  %48 = call i32* @devm_ti_sci_get_by_phandle(%struct.device* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %50 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %49, i32 0, i32 5
  store i32* %48, i32** %50, align 8
  %51 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %52 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @IS_ERR(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %43
  %57 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %58 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @PTR_ERR(i32* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @EPROBE_DEFER, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load %struct.device*, %struct.device** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %65, %56
  %70 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %71 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %70, i32 0, i32 5
  store i32* null, i32** %71, align 8
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %2, align 4
  br label %189

73:                                               ; preds = %43
  %74 = load %struct.device*, %struct.device** %10, align 8
  %75 = getelementptr inbounds %struct.device, %struct.device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i32 @of_property_read_u32(i32 %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.device*, %struct.device** %10, align 8
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %189

87:                                               ; preds = %73
  %88 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %89 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.device*, %struct.device** %10, align 8
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @devm_ti_sci_get_of_resource(i32* %90, %struct.device* %91, i32 %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %96 = bitcast i8* %95 to i32*
  %97 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %98 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %97, i32 0, i32 2
  store i32* %96, i32** %98, align 8
  %99 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %100 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = call i64 @IS_ERR(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %87
  %105 = load %struct.device*, %struct.device** %10, align 8
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %107 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %108 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @PTR_ERR(i32* %109)
  store i32 %110, i32* %2, align 4
  br label %189

111:                                              ; preds = %87
  %112 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %113 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.device*, %struct.device** %10, align 8
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @devm_ti_sci_get_of_resource(i32* %114, %struct.device* %115, i32 %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %120 = bitcast i8* %119 to i32*
  %121 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %122 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %121, i32 0, i32 4
  store i32* %120, i32** %122, align 8
  %123 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %124 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = call i64 @IS_ERR(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %111
  %129 = load %struct.device*, %struct.device** %10, align 8
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %131 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %132 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @PTR_ERR(i32* %133)
  store i32 %134, i32* %2, align 4
  br label %189

135:                                              ; preds = %111
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = load i32, i32* @IORESOURCE_MEM, align 4
  %138 = call %struct.resource* @platform_get_resource(%struct.platform_device* %136, i32 %137, i32 0)
  store %struct.resource* %138, %struct.resource** %11, align 8
  %139 = load %struct.device*, %struct.device** %10, align 8
  %140 = load %struct.resource*, %struct.resource** %11, align 8
  %141 = call i32* @devm_ioremap_resource(%struct.device* %139, %struct.resource* %140)
  %142 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %143 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %142, i32 0, i32 3
  store i32* %141, i32** %143, align 8
  %144 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %145 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = call i64 @IS_ERR(i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %135
  %150 = load i32, i32* @ENODEV, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %189

152:                                              ; preds = %135
  %153 = load %struct.device*, %struct.device** %10, align 8
  %154 = call %struct.device_node* @dev_of_node(%struct.device* %153)
  %155 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %156 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @ti_sci_get_num_resources(i32* %157)
  %159 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %160 = call %struct.irq_domain* @irq_domain_add_linear(%struct.device_node* %154, i32 %158, i32* @ti_sci_inta_irq_domain_ops, %struct.ti_sci_inta_irq_domain* %159)
  store %struct.irq_domain* %160, %struct.irq_domain** %5, align 8
  %161 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %162 = icmp ne %struct.irq_domain* %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %152
  %164 = load %struct.device*, %struct.device** %10, align 8
  %165 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %164, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %189

168:                                              ; preds = %152
  %169 = load %struct.device_node*, %struct.device_node** %8, align 8
  %170 = call i32 @of_node_to_fwnode(%struct.device_node* %169)
  %171 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %172 = call %struct.irq_domain* @ti_sci_inta_msi_create_irq_domain(i32 %170, i32* @ti_sci_inta_msi_domain_info, %struct.irq_domain* %171)
  store %struct.irq_domain* %172, %struct.irq_domain** %6, align 8
  %173 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %174 = icmp ne %struct.irq_domain* %173, null
  br i1 %174, label %182, label %175

175:                                              ; preds = %168
  %176 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %177 = call i32 @irq_domain_remove(%struct.irq_domain* %176)
  %178 = load %struct.device*, %struct.device** %10, align 8
  %179 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %178, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %189

182:                                              ; preds = %168
  %183 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %184 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %183, i32 0, i32 1
  %185 = call i32 @INIT_LIST_HEAD(i32* %184)
  %186 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %9, align 8
  %187 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %186, i32 0, i32 0
  %188 = call i32 @mutex_init(i32* %187)
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %182, %175, %163, %149, %128, %104, %82, %69, %40, %31, %21
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.device_node* @dev_of_node(%struct.device*) #1

declare dso_local %struct.device_node* @of_irq_find_parent(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.irq_domain* @irq_find_host(%struct.device_node*) #1

declare dso_local %struct.ti_sci_inta_irq_domain* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32* @devm_ti_sci_get_by_phandle(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i8* @devm_ti_sci_get_of_resource(i32*, %struct.device*, i32, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local %struct.irq_domain* @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.ti_sci_inta_irq_domain*) #1

declare dso_local i32 @ti_sci_get_num_resources(i32*) #1

declare dso_local %struct.irq_domain* @ti_sci_inta_msi_create_irq_domain(i32, i32*, %struct.irq_domain*) #1

declare dso_local i32 @of_node_to_fwnode(%struct.device_node*) #1

declare dso_local i32 @irq_domain_remove(%struct.irq_domain*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
