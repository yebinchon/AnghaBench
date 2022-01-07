; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-br.c_fme_br_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-br.c_fme_br_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.fme_br_priv = type { i32 }
%struct.fpga_bridge = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"DFL FPGA FME Bridge\00", align 1
@fme_bridge_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fme_br_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fme_br_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fme_br_priv*, align 8
  %6 = alloca %struct.fpga_bridge*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.fme_br_priv* @devm_kzalloc(%struct.device* %9, i32 4, i32 %10)
  store %struct.fme_br_priv* %11, %struct.fme_br_priv** %5, align 8
  %12 = load %struct.fme_br_priv*, %struct.fme_br_priv** %5, align 8
  %13 = icmp ne %struct.fme_br_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @dev_get_platdata(%struct.device* %18)
  %20 = load %struct.fme_br_priv*, %struct.fme_br_priv** %5, align 8
  %21 = getelementptr inbounds %struct.fme_br_priv, %struct.fme_br_priv* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.fme_br_priv*, %struct.fme_br_priv** %5, align 8
  %24 = call %struct.fpga_bridge* @devm_fpga_bridge_create(%struct.device* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* @fme_bridge_ops, %struct.fme_br_priv* %23)
  store %struct.fpga_bridge* %24, %struct.fpga_bridge** %6, align 8
  %25 = load %struct.fpga_bridge*, %struct.fpga_bridge** %6, align 8
  %26 = icmp ne %struct.fpga_bridge* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %17
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load %struct.fpga_bridge*, %struct.fpga_bridge** %6, align 8
  %33 = call i32 @platform_set_drvdata(%struct.platform_device* %31, %struct.fpga_bridge* %32)
  %34 = load %struct.fpga_bridge*, %struct.fpga_bridge** %6, align 8
  %35 = call i32 @fpga_bridge_register(%struct.fpga_bridge* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %30, %27, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.fme_br_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.fpga_bridge* @devm_fpga_bridge_create(%struct.device*, i8*, i32*, %struct.fme_br_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fpga_bridge*) #1

declare dso_local i32 @fpga_bridge_register(%struct.fpga_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
