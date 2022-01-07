; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64, i32, i32 }
%struct.pci_device_id = type { i32 }

@PCI_VENDOR_ID_ATI = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_ATI_SBX00_SMBUS = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_AMD = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_HYGON = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_AMD_KERNCZ_SMBUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@piix4_main_adapters = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_AMD_HUDSON2_SMBUS = common dso_local global i64 0, align 8
@piix4_aux_port_name_sb800 = common dso_local global i8* null, align 8
@piix4_aux_adapter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @piix4_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @piix4_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCI_VENDOR_ID_ATI, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCI_DEVICE_ID_ATI_SBX00_SMBUS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 64
  br i1 %25, label %38, label %26

26:                                               ; preds = %21, %15, %2
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCI_VENDOR_ID_HYGON, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %85

38:                                               ; preds = %32, %26, %21
  store i32 0, i32* %8, align 4
  store i32 1, i32* %7, align 4
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PCI_VENDOR_ID_HYGON, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %44, %38
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PCI_DEVICE_ID_AMD_KERNCZ_SMBUS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PCI_DEVFN(i32 20, i32 3)
  %61 = call i32 @pci_bus_read_config_byte(i32 %59, i32 %60, i32 64, i32* %9)
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, 128
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store i32 1, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %56
  br label %67

67:                                               ; preds = %66, %50, %44
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %70 = call i32 @piix4_setup_sb800(%struct.pci_dev* %68, %struct.pci_device_id* %69, i32 0)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %163

75:                                               ; preds = %67
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @piix4_add_adapters_sb800(%struct.pci_dev* %76, i32 %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %163

84:                                               ; preds = %75
  br label %104

85:                                               ; preds = %32
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %88 = call i32 @piix4_setup(%struct.pci_dev* %86, %struct.pci_device_id* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %163

93:                                               ; preds = %85
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32*, i32** @piix4_main_adapters, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = call i32 @piix4_add_adapter(%struct.pci_dev* %94, i32 %95, i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %163

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %84
  %105 = load i32, i32* @ENODEV, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PCI_VENDOR_ID_ATI, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %132

112:                                              ; preds = %104
  %113 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %114 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @PCI_DEVICE_ID_ATI_SBX00_SMBUS, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %112
  %119 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %121, 64
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %125 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %126 = call i32 @piix4_setup_aux(%struct.pci_dev* %124, %struct.pci_device_id* %125, i32 88)
  store i32 %126, i32* %6, align 4
  br label %131

127:                                              ; preds = %118
  %128 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %129 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %130 = call i32 @piix4_setup_sb800(%struct.pci_dev* %128, %struct.pci_device_id* %129, i32 1)
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %127, %123
  br label %132

132:                                              ; preds = %131, %112, %104
  %133 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %134 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %132
  %139 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %140 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @PCI_DEVICE_ID_AMD_HUDSON2_SMBUS, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %146 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %147 = call i32 @piix4_setup_sb800(%struct.pci_dev* %145, %struct.pci_device_id* %146, i32 1)
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %144, %138, %132
  %149 = load i32, i32* %6, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i8*, i8** @piix4_aux_port_name_sb800, align 8
  br label %159

158:                                              ; preds = %151
  br label %159

159:                                              ; preds = %158, %156
  %160 = phi i8* [ %157, %156 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %158 ]
  %161 = call i32 @piix4_add_adapter(%struct.pci_dev* %152, i32 %153, i32 0, i32 0, i32 0, i32 1, i8* %160, i32* @piix4_aux_adapter)
  br label %162

162:                                              ; preds = %159, %148
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %162, %101, %91, %82, %73
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @pci_bus_read_config_byte(i32, i32, i32, i32*) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @piix4_setup_sb800(%struct.pci_dev*, %struct.pci_device_id*, i32) #1

declare dso_local i32 @piix4_add_adapters_sb800(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @piix4_setup(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i32 @piix4_add_adapter(%struct.pci_dev*, i32, i32, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @piix4_setup_aux(%struct.pci_dev*, %struct.pci_device_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
