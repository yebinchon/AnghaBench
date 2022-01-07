; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-br.c_fme_bridge_enable_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-br.c_fme_bridge_enable_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_bridge = type { %struct.fme_br_priv* }
%struct.fme_br_priv = type { %struct.platform_device*, %struct.dfl_fpga_port_ops*, %struct.TYPE_2__* }
%struct.platform_device = type { i32 }
%struct.dfl_fpga_port_ops = type { i32 (%struct.platform_device*, i32)* }
%struct.TYPE_2__ = type { i32, i32 }

@dfl_fpga_check_port_id = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_bridge*, i32)* @fme_bridge_enable_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fme_bridge_enable_set(%struct.fpga_bridge* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpga_bridge*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fme_br_priv*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.dfl_fpga_port_ops*, align 8
  store %struct.fpga_bridge* %0, %struct.fpga_bridge** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.fpga_bridge*, %struct.fpga_bridge** %4, align 8
  %10 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %9, i32 0, i32 0
  %11 = load %struct.fme_br_priv*, %struct.fme_br_priv** %10, align 8
  store %struct.fme_br_priv* %11, %struct.fme_br_priv** %6, align 8
  %12 = load %struct.fme_br_priv*, %struct.fme_br_priv** %6, align 8
  %13 = getelementptr inbounds %struct.fme_br_priv, %struct.fme_br_priv* %12, i32 0, i32 0
  %14 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %15 = icmp ne %struct.platform_device* %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %2
  %17 = load %struct.fme_br_priv*, %struct.fme_br_priv** %6, align 8
  %18 = getelementptr inbounds %struct.fme_br_priv, %struct.fme_br_priv* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fme_br_priv*, %struct.fme_br_priv** %6, align 8
  %23 = getelementptr inbounds %struct.fme_br_priv, %struct.fme_br_priv* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* @dfl_fpga_check_port_id, align 4
  %27 = call %struct.platform_device* @dfl_fpga_cdev_find_port(i32 %21, i32* %25, i32 %26)
  store %struct.platform_device* %27, %struct.platform_device** %7, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %29 = icmp ne %struct.platform_device* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %16
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %77

33:                                               ; preds = %16
  %34 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %35 = load %struct.fme_br_priv*, %struct.fme_br_priv** %6, align 8
  %36 = getelementptr inbounds %struct.fme_br_priv, %struct.fme_br_priv* %35, i32 0, i32 0
  store %struct.platform_device* %34, %struct.platform_device** %36, align 8
  br label %37

37:                                               ; preds = %33, %2
  %38 = load %struct.fme_br_priv*, %struct.fme_br_priv** %6, align 8
  %39 = getelementptr inbounds %struct.fme_br_priv, %struct.fme_br_priv* %38, i32 0, i32 0
  %40 = load %struct.platform_device*, %struct.platform_device** %39, align 8
  %41 = icmp ne %struct.platform_device* %40, null
  br i1 %41, label %42, label %66

42:                                               ; preds = %37
  %43 = load %struct.fme_br_priv*, %struct.fme_br_priv** %6, align 8
  %44 = getelementptr inbounds %struct.fme_br_priv, %struct.fme_br_priv* %43, i32 0, i32 1
  %45 = load %struct.dfl_fpga_port_ops*, %struct.dfl_fpga_port_ops** %44, align 8
  %46 = icmp ne %struct.dfl_fpga_port_ops* %45, null
  br i1 %46, label %66, label %47

47:                                               ; preds = %42
  %48 = load %struct.fme_br_priv*, %struct.fme_br_priv** %6, align 8
  %49 = getelementptr inbounds %struct.fme_br_priv, %struct.fme_br_priv* %48, i32 0, i32 0
  %50 = load %struct.platform_device*, %struct.platform_device** %49, align 8
  %51 = call %struct.dfl_fpga_port_ops* @dfl_fpga_port_ops_get(%struct.platform_device* %50)
  store %struct.dfl_fpga_port_ops* %51, %struct.dfl_fpga_port_ops** %8, align 8
  %52 = load %struct.dfl_fpga_port_ops*, %struct.dfl_fpga_port_ops** %8, align 8
  %53 = icmp ne %struct.dfl_fpga_port_ops* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.dfl_fpga_port_ops*, %struct.dfl_fpga_port_ops** %8, align 8
  %56 = getelementptr inbounds %struct.dfl_fpga_port_ops, %struct.dfl_fpga_port_ops* %55, i32 0, i32 0
  %57 = load i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*, i32)** %56, align 8
  %58 = icmp ne i32 (%struct.platform_device*, i32)* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54, %47
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %77

62:                                               ; preds = %54
  %63 = load %struct.dfl_fpga_port_ops*, %struct.dfl_fpga_port_ops** %8, align 8
  %64 = load %struct.fme_br_priv*, %struct.fme_br_priv** %6, align 8
  %65 = getelementptr inbounds %struct.fme_br_priv, %struct.fme_br_priv* %64, i32 0, i32 1
  store %struct.dfl_fpga_port_ops* %63, %struct.dfl_fpga_port_ops** %65, align 8
  br label %66

66:                                               ; preds = %62, %42, %37
  %67 = load %struct.fme_br_priv*, %struct.fme_br_priv** %6, align 8
  %68 = getelementptr inbounds %struct.fme_br_priv, %struct.fme_br_priv* %67, i32 0, i32 1
  %69 = load %struct.dfl_fpga_port_ops*, %struct.dfl_fpga_port_ops** %68, align 8
  %70 = getelementptr inbounds %struct.dfl_fpga_port_ops, %struct.dfl_fpga_port_ops* %69, i32 0, i32 0
  %71 = load i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*, i32)** %70, align 8
  %72 = load %struct.fme_br_priv*, %struct.fme_br_priv** %6, align 8
  %73 = getelementptr inbounds %struct.fme_br_priv, %struct.fme_br_priv* %72, i32 0, i32 0
  %74 = load %struct.platform_device*, %struct.platform_device** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 %71(%struct.platform_device* %74, i32 %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %66, %59, %30
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.platform_device* @dfl_fpga_cdev_find_port(i32, i32*, i32) #1

declare dso_local %struct.dfl_fpga_port_ops* @dfl_fpga_port_ops_get(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
