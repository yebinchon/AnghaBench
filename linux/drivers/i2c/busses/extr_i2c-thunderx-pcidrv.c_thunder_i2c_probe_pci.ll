; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-thunderx-pcidrv.c_thunder_i2c_probe_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-thunderx-pcidrv.c_thunder_i2c_probe_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i32*, i32 }
%struct.TYPE_7__ = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.pci_dev = type { %struct.device }
%struct.pci_device_id = type { i32 }
%struct.octeon_i2c = type { i32, i32, i32, %struct.device*, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@thunder_i2c_int_enable = common dso_local global i32 0, align 4
@thunder_i2c_int_disable = common dso_local global i32 0, align 4
@thunder_i2c_hlc_int_enable = common dso_local global i32 0, align 4
@thunder_i2c_hlc_int_disable = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@octeon_i2c_isr = common dso_local global i32 0, align 4
@thunderx_i2c_ops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@octeon_i2c_recovery_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Cavium ThunderX i2c adapter at %s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Probed. Set system clock to %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"SMBUS alert not active on this bus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @thunder_i2c_probe_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunder_i2c_probe_pci(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.octeon_i2c*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.octeon_i2c* @devm_kzalloc(%struct.device* %11, i32 104, i32 %12)
  store %struct.octeon_i2c* %13, %struct.octeon_i2c** %7, align 8
  %14 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %15 = icmp ne %struct.octeon_i2c* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %188

19:                                               ; preds = %2
  %20 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %21 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %20, i32 0, i32 11
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 4096, i32* %22, align 8
  %23 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %24 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %23, i32 0, i32 11
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 4112, i32* %25, align 4
  %26 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %27 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %26, i32 0, i32 11
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  store i32 4120, i32* %28, align 8
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %31 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %30, i32 0, i32 3
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %34 = call i32 @pci_set_drvdata(%struct.pci_dev* %32, %struct.octeon_i2c* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pcim_enable_device(%struct.pci_dev* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %19
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %188

41:                                               ; preds = %19
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load i32, i32* @DRV_NAME, align 4
  %44 = call i32 @pci_request_regions(%struct.pci_dev* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %188

49:                                               ; preds = %41
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = call i32 @pci_resource_len(%struct.pci_dev* %51, i32 0)
  %53 = call i32 @pcim_iomap(%struct.pci_dev* %50, i32 0, i32 %52)
  %54 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %55 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %54, i32 0, i32 10
  store i32 %53, i32* %55, align 4
  %56 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %57 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %49
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %188

63:                                               ; preds = %49
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %66 = call i32 @thunder_i2c_clock_enable(%struct.device* %64, %struct.octeon_i2c* %65)
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %69 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %68, i32 0, i32 0
  %70 = call i32 @device_property_read_u32(%struct.device* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %75 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %74, i32 0, i32 0
  store i32 100000, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %63
  %77 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %78 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %77, i32 0, i32 9
  %79 = call i32 @init_waitqueue_head(i32* %78)
  %80 = load i32, i32* @thunder_i2c_int_enable, align 4
  %81 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %82 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @thunder_i2c_int_disable, align 4
  %84 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %85 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @thunder_i2c_hlc_int_enable, align 4
  %87 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %88 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @thunder_i2c_hlc_int_disable, align 4
  %90 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %91 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %94 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %92, i32 1, i32 1, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %76
  br label %181

98:                                               ; preds = %76
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = call i32 @pci_irq_vector(%struct.pci_dev* %100, i32 0)
  %102 = load i32, i32* @octeon_i2c_isr, align 4
  %103 = load i32, i32* @DRV_NAME, align 4
  %104 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %105 = call i32 @devm_request_irq(%struct.device* %99, i32 %101, i32 %102, i32 0, i32 %103, %struct.octeon_i2c* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  br label %181

109:                                              ; preds = %98
  %110 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %111 = call i32 @octeon_i2c_init_lowlevel(%struct.octeon_i2c* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %181

115:                                              ; preds = %109
  %116 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %117 = call i32 @octeon_i2c_set_clock(%struct.octeon_i2c* %116)
  %118 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %119 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %118, i32 0, i32 4
  %120 = bitcast %struct.TYPE_8__* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 bitcast (%struct.TYPE_8__* @thunderx_i2c_ops to i8*), i64 40, i1 false)
  %121 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %122 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i32 5, i32* %123, align 8
  %124 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %125 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %126 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 4
  store i32 %124, i32* %127, align 8
  %128 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %129 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  store i32* @octeon_i2c_recovery_info, i32** %130, align 8
  %131 = load %struct.device*, %struct.device** %6, align 8
  %132 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %133 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store %struct.device* %131, %struct.device** %135, align 8
  %136 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %137 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.device, %struct.device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %141 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store i32 %139, i32* %143, align 8
  %144 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %145 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.device*, %struct.device** %6, align 8
  %149 = call i8* @dev_name(%struct.device* %148)
  %150 = call i32 @snprintf(i32 %147, i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %149)
  %151 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %152 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %151, i32 0, i32 4
  %153 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %154 = call i32 @i2c_set_adapdata(%struct.TYPE_8__* %152, %struct.octeon_i2c* %153)
  %155 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %156 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %155, i32 0, i32 4
  %157 = call i32 @i2c_add_adapter(%struct.TYPE_8__* %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %115
  br label %181

161:                                              ; preds = %115
  %162 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %163 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %162, i32 0, i32 3
  %164 = load %struct.device*, %struct.device** %163, align 8
  %165 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %166 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %164, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %167)
  %169 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %170 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %171 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.device, %struct.device* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @thunder_i2c_smbus_setup(%struct.octeon_i2c* %169, i32 %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %161
  %178 = load %struct.device*, %struct.device** %6, align 8
  %179 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %178, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %161
  store i32 0, i32* %3, align 4
  br label %188

181:                                              ; preds = %160, %114, %108, %97
  %182 = load %struct.device*, %struct.device** %6, align 8
  %183 = load %struct.octeon_i2c*, %struct.octeon_i2c** %7, align 8
  %184 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @thunder_i2c_clock_disable(%struct.device* %182, i32 %185)
  %187 = load i32, i32* %8, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %181, %180, %60, %47, %39, %16
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local %struct.octeon_i2c* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.octeon_i2c*) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcim_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @thunder_i2c_clock_enable(%struct.device*, %struct.octeon_i2c*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.octeon_i2c*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @octeon_i2c_init_lowlevel(%struct.octeon_i2c*) #1

declare dso_local i32 @octeon_i2c_set_clock(%struct.octeon_i2c*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_8__*, %struct.octeon_i2c*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @thunder_i2c_smbus_setup(%struct.octeon_i2c*, i32) #1

declare dso_local i32 @thunder_i2c_clock_disable(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
