; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.socfpga_fpga_priv = type { i64, i8*, i8* }
%struct.fpga_manager = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@socfpga_fpga_isr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Altera SOCFPGA FPGA Manager\00", align 1
@socfpga_fpga_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @socfpga_fpga_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_fpga_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.socfpga_fpga_priv*, align 8
  %6 = alloca %struct.fpga_manager*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.socfpga_fpga_priv* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.socfpga_fpga_priv* %13, %struct.socfpga_fpga_priv** %5, align 8
  %14 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %15 = icmp ne %struct.socfpga_fpga_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %101

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %7, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.resource*, %struct.resource** %7, align 8
  %25 = call i8* @devm_ioremap_resource(%struct.device* %23, %struct.resource* %24)
  %26 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %27 = getelementptr inbounds %struct.socfpga_fpga_priv, %struct.socfpga_fpga_priv* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %29 = getelementptr inbounds %struct.socfpga_fpga_priv, %struct.socfpga_fpga_priv* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %35 = getelementptr inbounds %struct.socfpga_fpga_priv, %struct.socfpga_fpga_priv* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @PTR_ERR(i8* %36)
  store i32 %37, i32* %2, align 4
  br label %101

38:                                               ; preds = %19
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 1)
  store %struct.resource* %41, %struct.resource** %7, align 8
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.resource*, %struct.resource** %7, align 8
  %44 = call i8* @devm_ioremap_resource(%struct.device* %42, %struct.resource* %43)
  %45 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %46 = getelementptr inbounds %struct.socfpga_fpga_priv, %struct.socfpga_fpga_priv* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %48 = getelementptr inbounds %struct.socfpga_fpga_priv, %struct.socfpga_fpga_priv* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @IS_ERR(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %38
  %53 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %54 = getelementptr inbounds %struct.socfpga_fpga_priv, %struct.socfpga_fpga_priv* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  store i32 %56, i32* %2, align 4
  br label %101

57:                                               ; preds = %38
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = call i64 @platform_get_irq(%struct.platform_device* %58, i32 0)
  %60 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %61 = getelementptr inbounds %struct.socfpga_fpga_priv, %struct.socfpga_fpga_priv* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %63 = getelementptr inbounds %struct.socfpga_fpga_priv, %struct.socfpga_fpga_priv* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %68 = getelementptr inbounds %struct.socfpga_fpga_priv, %struct.socfpga_fpga_priv* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %2, align 4
  br label %101

71:                                               ; preds = %57
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %74 = getelementptr inbounds %struct.socfpga_fpga_priv, %struct.socfpga_fpga_priv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @socfpga_fpga_isr, align 4
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = call i32 @dev_name(%struct.device* %78)
  %80 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %81 = call i32 @devm_request_irq(%struct.device* %72, i32 %76, i32 %77, i32 0, i32 %79, %struct.socfpga_fpga_priv* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %2, align 4
  br label %101

86:                                               ; preds = %71
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %5, align 8
  %89 = call %struct.fpga_manager* @devm_fpga_mgr_create(%struct.device* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* @socfpga_fpga_ops, %struct.socfpga_fpga_priv* %88)
  store %struct.fpga_manager* %89, %struct.fpga_manager** %6, align 8
  %90 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %91 = icmp ne %struct.fpga_manager* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %101

95:                                               ; preds = %86
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %98 = call i32 @platform_set_drvdata(%struct.platform_device* %96, %struct.fpga_manager* %97)
  %99 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %100 = call i32 @fpga_mgr_register(%struct.fpga_manager* %99)
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %95, %92, %84, %66, %52, %33, %16
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.socfpga_fpga_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.socfpga_fpga_priv*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.fpga_manager* @devm_fpga_mgr_create(%struct.device*, i8*, i32*, %struct.socfpga_fpga_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fpga_manager*) #1

declare dso_local i32 @fpga_mgr_register(%struct.fpga_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
