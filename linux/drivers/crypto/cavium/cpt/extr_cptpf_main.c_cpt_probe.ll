; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.cpt_device = type { i32, %struct.pci_dev* }

@num_vfs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Invalid vf count %d, Resetting it to 4(default)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to enable PCI device\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"PCI request regions failed 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Unable to get usable DMA configuration\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Unable to get 48-bit DMA for consistent allocations\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Cannot map config register space, aborting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @cpt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpt_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.cpt_device*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load i32, i32* @num_vfs, align 4
  %12 = icmp sgt i32 %11, 16
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @num_vfs, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %20

16:                                               ; preds = %13, %2
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load i32, i32* @num_vfs, align 4
  %19 = call i32 @dev_warn(%struct.device* %17, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 4, i32* @num_vfs, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.cpt_device* @devm_kzalloc(%struct.device* %21, i32 16, i32 %22)
  store %struct.cpt_device* %23, %struct.cpt_device** %7, align 8
  %24 = load %struct.cpt_device*, %struct.cpt_device** %7, align 8
  %25 = icmp ne %struct.cpt_device* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %122

29:                                               ; preds = %20
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = load %struct.cpt_device*, %struct.cpt_device** %7, align 8
  %32 = call i32 @pci_set_drvdata(%struct.pci_dev* %30, %struct.cpt_device* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = load %struct.cpt_device*, %struct.cpt_device** %7, align 8
  %35 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %34, i32 0, i32 1
  store %struct.pci_dev* %33, %struct.pci_dev** %35, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call i32 @pci_enable_device(%struct.pci_dev* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = call i32 @pci_set_drvdata(%struct.pci_dev* %43, %struct.cpt_device* null)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %122

46:                                               ; preds = %29
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = load i32, i32* @DRV_NAME, align 4
  %49 = call i32 @pci_request_regions(%struct.pci_dev* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %116

56:                                               ; preds = %46
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = call i32 @DMA_BIT_MASK(i32 48)
  %59 = call i32 @pci_set_dma_mask(%struct.pci_dev* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %113

65:                                               ; preds = %56
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = call i32 @DMA_BIT_MASK(i32 48)
  %68 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  br label %113

74:                                               ; preds = %65
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = call i32 @pcim_iomap(%struct.pci_dev* %75, i32 0, i32 0)
  %77 = load %struct.cpt_device*, %struct.cpt_device** %7, align 8
  %78 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.cpt_device*, %struct.cpt_device** %7, align 8
  %80 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %74
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %113

88:                                               ; preds = %74
  %89 = load %struct.cpt_device*, %struct.cpt_device** %7, align 8
  %90 = call i32 @cpt_device_init(%struct.cpt_device* %89)
  %91 = load %struct.cpt_device*, %struct.cpt_device** %7, align 8
  %92 = call i32 @cpt_register_interrupts(%struct.cpt_device* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %113

96:                                               ; preds = %88
  %97 = load %struct.cpt_device*, %struct.cpt_device** %7, align 8
  %98 = call i32 @cpt_ucode_load(%struct.cpt_device* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %110

102:                                              ; preds = %96
  %103 = load %struct.cpt_device*, %struct.cpt_device** %7, align 8
  %104 = load i32, i32* @num_vfs, align 4
  %105 = call i32 @cpt_sriov_init(%struct.cpt_device* %103, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %110

109:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %122

110:                                              ; preds = %108, %101
  %111 = load %struct.cpt_device*, %struct.cpt_device** %7, align 8
  %112 = call i32 @cpt_unregister_interrupts(%struct.cpt_device* %111)
  br label %113

113:                                              ; preds = %110, %95, %83, %71, %62
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = call i32 @pci_release_regions(%struct.pci_dev* %114)
  br label %116

116:                                              ; preds = %113, %52
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = call i32 @pci_disable_device(%struct.pci_dev* %117)
  %119 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %120 = call i32 @pci_set_drvdata(%struct.pci_dev* %119, %struct.cpt_device* null)
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %116, %109, %40, %26
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local %struct.cpt_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.cpt_device*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcim_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @cpt_device_init(%struct.cpt_device*) #1

declare dso_local i32 @cpt_register_interrupts(%struct.cpt_device*) #1

declare dso_local i32 @cpt_ucode_load(%struct.cpt_device*) #1

declare dso_local i32 @cpt_sriov_init(%struct.cpt_device*, i32) #1

declare dso_local i32 @cpt_unregister_interrupts(%struct.cpt_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
