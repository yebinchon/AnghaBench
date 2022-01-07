; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_ts73xx-fpga.c_ts73xx_fpga_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_ts73xx-fpga.c_ts73xx_fpga_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ts73xx_fpga_priv = type { i32, %struct.device* }
%struct.fpga_manager = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unable to remap registers\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"TS-73xx FPGA Manager\00", align 1
@ts73xx_fpga_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ts73xx_fpga_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts73xx_fpga_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ts73xx_fpga_priv*, align 8
  %6 = alloca %struct.fpga_manager*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ts73xx_fpga_priv* @devm_kzalloc(%struct.device* %10, i32 16, i32 %11)
  store %struct.ts73xx_fpga_priv* %12, %struct.ts73xx_fpga_priv** %5, align 8
  %13 = load %struct.ts73xx_fpga_priv*, %struct.ts73xx_fpga_priv** %5, align 8
  %14 = icmp ne %struct.ts73xx_fpga_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %57

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.ts73xx_fpga_priv*, %struct.ts73xx_fpga_priv** %5, align 8
  %21 = getelementptr inbounds %struct.ts73xx_fpga_priv, %struct.ts73xx_fpga_priv* %20, i32 0, i32 1
  store %struct.device* %19, %struct.device** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %7, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = call i32 @devm_ioremap_resource(%struct.device* %25, %struct.resource* %26)
  %28 = load %struct.ts73xx_fpga_priv*, %struct.ts73xx_fpga_priv** %5, align 8
  %29 = getelementptr inbounds %struct.ts73xx_fpga_priv, %struct.ts73xx_fpga_priv* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ts73xx_fpga_priv*, %struct.ts73xx_fpga_priv** %5, align 8
  %31 = getelementptr inbounds %struct.ts73xx_fpga_priv, %struct.ts73xx_fpga_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %18
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.ts73xx_fpga_priv*, %struct.ts73xx_fpga_priv** %5, align 8
  %39 = getelementptr inbounds %struct.ts73xx_fpga_priv, %struct.ts73xx_fpga_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @PTR_ERR(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %57

42:                                               ; preds = %18
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load %struct.ts73xx_fpga_priv*, %struct.ts73xx_fpga_priv** %5, align 8
  %45 = call %struct.fpga_manager* @devm_fpga_mgr_create(%struct.device* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* @ts73xx_fpga_ops, %struct.ts73xx_fpga_priv* %44)
  store %struct.fpga_manager* %45, %struct.fpga_manager** %6, align 8
  %46 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %47 = icmp ne %struct.fpga_manager* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %57

51:                                               ; preds = %42
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %54 = call i32 @platform_set_drvdata(%struct.platform_device* %52, %struct.fpga_manager* %53)
  %55 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %56 = call i32 @fpga_mgr_register(%struct.fpga_manager* %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %48, %35, %15
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.ts73xx_fpga_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.fpga_manager* @devm_fpga_mgr_create(%struct.device*, i8*, i32*, %struct.ts73xx_fpga_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fpga_manager*) #1

declare dso_local i32 @fpga_mgr_register(%struct.fpga_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
