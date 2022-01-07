; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_rockchip-dfi.c_rockchip_dfi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_rockchip-dfi.c_rockchip_dfi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.rockchip_dfi = type { i32, %struct.devfreq_event_desc*, %struct.device*, i32, i32, i32 }
%struct.devfreq_event_desc = type { i32, %struct.rockchip_dfi*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"pclk_ddr_mon\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot get the clk dmc_clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"rockchip,pmu\00", align 1
@rockchip_dfi_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to add devfreq-event device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_dfi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_dfi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rockchip_dfi*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.devfreq_event_desc*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %8, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @devm_kzalloc(%struct.device* %16, i32 40, i32 %17)
  %19 = bitcast i8* %18 to %struct.rockchip_dfi*
  store %struct.rockchip_dfi* %19, %struct.rockchip_dfi** %5, align 8
  %20 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %21 = icmp ne %struct.rockchip_dfi* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %133

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource(%struct.platform_device* %26, i32 %27, i32 0)
  store %struct.resource* %28, %struct.resource** %6, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = call i32 @devm_ioremap_resource(%struct.device* %30, %struct.resource* %31)
  %33 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %34 = getelementptr inbounds %struct.rockchip_dfi, %struct.rockchip_dfi* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %36 = getelementptr inbounds %struct.rockchip_dfi, %struct.rockchip_dfi* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %42 = getelementptr inbounds %struct.rockchip_dfi, %struct.rockchip_dfi* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %133

45:                                               ; preds = %25
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 @devm_clk_get(%struct.device* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %49 = getelementptr inbounds %struct.rockchip_dfi, %struct.rockchip_dfi* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %51 = getelementptr inbounds %struct.rockchip_dfi, %struct.rockchip_dfi* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @IS_ERR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %59 = getelementptr inbounds %struct.rockchip_dfi, %struct.rockchip_dfi* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %2, align 4
  br label %133

62:                                               ; preds = %45
  %63 = load %struct.device_node*, %struct.device_node** %8, align 8
  %64 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.device_node* %64, %struct.device_node** %9, align 8
  %65 = load %struct.device_node*, %struct.device_node** %9, align 8
  %66 = icmp ne %struct.device_node* %65, null
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load %struct.device_node*, %struct.device_node** %9, align 8
  %69 = call i32 @syscon_node_to_regmap(%struct.device_node* %68)
  %70 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %71 = getelementptr inbounds %struct.rockchip_dfi, %struct.rockchip_dfi* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %73 = getelementptr inbounds %struct.rockchip_dfi, %struct.rockchip_dfi* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @IS_ERR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %79 = getelementptr inbounds %struct.rockchip_dfi, %struct.rockchip_dfi* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @PTR_ERR(i32 %80)
  store i32 %81, i32* %2, align 4
  br label %133

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %62
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %86 = getelementptr inbounds %struct.rockchip_dfi, %struct.rockchip_dfi* %85, i32 0, i32 2
  store %struct.device* %84, %struct.device** %86, align 8
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call i8* @devm_kzalloc(%struct.device* %87, i32 24, i32 %88)
  %90 = bitcast i8* %89 to %struct.devfreq_event_desc*
  store %struct.devfreq_event_desc* %90, %struct.devfreq_event_desc** %7, align 8
  %91 = load %struct.devfreq_event_desc*, %struct.devfreq_event_desc** %7, align 8
  %92 = icmp ne %struct.devfreq_event_desc* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %83
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %133

96:                                               ; preds = %83
  %97 = load %struct.devfreq_event_desc*, %struct.devfreq_event_desc** %7, align 8
  %98 = getelementptr inbounds %struct.devfreq_event_desc, %struct.devfreq_event_desc* %97, i32 0, i32 2
  store i32* @rockchip_dfi_ops, i32** %98, align 8
  %99 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %100 = load %struct.devfreq_event_desc*, %struct.devfreq_event_desc** %7, align 8
  %101 = getelementptr inbounds %struct.devfreq_event_desc, %struct.devfreq_event_desc* %100, i32 0, i32 1
  store %struct.rockchip_dfi* %99, %struct.rockchip_dfi** %101, align 8
  %102 = load %struct.device_node*, %struct.device_node** %8, align 8
  %103 = getelementptr inbounds %struct.device_node, %struct.device_node* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.devfreq_event_desc*, %struct.devfreq_event_desc** %7, align 8
  %106 = getelementptr inbounds %struct.devfreq_event_desc, %struct.devfreq_event_desc* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.devfreq_event_desc*, %struct.devfreq_event_desc** %7, align 8
  %108 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %109 = getelementptr inbounds %struct.rockchip_dfi, %struct.rockchip_dfi* %108, i32 0, i32 1
  store %struct.devfreq_event_desc* %107, %struct.devfreq_event_desc** %109, align 8
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load %struct.devfreq_event_desc*, %struct.devfreq_event_desc** %7, align 8
  %113 = call i32 @devm_devfreq_event_add_edev(%struct.device* %111, %struct.devfreq_event_desc* %112)
  %114 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %115 = getelementptr inbounds %struct.rockchip_dfi, %struct.rockchip_dfi* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %117 = getelementptr inbounds %struct.rockchip_dfi, %struct.rockchip_dfi* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @IS_ERR(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %96
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i32 @dev_err(%struct.device* %123, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %125 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %126 = getelementptr inbounds %struct.rockchip_dfi, %struct.rockchip_dfi* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @PTR_ERR(i32 %127)
  store i32 %128, i32* %2, align 4
  br label %133

129:                                              ; preds = %96
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %132 = call i32 @platform_set_drvdata(%struct.platform_device* %130, %struct.rockchip_dfi* %131)
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %129, %121, %93, %77, %55, %40, %22
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @devm_devfreq_event_add_edev(%struct.device*, %struct.devfreq_event_desc*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rockchip_dfi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
