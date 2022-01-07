; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ismt.c_ismt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ismt.c_ismt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.pci_dev = type { i32, i32* }
%struct.pci_device_id = type { i32 }
%struct.ismt_priv = type { %struct.TYPE_6__, i32, %struct.pci_dev* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@smbus_algorithm = common dso_local global i32 0, align 4
@ISMT_MAX_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to enable SMBus PCI device (%d)\0A\00", align 1
@SMBBAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"SMBus base address uninitialized, upgrade BIOS\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"SMBus iSMT adapter at %lx\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" start=0x%lX\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" len=0x%lX\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"ACPI resource conflict!\0A\00", align 1
@ismt_driver = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"Failed to request SMBus region 0x%lx-0x%lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Unable to ioremap SMBus BAR\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"pci_set_dma_mask fail %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ismt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ismt_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ismt_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ismt_priv* @devm_kzalloc(i32* %11, i32 48, i32 %12)
  store %struct.ismt_priv* %13, %struct.ismt_priv** %7, align 8
  %14 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %15 = icmp ne %struct.ismt_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %207

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %22 = call i32 @pci_set_drvdata(%struct.pci_dev* %20, %struct.ismt_priv* %21)
  %23 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %24 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %23, i32 0, i32 0
  %25 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %26 = call i32 @i2c_set_adapdata(%struct.TYPE_6__* %24, %struct.ismt_priv* %25)
  %27 = load i32, i32* @THIS_MODULE, align 4
  %28 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %29 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %32 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %33 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  store i32 %31, i32* %34, align 8
  %35 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %36 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  store i32* @smbus_algorithm, i32** %37, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %41 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32* %39, i32** %43, align 8
  %44 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %45 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 @ACPI_COMPANION(i32* %48)
  %50 = call i32 @ACPI_COMPANION_SET(%struct.TYPE_7__* %46, i32 %49)
  %51 = load i32, i32* @ISMT_MAX_RETRIES, align 4
  %52 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %53 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %57 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %56, i32 0, i32 2
  store %struct.pci_dev* %55, %struct.pci_dev** %57, align 8
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = call i32 @pcim_enable_device(%struct.pci_dev* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %19
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (i32*, i8*, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %207

68:                                               ; preds = %19
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = call i32 @pci_set_master(%struct.pci_dev* %69)
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = load i64, i64* @SMBBAR, align 8
  %73 = call i64 @pci_resource_start(%struct.pci_dev* %71, i64 %72)
  store i64 %73, i64* %8, align 8
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = load i64, i64* @SMBBAR, align 8
  %76 = call i64 @pci_resource_len(%struct.pci_dev* %74, i64 %75)
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %79, %68
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 0
  %85 = call i32 (i32*, i8*, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %207

88:                                               ; preds = %79
  %89 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %90 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @snprintf(i32 %92, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %93)
  %95 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %96 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %95, i32 0, i32 2
  %97 = load %struct.pci_dev*, %struct.pci_dev** %96, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 0
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @dev_dbg(i32* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %99)
  %101 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %102 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %101, i32 0, i32 2
  %103 = load %struct.pci_dev*, %struct.pci_dev** %102, align 8
  %104 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %103, i32 0, i32 0
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @dev_dbg(i32* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %105)
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @SMBBAR, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = call i32 @acpi_check_resource_conflict(i32* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %88
  %116 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %117 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %116, i32 0, i32 0
  %118 = call i32 (i32*, i8*, ...) @dev_err(i32* %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  br label %207

120:                                              ; preds = %88
  %121 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %122 = load i64, i64* @SMBBAR, align 8
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ismt_driver, i32 0, i32 0), align 4
  %124 = call i32 @pci_request_region(%struct.pci_dev* %121, i64 %122, i32 %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 0
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* %9, align 8
  %133 = add i64 %131, %132
  %134 = call i32 (i32*, i8*, ...) @dev_err(i32* %129, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 %130, i64 %133)
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %3, align 4
  br label %207

136:                                              ; preds = %120
  %137 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %138 = load i64, i64* @SMBBAR, align 8
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @pcim_iomap(%struct.pci_dev* %137, i64 %138, i64 %139)
  %141 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %142 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  %143 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %144 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %136
  %148 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %149 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %148, i32 0, i32 0
  %150 = call i32 (i32*, i8*, ...) @dev_err(i32* %149, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %151 = load i32, i32* @ENODEV, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %207

153:                                              ; preds = %136
  %154 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %155 = call i32 @DMA_BIT_MASK(i32 64)
  %156 = call i64 @pci_set_dma_mask(%struct.pci_dev* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %160 = call i32 @DMA_BIT_MASK(i32 64)
  %161 = call i64 @pci_set_consistent_dma_mask(%struct.pci_dev* %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %181

163:                                              ; preds = %158, %153
  %164 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %165 = call i32 @DMA_BIT_MASK(i32 32)
  %166 = call i64 @pci_set_dma_mask(%struct.pci_dev* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %170 = call i32 @DMA_BIT_MASK(i32 32)
  %171 = call i64 @pci_set_consistent_dma_mask(%struct.pci_dev* %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %168, %163
  %174 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %175 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %174, i32 0, i32 0
  %176 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %177 = call i32 (i32*, i8*, ...) @dev_err(i32* %175, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), %struct.pci_dev* %176)
  %178 = load i32, i32* @ENODEV, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  br label %207

180:                                              ; preds = %168
  br label %181

181:                                              ; preds = %180, %158
  %182 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %183 = call i32 @ismt_dev_init(%struct.ismt_priv* %182)
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i32, i32* %6, align 4
  store i32 %187, i32* %3, align 4
  br label %207

188:                                              ; preds = %181
  %189 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %190 = call i32 @ismt_hw_init(%struct.ismt_priv* %189)
  %191 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %192 = call i32 @ismt_int_init(%struct.ismt_priv* %191)
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %188
  %196 = load i32, i32* %6, align 4
  store i32 %196, i32* %3, align 4
  br label %207

197:                                              ; preds = %188
  %198 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %199 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %198, i32 0, i32 0
  %200 = call i32 @i2c_add_adapter(%struct.TYPE_6__* %199)
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %6, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = load i32, i32* @ENODEV, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %3, align 4
  br label %207

206:                                              ; preds = %197
  store i32 0, i32* %3, align 4
  br label %207

207:                                              ; preds = %206, %203, %195, %186, %173, %147, %127, %115, %82, %62, %16
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local %struct.ismt_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ismt_priv*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_6__*, %struct.ismt_priv*) #1

declare dso_local i32 @ACPI_COMPANION_SET(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ACPI_COMPANION(i32*) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i64) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i64) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @acpi_check_resource_conflict(i32*) #1

declare dso_local i32 @pci_request_region(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pcim_iomap(%struct.pci_dev*, i64, i64) #1

declare dso_local i64 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @ismt_dev_init(%struct.ismt_priv*) #1

declare dso_local i32 @ismt_hw_init(%struct.ismt_priv*) #1

declare dso_local i32 @ismt_int_init(%struct.ismt_priv*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
