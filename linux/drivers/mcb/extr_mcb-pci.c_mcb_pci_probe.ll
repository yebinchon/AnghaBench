; ModuleID = '/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-pci.c_mcb_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-pci.c_mcb_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.resource = type { i32 }
%struct.priv = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to enable PCI device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"No PCI resource\0A\00", align 1
@CHAM_HEADER_SIZE = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to request PCI memory\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Cannot ioremap\0A\00", align 1
@IORESOURCE_IO = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"IO mapped PCI devices are not supported\0A\00", align 1
@mcb_pci_get_irq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Found %d cells\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @mcb_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcb_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.priv* @devm_kzalloc(i32* %11, i32 16, i32 %12)
  store %struct.priv* %13, %struct.priv** %7, align 8
  %14 = load %struct.priv*, %struct.priv** %7, align 8
  %15 = icmp ne %struct.priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %153

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32 @pci_enable_device(%struct.pci_dev* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %153

30:                                               ; preds = %19
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @pci_set_master(%struct.pci_dev* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i32 @pci_resource_start(%struct.pci_dev* %33, i32 0)
  %35 = load %struct.priv*, %struct.priv** %7, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.priv*, %struct.priv** %7, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %30
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %149

47:                                               ; preds = %30
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load %struct.priv*, %struct.priv** %7, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CHAM_HEADER_SIZE, align 4
  %54 = load i32, i32* @KBUILD_MODNAME, align 4
  %55 = call %struct.resource* @devm_request_mem_region(i32* %49, i32 %52, i32 %53, i32 %54)
  store %struct.resource* %55, %struct.resource** %6, align 8
  %56 = load %struct.resource*, %struct.resource** %6, align 8
  %57 = icmp ne %struct.resource* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %47
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %149

64:                                               ; preds = %47
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load %struct.priv*, %struct.priv** %7, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CHAM_HEADER_SIZE, align 4
  %71 = call i32 @devm_ioremap(i32* %66, i32 %69, i32 %70)
  %72 = load %struct.priv*, %struct.priv** %7, align 8
  %73 = getelementptr inbounds %struct.priv, %struct.priv* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.priv*, %struct.priv** %7, align 8
  %75 = getelementptr inbounds %struct.priv, %struct.priv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %64
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %8, align 4
  br label %149

84:                                               ; preds = %64
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = call i64 @pci_resource_flags(%struct.pci_dev* %85, i32 0)
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* @IORESOURCE_IO, align 8
  %89 = and i64 %87, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load i32, i32* @ENOTSUPP, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = call i32 @dev_err(i32* %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %149

97:                                               ; preds = %84
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = load %struct.priv*, %struct.priv** %7, align 8
  %100 = call i32 @pci_set_drvdata(%struct.pci_dev* %98, %struct.priv* %99)
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 0
  %103 = call %struct.TYPE_7__* @mcb_alloc_bus(i32* %102)
  %104 = load %struct.priv*, %struct.priv** %7, align 8
  %105 = getelementptr inbounds %struct.priv, %struct.priv* %104, i32 0, i32 0
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %105, align 8
  %106 = load %struct.priv*, %struct.priv** %7, align 8
  %107 = getelementptr inbounds %struct.priv, %struct.priv* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = call i64 @IS_ERR(%struct.TYPE_7__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %97
  %112 = load %struct.priv*, %struct.priv** %7, align 8
  %113 = getelementptr inbounds %struct.priv, %struct.priv* %112, i32 0, i32 0
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = call i32 @PTR_ERR(%struct.TYPE_7__* %114)
  store i32 %115, i32* %8, align 4
  br label %149

116:                                              ; preds = %97
  %117 = load i32, i32* @mcb_pci_get_irq, align 4
  %118 = load %struct.priv*, %struct.priv** %7, align 8
  %119 = getelementptr inbounds %struct.priv, %struct.priv* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  store i32 %117, i32* %121, align 4
  %122 = load %struct.priv*, %struct.priv** %7, align 8
  %123 = getelementptr inbounds %struct.priv, %struct.priv* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load %struct.priv*, %struct.priv** %7, align 8
  %126 = getelementptr inbounds %struct.priv, %struct.priv* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.priv*, %struct.priv** %7, align 8
  %129 = getelementptr inbounds %struct.priv, %struct.priv* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @chameleon_parse_cells(%struct.TYPE_7__* %124, i32 %127, i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %116
  br label %144

135:                                              ; preds = %116
  %136 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %137 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %136, i32 0, i32 0
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @dev_dbg(i32* %137, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %138)
  %140 = load %struct.priv*, %struct.priv** %7, align 8
  %141 = getelementptr inbounds %struct.priv, %struct.priv* %140, i32 0, i32 0
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = call i32 @mcb_bus_add_devices(%struct.TYPE_7__* %142)
  store i32 0, i32* %3, align 4
  br label %153

144:                                              ; preds = %134
  %145 = load %struct.priv*, %struct.priv** %7, align 8
  %146 = getelementptr inbounds %struct.priv, %struct.priv* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = call i32 @mcb_release_bus(%struct.TYPE_7__* %147)
  br label %149

149:                                              ; preds = %144, %111, %91, %78, %58, %41
  %150 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %151 = call i32 @pci_disable_device(%struct.pci_dev* %150)
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %149, %135, %24, %16
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local %struct.priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local %struct.resource* @devm_request_mem_region(i32*, i32, i32, i32) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i64 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.priv*) #1

declare dso_local %struct.TYPE_7__* @mcb_alloc_bus(i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @chameleon_parse_cells(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mcb_bus_add_devices(%struct.TYPE_7__*) #1

declare dso_local i32 @mcb_release_bus(%struct.TYPE_7__*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
