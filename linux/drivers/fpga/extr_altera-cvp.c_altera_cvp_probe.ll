; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-cvp.c_altera_cvp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-cvp.c_altera_cvp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.altera_cvp_conf = type { i32, i64, i32, i32, i32*, %struct.pci_dev* }
%struct.fpga_manager = type { i32 }

@PCI_EXT_CAP_ID_VNDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No Vendor Specific Offset.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@VSE_PCIE_EXT_CAP_ID = common dso_local global i64 0, align 8
@VSE_PCIE_EXT_CAP_ID_VAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Wrong EXT_CAP_ID value 0x%x\0A\00", align 1
@VSE_CVP_STATUS = common dso_local global i64 0, align 8
@VSE_CVP_STATUS_CVP_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"CVP is disabled for this device: CVP_STATUS Reg 0x%x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i64 0, align 8
@PCI_COMMAND_MEMORY = common dso_local global i64 0, align 8
@CVP_BAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"CVP\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Requesting CVP BAR region failed\0A\00", align 1
@altera_cvp_write_data_iomem = common dso_local global i32 0, align 4
@V1_VSEC_OFFSET = common dso_local global i32 0, align 4
@cvp_priv_v1 = common dso_local global i32 0, align 4
@cvp_priv_v2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Mapping CVP BAR failed\0A\00", align 1
@altera_cvp_write_data_config = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"%s @%s\00", align 1
@ALTERA_CVP_MGR_NAME = common dso_local global i8* null, align 8
@altera_cvp_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @altera_cvp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_cvp_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.altera_cvp_conf*, align 8
  %7 = alloca %struct.fpga_manager*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = load i32, i32* @PCI_EXT_CAP_ID_VNDR, align 4
  %15 = call i32 @pci_find_next_ext_capability(%struct.pci_dev* %13, i32 0, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %188

24:                                               ; preds = %2
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @VSE_PCIE_EXT_CAP_ID, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @pci_read_config_word(%struct.pci_dev* %25, i64 %29, i64* %11)
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @VSE_PCIE_EXT_CAP_ID_VAL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %11, align 8
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %188

41:                                               ; preds = %24
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @VSE_CVP_STATUS, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @pci_read_config_dword(%struct.pci_dev* %42, i64 %46, i32* %12)
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @VSE_CVP_STATUS_CVP_EN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %41
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %12, align 4
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %188

59:                                               ; preds = %41
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.altera_cvp_conf* @devm_kzalloc(i32* %61, i32 40, i32 %62)
  store %struct.altera_cvp_conf* %63, %struct.altera_cvp_conf** %6, align 8
  %64 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %6, align 8
  %65 = icmp ne %struct.altera_cvp_conf* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %188

69:                                               ; preds = %59
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %6, align 8
  %72 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = load i64, i64* @PCI_COMMAND, align 8
  %75 = call i32 @pci_read_config_word(%struct.pci_dev* %73, i64 %74, i64* %10)
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @PCI_COMMAND_MEMORY, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %69
  %81 = load i64, i64* @PCI_COMMAND_MEMORY, align 8
  %82 = load i64, i64* %10, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %10, align 8
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = load i64, i64* @PCI_COMMAND, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i32 @pci_write_config_word(%struct.pci_dev* %84, i64 %85, i64 %86)
  br label %88

88:                                               ; preds = %80, %69
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = load i32, i32* @CVP_BAR, align 4
  %91 = call i32 @pci_request_region(%struct.pci_dev* %89, i32 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 0
  %97 = call i32 (i32*, i8*, ...) @dev_err(i32* %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %178

98:                                               ; preds = %88
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %6, align 8
  %101 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %100, i32 0, i32 5
  store %struct.pci_dev* %99, %struct.pci_dev** %101, align 8
  %102 = load i32, i32* @altera_cvp_write_data_iomem, align 4
  %103 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %6, align 8
  %104 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %6, align 8
  %106 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @V1_VSEC_OFFSET, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %98
  %111 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %6, align 8
  %112 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %111, i32 0, i32 4
  store i32* @cvp_priv_v1, i32** %112, align 8
  br label %116

113:                                              ; preds = %98
  %114 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %6, align 8
  %115 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %114, i32 0, i32 4
  store i32* @cvp_priv_v2, i32** %115, align 8
  br label %116

116:                                              ; preds = %113, %110
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = load i32, i32* @CVP_BAR, align 4
  %119 = call i64 @pci_iomap(%struct.pci_dev* %117, i32 %118, i32 0)
  %120 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %6, align 8
  %121 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %6, align 8
  %123 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %116
  %127 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %128 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %127, i32 0, i32 0
  %129 = call i32 @dev_warn(i32* %128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %130 = load i32, i32* @altera_cvp_write_data_config, align 4
  %131 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %6, align 8
  %132 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %126, %116
  %134 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %6, align 8
  %135 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i8*, i8** @ALTERA_CVP_MGR_NAME, align 8
  %138 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %139 = call i8* @pci_name(%struct.pci_dev* %138)
  %140 = call i32 @snprintf(i32 %136, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %137, i8* %139)
  %141 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %142 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %141, i32 0, i32 0
  %143 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %6, align 8
  %144 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %6, align 8
  %147 = call %struct.fpga_manager* @devm_fpga_mgr_create(i32* %142, i32 %145, i32* @altera_cvp_ops, %struct.altera_cvp_conf* %146)
  store %struct.fpga_manager* %147, %struct.fpga_manager** %7, align 8
  %148 = load %struct.fpga_manager*, %struct.fpga_manager** %7, align 8
  %149 = icmp ne %struct.fpga_manager* %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %133
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %8, align 4
  br label %163

153:                                              ; preds = %133
  %154 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %155 = load %struct.fpga_manager*, %struct.fpga_manager** %7, align 8
  %156 = call i32 @pci_set_drvdata(%struct.pci_dev* %154, %struct.fpga_manager* %155)
  %157 = load %struct.fpga_manager*, %struct.fpga_manager** %7, align 8
  %158 = call i32 @fpga_mgr_register(%struct.fpga_manager* %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  br label %163

162:                                              ; preds = %153
  store i32 0, i32* %3, align 4
  br label %188

163:                                              ; preds = %161, %150
  %164 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %6, align 8
  %165 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %170 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %6, align 8
  %171 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @pci_iounmap(%struct.pci_dev* %169, i64 %172)
  br label %174

174:                                              ; preds = %168, %163
  %175 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %176 = load i32, i32* @CVP_BAR, align 4
  %177 = call i32 @pci_release_region(%struct.pci_dev* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %94
  %179 = load i64, i64* @PCI_COMMAND_MEMORY, align 8
  %180 = xor i64 %179, -1
  %181 = load i64, i64* %10, align 8
  %182 = and i64 %181, %180
  store i64 %182, i64* %10, align 8
  %183 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %184 = load i64, i64* @PCI_COMMAND, align 8
  %185 = load i64, i64* %10, align 8
  %186 = call i32 @pci_write_config_word(%struct.pci_dev* %183, i64 %184, i64 %185)
  %187 = load i32, i32* %8, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %178, %162, %66, %52, %34, %18
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @pci_find_next_ext_capability(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i64*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local %struct.altera_cvp_conf* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i64) #1

declare dso_local i32 @pci_request_region(%struct.pci_dev*, i32, i8*) #1

declare dso_local i64 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

declare dso_local %struct.fpga_manager* @devm_fpga_mgr_create(i32*, i32, i32*, %struct.altera_cvp_conf*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.fpga_manager*) #1

declare dso_local i32 @fpga_mgr_register(%struct.fpga_manager*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
