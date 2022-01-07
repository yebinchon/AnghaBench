; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nvidia-gpu.c_gpu_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nvidia-gpu.c_gpu_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.gpu_i2c_dev = type { %struct.TYPE_6__, i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32*, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"pcim_enable_device failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"pcim_iomap failed\0A\00", align 1
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"pci_alloc_irq_vectors err %d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"NVIDIA GPU I2C adapter\00", align 1
@gpu_i2c_algorithm = common dso_local global i32 0, align 4
@gpu_i2c_quirks = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"gpu_populate_client failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @gpu_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpu_i2c_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.gpu_i2c_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.gpu_i2c_dev* @devm_kzalloc(i32* %9, i32 48, i32 %10)
  store %struct.gpu_i2c_dev* %11, %struct.gpu_i2c_dev** %6, align 8
  %12 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %6, align 8
  %13 = icmp ne %struct.gpu_i2c_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %133

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %6, align 8
  %21 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %6, align 8
  %25 = call i32 @dev_set_drvdata(i32* %23, %struct.gpu_i2c_dev* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @pcim_enable_device(%struct.pci_dev* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %17
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (i32*, i8*, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %133

36:                                               ; preds = %17
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i32 @pci_set_master(%struct.pci_dev* %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = call i32 @pcim_iomap(%struct.pci_dev* %39, i32 0, i32 0)
  %41 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %6, align 8
  %42 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %6, align 8
  %44 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %36
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %133

53:                                               ; preds = %36
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = load i32, i32* @PCI_IRQ_MSI, align 4
  %56 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %54, i32 1, i32 1, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %133

65:                                               ; preds = %53
  %66 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %6, align 8
  %67 = call i32 @gpu_enable_i2c_bus(%struct.gpu_i2c_dev* %66)
  %68 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %6, align 8
  %69 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %68, i32 0, i32 0
  %70 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %6, align 8
  %71 = call i32 @i2c_set_adapdata(%struct.TYPE_6__* %69, %struct.gpu_i2c_dev* %70)
  %72 = load i32, i32* @THIS_MODULE, align 4
  %73 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %6, align 8
  %74 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 4
  store i32 %72, i32* %75, align 4
  %76 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %6, align 8
  %77 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @strlcpy(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %81 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %6, align 8
  %82 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  store i32* @gpu_i2c_algorithm, i32** %83, align 8
  %84 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %6, align 8
  %85 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i32* @gpu_i2c_quirks, i32** %86, align 8
  %87 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 0
  %89 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %6, align 8
  %90 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32* %88, i32** %92, align 8
  %93 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %6, align 8
  %94 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %93, i32 0, i32 0
  %95 = call i32 @i2c_add_adapter(%struct.TYPE_6__* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %65
  br label %129

99:                                               ; preds = %65
  %100 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %6, align 8
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @gpu_populate_client(%struct.gpu_i2c_dev* %100, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %7, align 4
  %111 = call i32 (i32*, i8*, ...) @dev_err(i32* %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  br label %125

112:                                              ; preds = %99
  %113 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %114 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %113, i32 0, i32 0
  %115 = call i32 @pm_runtime_set_autosuspend_delay(i32* %114, i32 3000)
  %116 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %117 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %116, i32 0, i32 0
  %118 = call i32 @pm_runtime_use_autosuspend(i32* %117)
  %119 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 0
  %121 = call i32 @pm_runtime_put_autosuspend(i32* %120)
  %122 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %123 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %122, i32 0, i32 0
  %124 = call i32 @pm_runtime_allow(i32* %123)
  store i32 0, i32* %3, align 4
  br label %133

125:                                              ; preds = %107
  %126 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %6, align 8
  %127 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %126, i32 0, i32 0
  %128 = call i32 @i2c_del_adapter(%struct.TYPE_6__* %127)
  br label %129

129:                                              ; preds = %125, %98
  %130 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %131 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %130)
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %129, %112, %59, %47, %30, %14
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.gpu_i2c_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.gpu_i2c_dev*) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pcim_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @gpu_enable_i2c_bus(%struct.gpu_i2c_dev*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_6__*, %struct.gpu_i2c_dev*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_6__*) #1

declare dso_local i32 @gpu_populate_client(%struct.gpu_i2c_dev*, i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_allow(i32*) #1

declare dso_local i32 @i2c_del_adapter(%struct.TYPE_6__*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
