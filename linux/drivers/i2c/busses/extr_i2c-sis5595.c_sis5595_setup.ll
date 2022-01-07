; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sis5595.c_sis5595_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sis5595.c_sis5595_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@blacklist = common dso_local global i32* null, align 8
@PCI_VENDOR_ID_SI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Looked for SIS5595 but found unsupported device %.4x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ACPI_BASE = common dso_local global i32 0, align 4
@sis5595_base = common dso_local global i32 0, align 4
@force_addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"ACPI base address uninitialized - upgrade BIOS or use force_addr=0xaddr\0A\00", align 1
@SIS5595_EXTENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"ACPI Base address: %04x\0A\00", align 1
@SMB_INDEX = common dso_local global i32 0, align 4
@sis5595_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"SMBus registers 0x%04x-0x%04x already in use!\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"forcing ISA address 0x%04X\0A\00", align 1
@PCIBIOS_SUCCESSFUL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"force address failed - not supported?\0A\00", align 1
@SIS5595_ENABLE_REG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"enabling ACPI\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"ACPI enable failed - not supported?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @sis5595_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis5595_setup(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %9 = load i32*, i32** @blacklist, align 8
  store i32* %9, i32** %6, align 8
  br label %10

10:                                               ; preds = %32, %1
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load i32, i32* @PCI_VENDOR_ID_SI, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.pci_dev* @pci_get_device(i32 %15, i32 %17, i32* null)
  store %struct.pci_dev* %18, %struct.pci_dev** %8, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %20 = icmp ne %struct.pci_dev* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %28 = call i32 @pci_dev_put(%struct.pci_dev* %27)
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %175

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %6, align 8
  br label %10

35:                                               ; preds = %10
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = load i32, i32* @ACPI_BASE, align 4
  %38 = call i64 @pci_read_config_word(%struct.pci_dev* %36, i32 %37, i32* @sis5595_base)
  %39 = load i32, i32* @sis5595_base, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i32, i32* @force_addr, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %175

50:                                               ; preds = %41, %35
  %51 = load i32, i32* @force_addr, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* @force_addr, align 4
  %55 = load i32, i32* @SIS5595_EXTENT, align 4
  %56 = sub nsw i32 %55, 1
  %57 = xor i32 %56, -1
  %58 = and i32 %54, %57
  store i32 %58, i32* @sis5595_base, align 4
  br label %59

59:                                               ; preds = %53, %50
  %60 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load i32, i32* @sis5595_base, align 4
  %63 = call i32 @dev_dbg(i32* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @sis5595_base, align 4
  %65 = load i32, i32* @SMB_INDEX, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sis5595_driver, i32 0, i32 0), align 4
  %68 = call i32 @acpi_check_region(i32 %66, i32 2, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %175

73:                                               ; preds = %59
  %74 = load i32, i32* @sis5595_base, align 4
  %75 = load i32, i32* @SMB_INDEX, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sis5595_driver, i32 0, i32 0), align 4
  %78 = call i32 @request_region(i32 %76, i32 2, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %73
  %81 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = load i32, i32* @sis5595_base, align 4
  %84 = load i32, i32* @SMB_INDEX, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* @sis5595_base, align 4
  %87 = load i32, i32* @SMB_INDEX, align 4
  %88 = add nsw i32 %86, %87
  %89 = add nsw i32 %88, 1
  %90 = call i32 (i32*, i8*, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %85, i32 %89)
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %175

93:                                               ; preds = %73
  %94 = load i32, i32* @force_addr, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %128

96:                                               ; preds = %93
  %97 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 0
  %99 = load i32, i32* @sis5595_base, align 4
  %100 = call i32 (i32*, i8*, ...) @dev_info(i32* %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  %101 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %102 = load i32, i32* @ACPI_BASE, align 4
  %103 = load i32, i32* @sis5595_base, align 4
  %104 = call i64 @pci_write_config_word(%struct.pci_dev* %101, i32 %102, i32 %103)
  %105 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %168

108:                                              ; preds = %96
  %109 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %110 = load i32, i32* @ACPI_BASE, align 4
  %111 = call i64 @pci_read_config_word(%struct.pci_dev* %109, i32 %110, i32* %4)
  %112 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %168

115:                                              ; preds = %108
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @SIS5595_EXTENT, align 4
  %118 = sub nsw i32 %117, 1
  %119 = xor i32 %118, -1
  %120 = and i32 %116, %119
  %121 = load i32, i32* @sis5595_base, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %115
  %124 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %125 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %124, i32 0, i32 0
  %126 = call i32 (i32*, i8*, ...) @dev_err(i32* %125, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %168

127:                                              ; preds = %115
  br label %128

128:                                              ; preds = %127, %93
  %129 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %130 = load i32, i32* @SIS5595_ENABLE_REG, align 4
  %131 = call i64 @pci_read_config_byte(%struct.pci_dev* %129, i32 %130, i32* %5)
  %132 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %168

135:                                              ; preds = %128
  %136 = load i32, i32* %5, align 4
  %137 = and i32 %136, 128
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %167

139:                                              ; preds = %135
  %140 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %141 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %140, i32 0, i32 0
  %142 = call i32 (i32*, i8*, ...) @dev_info(i32* %141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %143 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %144 = load i32, i32* @SIS5595_ENABLE_REG, align 4
  %145 = load i32, i32* %5, align 4
  %146 = or i32 %145, 128
  %147 = call i64 @pci_write_config_byte(%struct.pci_dev* %143, i32 %144, i32 %146)
  %148 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  br label %168

151:                                              ; preds = %139
  %152 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %153 = load i32, i32* @SIS5595_ENABLE_REG, align 4
  %154 = call i64 @pci_read_config_byte(%struct.pci_dev* %152, i32 %153, i32* %5)
  %155 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %168

158:                                              ; preds = %151
  %159 = load i32, i32* %5, align 4
  %160 = and i32 %159, 128
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %164 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %163, i32 0, i32 0
  %165 = call i32 (i32*, i8*, ...) @dev_err(i32* %164, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %168

166:                                              ; preds = %158
  br label %167

167:                                              ; preds = %166, %135
  store i32 0, i32* %2, align 4
  br label %175

168:                                              ; preds = %162, %157, %150, %134, %123, %114, %107
  %169 = load i32, i32* @sis5595_base, align 4
  %170 = load i32, i32* @SMB_INDEX, align 4
  %171 = add nsw i32 %169, %170
  %172 = call i32 @release_region(i32 %171, i32 2)
  %173 = load i32, i32* @ENODEV, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %168, %167, %80, %71, %44, %21
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i64 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @acpi_check_region(i32, i32, i32) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i64 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
