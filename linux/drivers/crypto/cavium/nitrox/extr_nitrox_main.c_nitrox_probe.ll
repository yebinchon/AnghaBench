; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_main.c_nitrox_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_main.c_nitrox_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.nitrox_device = type { i64, i32, %struct.TYPE_4__, i32, i32, i32, i32, %struct.TYPE_3__, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s driver version %s\0A\00", align 1
@nitrox_driver_name = common dso_local global i32 0, align 4
@DRIVER_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"FLR failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"DMA to 64-BIT address\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"DMA configuration failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_TIMEOUT = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@MAX_PF_QUEUES = common dso_local global i32 0, align 4
@qlen = common dso_local global i32 0, align 4
@__NDEV_READY = common dso_local global i32 0, align 4
@__NDEV_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @nitrox_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.nitrox_device*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* @nitrox_driver_name, align 4
  %11 = load i32, i32* @DRIVER_VERSION, align 4
  %12 = call i32 @dev_info_once(i32* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = call i32 @pci_enable_device_mem(%struct.pci_dev* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %205

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32 @nitrox_device_flr(%struct.pci_dev* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @pci_disable_device(%struct.pci_dev* %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %205

31:                                               ; preds = %19
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call i32 @DMA_BIT_MASK(i32 64)
  %35 = call i32 @dma_set_mask_and_coherent(i32* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %56

41:                                               ; preds = %31
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = call i32 @DMA_BIT_MASK(i32 32)
  %45 = call i32 @dma_set_mask_and_coherent(i32* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = call i32 @pci_disable_device(%struct.pci_dev* %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %205

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %37
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = load i32, i32* @nitrox_driver_name, align 4
  %59 = call i32 @pci_request_mem_regions(%struct.pci_dev* %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = call i32 @pci_disable_device(%struct.pci_dev* %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %205

66:                                               ; preds = %56
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = call i32 @pci_set_master(%struct.pci_dev* %67)
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.nitrox_device* @kzalloc(i32 64, i32 %69)
  store %struct.nitrox_device* %70, %struct.nitrox_device** %6, align 8
  %71 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %72 = icmp ne %struct.nitrox_device* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %199

76:                                               ; preds = %66
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %79 = call i32 @pci_set_drvdata(%struct.pci_dev* %77, %struct.nitrox_device* %78)
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %82 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %81, i32 0, i32 8
  store %struct.pci_dev* %80, %struct.pci_dev** %82, align 8
  %83 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %84 = call i32 @nitrox_add_to_devlist(%struct.nitrox_device* %83)
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %89 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 8
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %95 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %101 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* @CMD_TIMEOUT, align 4
  %104 = call i32 @msecs_to_jiffies(i32 %103)
  %105 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %106 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 4
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 0
  %109 = call i64 @dev_to_node(i32* %108)
  %110 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %111 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %113 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NUMA_NO_NODE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %76
  %118 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %119 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %117, %76
  %121 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %122 = call i32 @pci_resource_start(%struct.pci_dev* %121, i32 0)
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = call i32 @pci_resource_len(%struct.pci_dev* %123, i32 0)
  %125 = call i32 @ioremap(i32 %122, i32 %124)
  %126 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %127 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 8
  %128 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %129 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %120
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %7, align 4
  br label %192

135:                                              ; preds = %120
  %136 = load i32, i32* @u32, align 4
  %137 = load i32, i32* @MAX_PF_QUEUES, align 4
  %138 = call i32 (...) @num_online_cpus()
  %139 = call i32 @min_t(i32 %136, i32 %137, i32 %138)
  %140 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %141 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @qlen, align 4
  %143 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %144 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %146 = call i32 @nitrox_pf_sw_init(%struct.nitrox_device* %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %135
  br label %192

150:                                              ; preds = %135
  %151 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %152 = call i32 @nitrox_pf_hw_init(%struct.nitrox_device* %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %189

156:                                              ; preds = %150
  %157 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %158 = call i32 @nitrox_debugfs_init(%struct.nitrox_device* %157)
  %159 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %160 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  %162 = call i32 @atomic64_set(i32* %161, i32 0)
  %163 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %164 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = call i32 @atomic64_set(i32* %165, i32 0)
  %167 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %168 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = call i32 @atomic64_set(i32* %169, i32 0)
  %171 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %172 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %171, i32 0, i32 1
  %173 = load i32, i32* @__NDEV_READY, align 4
  %174 = call i32 @atomic_set(i32* %172, i32 %173)
  %175 = call i32 (...) @smp_mb__after_atomic()
  %176 = call i32 (...) @nitrox_crypto_register()
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %156
  br label %181

180:                                              ; preds = %156
  store i32 0, i32* %3, align 4
  br label %205

181:                                              ; preds = %179
  %182 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %183 = call i32 @nitrox_debugfs_exit(%struct.nitrox_device* %182)
  %184 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %185 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %184, i32 0, i32 1
  %186 = load i32, i32* @__NDEV_NOT_READY, align 4
  %187 = call i32 @atomic_set(i32* %185, i32 %186)
  %188 = call i32 (...) @smp_mb__after_atomic()
  br label %189

189:                                              ; preds = %181, %155
  %190 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %191 = call i32 @nitrox_pf_sw_cleanup(%struct.nitrox_device* %190)
  br label %192

192:                                              ; preds = %189, %149, %132
  %193 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %194 = call i32 @nitrox_remove_from_devlist(%struct.nitrox_device* %193)
  %195 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %196 = call i32 @kfree(%struct.nitrox_device* %195)
  %197 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %198 = call i32 @pci_set_drvdata(%struct.pci_dev* %197, %struct.nitrox_device* null)
  br label %199

199:                                              ; preds = %192, %73
  %200 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %201 = call i32 @pci_release_mem_regions(%struct.pci_dev* %200)
  %202 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %203 = call i32 @pci_disable_device(%struct.pci_dev* %202)
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %199, %180, %62, %48, %24, %17
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @dev_info_once(i32*, i8*, i32, i32) #1

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @nitrox_device_flr(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @pci_request_mem_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.nitrox_device* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.nitrox_device*) #1

declare dso_local i32 @nitrox_add_to_devlist(%struct.nitrox_device*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @dev_to_node(i32*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @nitrox_pf_sw_init(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_pf_hw_init(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_debugfs_init(%struct.nitrox_device*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @nitrox_crypto_register(...) #1

declare dso_local i32 @nitrox_debugfs_exit(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_pf_sw_cleanup(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_remove_from_devlist(%struct.nitrox_device*) #1

declare dso_local i32 @kfree(%struct.nitrox_device*) #1

declare dso_local i32 @pci_release_mem_regions(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
