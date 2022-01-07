; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_add_adapters_sb800.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_add_adapters_sb800.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_piix4_adapdata = type { i64 }
%struct.pci_dev = type { i64, i32, i32 }

@PCI_DEVICE_ID_AMD_KERNCZ_SMBUS = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_AMD_HUDSON2_SMBUS = common dso_local global i64 0, align 8
@HUDSON2_MAIN_PORTS = common dso_local global i32 0, align 4
@piix4_adapter_count = common dso_local global i32 0, align 4
@PIIX4_MAX_ADAPTERS = common dso_local global i32 0, align 4
@piix4_main_port_names_sb800 = common dso_local global i32* null, align 8
@piix4_main_adapters = common dso_local global %struct.i2c_piix4_adapdata** null, align 8
@.str = private unnamed_addr constant [49 x i8] c"Error setting up SB800 adapters. Unregistering!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i16, i32)* @piix4_add_adapters_sb800 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @piix4_add_adapters_sb800(%struct.pci_dev* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_piix4_adapdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PCI_DEVICE_ID_AMD_KERNCZ_SMBUS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %3
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCI_DEVICE_ID_AMD_HUDSON2_SMBUS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %26, 31
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %3
  %29 = load i32, i32* @HUDSON2_MAIN_PORTS, align 4
  store i32 %29, i32* @piix4_adapter_count, align 4
  br label %32

30:                                               ; preds = %23, %17
  %31 = load i32, i32* @PIIX4_MAX_ADAPTERS, align 4
  store i32 %31, i32* @piix4_adapter_count, align 4
  br label %32

32:                                               ; preds = %30, %28
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %65, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @piix4_adapter_count, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  br label %44

44:                                               ; preds = %41, %40
  %45 = phi i32 [ 0, %40 ], [ %43, %41 ]
  store i32 %45, i32* %11, align 4
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = load i16, i16* %6, align 2
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** @piix4_main_port_names_sb800, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.i2c_piix4_adapdata**, %struct.i2c_piix4_adapdata*** @piix4_main_adapters, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %56, i64 %58
  %60 = call i32 @piix4_add_adapter(%struct.pci_dev* %46, i16 zeroext %47, i32 1, i32 %48, i32 %49, i32 %50, i32 %55, %struct.i2c_piix4_adapdata** %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %44
  br label %70

64:                                               ; preds = %44
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %33

68:                                               ; preds = %33
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %111

70:                                               ; preds = %63
  %71 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 2
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %108, %70
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %9, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %74
  %79 = load %struct.i2c_piix4_adapdata**, %struct.i2c_piix4_adapdata*** @piix4_main_adapters, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %79, i64 %81
  %83 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %82, align 8
  %84 = call %struct.i2c_piix4_adapdata* @i2c_get_adapdata(%struct.i2c_piix4_adapdata* %83)
  store %struct.i2c_piix4_adapdata* %84, %struct.i2c_piix4_adapdata** %8, align 8
  %85 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %8, align 8
  %86 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %78
  %90 = load %struct.i2c_piix4_adapdata**, %struct.i2c_piix4_adapdata*** @piix4_main_adapters, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %90, i64 %92
  %94 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %93, align 8
  %95 = call i32 @i2c_del_adapter(%struct.i2c_piix4_adapdata* %94)
  %96 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %8, align 8
  %97 = call i32 @kfree(%struct.i2c_piix4_adapdata* %96)
  %98 = load %struct.i2c_piix4_adapdata**, %struct.i2c_piix4_adapdata*** @piix4_main_adapters, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %98, i64 %100
  %102 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %101, align 8
  %103 = call i32 @kfree(%struct.i2c_piix4_adapdata* %102)
  %104 = load %struct.i2c_piix4_adapdata**, %struct.i2c_piix4_adapdata*** @piix4_main_adapters, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %104, i64 %106
  store %struct.i2c_piix4_adapdata* null, %struct.i2c_piix4_adapdata** %107, align 8
  br label %108

108:                                              ; preds = %89, %78
  br label %74

109:                                              ; preds = %74
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %109, %68
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @piix4_add_adapter(%struct.pci_dev*, i16 zeroext, i32, i32, i32, i32, i32, %struct.i2c_piix4_adapdata**) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.i2c_piix4_adapdata* @i2c_get_adapdata(%struct.i2c_piix4_adapdata*) #1

declare dso_local i32 @i2c_del_adapter(%struct.i2c_piix4_adapdata*) #1

declare dso_local i32 @kfree(%struct.i2c_piix4_adapdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
