; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_zynqmp-fpga.c_zynqmp_fpga_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_zynqmp-fpga.c_zynqmp_fpga_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.zynqmp_fpga_priv = type { %struct.device* }
%struct.fpga_manager = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Xilinx ZynqMP FPGA Manager\00", align 1
@zynqmp_fpga_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to register FPGA manager\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zynqmp_fpga_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_fpga_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.zynqmp_fpga_priv*, align 8
  %6 = alloca %struct.fpga_manager*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.zynqmp_fpga_priv* @devm_kzalloc(%struct.device* %10, i32 8, i32 %11)
  store %struct.zynqmp_fpga_priv* %12, %struct.zynqmp_fpga_priv** %5, align 8
  %13 = load %struct.zynqmp_fpga_priv*, %struct.zynqmp_fpga_priv** %5, align 8
  %14 = icmp ne %struct.zynqmp_fpga_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %43

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.zynqmp_fpga_priv*, %struct.zynqmp_fpga_priv** %5, align 8
  %21 = getelementptr inbounds %struct.zynqmp_fpga_priv, %struct.zynqmp_fpga_priv* %20, i32 0, i32 0
  store %struct.device* %19, %struct.device** %21, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.zynqmp_fpga_priv*, %struct.zynqmp_fpga_priv** %5, align 8
  %24 = call %struct.fpga_manager* @devm_fpga_mgr_create(%struct.device* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* @zynqmp_fpga_ops, %struct.zynqmp_fpga_priv* %23)
  store %struct.fpga_manager* %24, %struct.fpga_manager** %6, align 8
  %25 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %26 = icmp ne %struct.fpga_manager* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %43

30:                                               ; preds = %18
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %33 = call i32 @platform_set_drvdata(%struct.platform_device* %31, %struct.fpga_manager* %32)
  %34 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %35 = call i32 @fpga_mgr_register(%struct.fpga_manager* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %38, %27, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.zynqmp_fpga_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.fpga_manager* @devm_fpga_mgr_create(%struct.device*, i8*, i32*, %struct.zynqmp_fpga_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fpga_manager*) #1

declare dso_local i32 @fpga_mgr_register(%struct.fpga_manager*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
