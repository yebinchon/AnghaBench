; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_xilinx-pr-decoupler.c_xlnx_pr_decoupler_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_xilinx-pr-decoupler.c_xlnx_pr_decoupler_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xlnx_pr_decoupler_data = type { i32, i32 }
%struct.fpga_bridge = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"aclk\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"input clock not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"unable to enable clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Xilinx PR Decoupler\00", align 1
@xlnx_pr_decoupler_br_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"unable to register Xilinx PR Decoupler\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xlnx_pr_decoupler_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlnx_pr_decoupler_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xlnx_pr_decoupler_data*, align 8
  %5 = alloca %struct.fpga_bridge*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.xlnx_pr_decoupler_data* @devm_kzalloc(i32* %9, i32 8, i32 %10)
  store %struct.xlnx_pr_decoupler_data* %11, %struct.xlnx_pr_decoupler_data** %4, align 8
  %12 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %4, align 8
  %13 = icmp ne %struct.xlnx_pr_decoupler_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %101

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %7, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %7, align 8
  %24 = call i32 @devm_ioremap_resource(i32* %22, %struct.resource* %23)
  %25 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %4, align 8
  %26 = getelementptr inbounds %struct.xlnx_pr_decoupler_data, %struct.xlnx_pr_decoupler_data* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %4, align 8
  %28 = getelementptr inbounds %struct.xlnx_pr_decoupler_data, %struct.xlnx_pr_decoupler_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %4, align 8
  %34 = getelementptr inbounds %struct.xlnx_pr_decoupler_data, %struct.xlnx_pr_decoupler_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %101

37:                                               ; preds = %17
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @devm_clk_get(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %4, align 8
  %42 = getelementptr inbounds %struct.xlnx_pr_decoupler_data, %struct.xlnx_pr_decoupler_data* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %4, align 8
  %44 = getelementptr inbounds %struct.xlnx_pr_decoupler_data, %struct.xlnx_pr_decoupler_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %37
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %4, align 8
  %53 = getelementptr inbounds %struct.xlnx_pr_decoupler_data, %struct.xlnx_pr_decoupler_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @PTR_ERR(i32 %54)
  store i32 %55, i32* %2, align 4
  br label %101

56:                                               ; preds = %37
  %57 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %4, align 8
  %58 = getelementptr inbounds %struct.xlnx_pr_decoupler_data, %struct.xlnx_pr_decoupler_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @clk_prepare_enable(i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %101

68:                                               ; preds = %56
  %69 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %4, align 8
  %70 = getelementptr inbounds %struct.xlnx_pr_decoupler_data, %struct.xlnx_pr_decoupler_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @clk_disable(i32 %71)
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %4, align 8
  %76 = call %struct.fpga_bridge* @devm_fpga_bridge_create(i32* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* @xlnx_pr_decoupler_br_ops, %struct.xlnx_pr_decoupler_data* %75)
  store %struct.fpga_bridge* %76, %struct.fpga_bridge** %5, align 8
  %77 = load %struct.fpga_bridge*, %struct.fpga_bridge** %5, align 8
  %78 = icmp ne %struct.fpga_bridge* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %68
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %95

82:                                               ; preds = %68
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = load %struct.fpga_bridge*, %struct.fpga_bridge** %5, align 8
  %85 = call i32 @platform_set_drvdata(%struct.platform_device* %83, %struct.fpga_bridge* %84)
  %86 = load %struct.fpga_bridge*, %struct.fpga_bridge** %5, align 8
  %87 = call i32 @fpga_bridge_register(%struct.fpga_bridge* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %95

94:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %101

95:                                               ; preds = %90, %79
  %96 = load %struct.xlnx_pr_decoupler_data*, %struct.xlnx_pr_decoupler_data** %4, align 8
  %97 = getelementptr inbounds %struct.xlnx_pr_decoupler_data, %struct.xlnx_pr_decoupler_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @clk_unprepare(i32 %98)
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %95, %94, %63, %48, %32, %14
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.xlnx_pr_decoupler_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local %struct.fpga_bridge* @devm_fpga_bridge_create(i32*, i8*, i32*, %struct.xlnx_pr_decoupler_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fpga_bridge*) #1

declare dso_local i32 @fpga_bridge_register(%struct.fpga_bridge*) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
