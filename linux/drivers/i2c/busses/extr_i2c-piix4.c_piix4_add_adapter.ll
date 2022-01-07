; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_add_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_add_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.i2c_adapter = type { i32, i16, i32, i32, i32, i32, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.i2c_piix4_adapdata = type { i32, i16, i32, i32, i32, i32, %struct.TYPE_2__, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SMBIOSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@I2C_CLASS_SPD = common dso_local global i32 0, align 4
@piix4_smbus_algorithm_sb800 = common dso_local global i32 0, align 4
@smbus_algorithm = common dso_local global i32 0, align 4
@piix4_port_shift_sb800 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"SMBus PIIX4 adapter%s at %04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i16, i32, i32, i32, i32, i8*, %struct.i2c_adapter**)* @piix4_add_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @piix4_add_adapter(%struct.pci_dev* %0, i16 zeroext %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, %struct.i2c_adapter** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.i2c_adapter**, align 8
  %18 = alloca %struct.i2c_adapter*, align 8
  %19 = alloca %struct.i2c_piix4_adapdata*, align 8
  %20 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %10, align 8
  store i16 %1, i16* %11, align 2
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store %struct.i2c_adapter** %7, %struct.i2c_adapter*** %17, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.i2c_piix4_adapdata* @kzalloc(i32 48, i32 %21)
  %23 = bitcast %struct.i2c_piix4_adapdata* %22 to %struct.i2c_adapter*
  store %struct.i2c_adapter* %23, %struct.i2c_adapter** %18, align 8
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %18, align 8
  %25 = icmp eq %struct.i2c_adapter* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %8
  %27 = load i16, i16* %11, align 2
  %28 = load i32, i32* @SMBIOSIZE, align 4
  %29 = call i32 @release_region(i16 zeroext %27, i32 %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %121

32:                                               ; preds = %8
  %33 = load i32, i32* @THIS_MODULE, align 4
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %18, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %37 = load i32, i32* @I2C_CLASS_SPD, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %18, align 8
  %40 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32* @piix4_smbus_algorithm_sb800, i32* @smbus_algorithm
  %45 = load %struct.i2c_adapter*, %struct.i2c_adapter** %18, align 8
  %46 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %45, i32 0, i32 7
  store i32* %44, i32** %46, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.i2c_piix4_adapdata* @kzalloc(i32 48, i32 %47)
  store %struct.i2c_piix4_adapdata* %48, %struct.i2c_piix4_adapdata** %19, align 8
  %49 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %19, align 8
  %50 = icmp eq %struct.i2c_piix4_adapdata* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %32
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %18, align 8
  %53 = bitcast %struct.i2c_adapter* %52 to %struct.i2c_piix4_adapdata*
  %54 = call i32 @kfree(%struct.i2c_piix4_adapdata* %53)
  %55 = load i16, i16* %11, align 2
  %56 = load i32, i32* @SMBIOSIZE, align 4
  %57 = call i32 @release_region(i16 zeroext %55, i32 %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %121

60:                                               ; preds = %32
  %61 = load i16, i16* %11, align 2
  %62 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %19, align 8
  %63 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %62, i32 0, i32 1
  store i16 %61, i16* %63, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %19, align 8
  %66 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @piix4_port_shift_sb800, align 4
  %69 = shl i32 %67, %68
  %70 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %19, align 8
  %71 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %19, align 8
  %74 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = load %struct.i2c_adapter*, %struct.i2c_adapter** %18, align 8
  %78 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32* %76, i32** %79, align 8
  %80 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 0
  %82 = call i64 @has_acpi_companion(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %60
  %85 = load %struct.i2c_adapter*, %struct.i2c_adapter** %18, align 8
  %86 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %85, i32 0, i32 6
  %87 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 0
  %89 = call i32 @ACPI_COMPANION(i32* %88)
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @acpi_preset_companion(%struct.TYPE_2__* %86, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %60
  %93 = load %struct.i2c_adapter*, %struct.i2c_adapter** %18, align 8
  %94 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load i8*, i8** %16, align 8
  %97 = load i16, i16* %11, align 2
  %98 = call i32 @snprintf(i32 %95, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %96, i16 zeroext %97)
  %99 = load %struct.i2c_adapter*, %struct.i2c_adapter** %18, align 8
  %100 = bitcast %struct.i2c_adapter* %99 to %struct.i2c_piix4_adapdata*
  %101 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %19, align 8
  %102 = call i32 @i2c_set_adapdata(%struct.i2c_piix4_adapdata* %100, %struct.i2c_piix4_adapdata* %101)
  %103 = load %struct.i2c_adapter*, %struct.i2c_adapter** %18, align 8
  %104 = bitcast %struct.i2c_adapter* %103 to %struct.i2c_piix4_adapdata*
  %105 = call i32 @i2c_add_adapter(%struct.i2c_piix4_adapdata* %104)
  store i32 %105, i32* %20, align 4
  %106 = load i32, i32* %20, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %92
  %109 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %19, align 8
  %110 = call i32 @kfree(%struct.i2c_piix4_adapdata* %109)
  %111 = load %struct.i2c_adapter*, %struct.i2c_adapter** %18, align 8
  %112 = bitcast %struct.i2c_adapter* %111 to %struct.i2c_piix4_adapdata*
  %113 = call i32 @kfree(%struct.i2c_piix4_adapdata* %112)
  %114 = load i16, i16* %11, align 2
  %115 = load i32, i32* @SMBIOSIZE, align 4
  %116 = call i32 @release_region(i16 zeroext %114, i32 %115)
  %117 = load i32, i32* %20, align 4
  store i32 %117, i32* %9, align 4
  br label %121

118:                                              ; preds = %92
  %119 = load %struct.i2c_adapter*, %struct.i2c_adapter** %18, align 8
  %120 = load %struct.i2c_adapter**, %struct.i2c_adapter*** %17, align 8
  store %struct.i2c_adapter* %119, %struct.i2c_adapter** %120, align 8
  store i32 0, i32* %9, align 4
  br label %121

121:                                              ; preds = %118, %108, %51, %26
  %122 = load i32, i32* %9, align 4
  ret i32 %122
}

declare dso_local %struct.i2c_piix4_adapdata* @kzalloc(i32, i32) #1

declare dso_local i32 @release_region(i16 zeroext, i32) #1

declare dso_local i32 @kfree(%struct.i2c_piix4_adapdata*) #1

declare dso_local i64 @has_acpi_companion(i32*) #1

declare dso_local i32 @acpi_preset_companion(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @ACPI_COMPANION(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i16 zeroext) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_piix4_adapdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
