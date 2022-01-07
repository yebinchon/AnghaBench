; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.zynqmp_dma_device = type { %struct.TYPE_17__*, %struct.TYPE_18__*, %struct.dma_device, i8*, i8* }
%struct.TYPE_18__ = type { i32 }
%struct.dma_device = type { i8*, i8*, %struct.TYPE_17__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@zynqmp_dma_prep_memcpy = common dso_local global i32 0, align 4
@zynqmp_dma_device_terminate_all = common dso_local global i32 0, align 4
@zynqmp_dma_issue_pending = common dso_local global i32 0, align 4
@zynqmp_dma_alloc_chan_resources = common dso_local global i32 0, align 4
@zynqmp_dma_free_chan_resources = common dso_local global i32 0, align 4
@dma_cookie_status = common dso_local global i32 0, align 4
@zynqmp_dma_device_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"clk_main\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"main clock not found.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"clk_apb\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"apb clock not found.\0A\00", align 1
@ZDMA_PM_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Probing channel failed\0A\00", align 1
@of_zynqmp_dma_xlate = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Unable to register DMA to DT\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"ZynqMP DMA driver Probe success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zynqmp_dma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_dma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.zynqmp_dma_device*, align 8
  %5 = alloca %struct.dma_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.zynqmp_dma_device* @devm_kzalloc(%struct.TYPE_17__* %8, i32 96, i32 %9)
  store %struct.zynqmp_dma_device* %10, %struct.zynqmp_dma_device** %4, align 8
  %11 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %12 = icmp ne %struct.zynqmp_dma_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %217

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %20 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %19, i32 0, i32 0
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %20, align 8
  %21 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %22 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %22, i32 0, i32 11
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @DMA_BIT_MASK(i32 44)
  %28 = call i32 @dma_set_mask(%struct.TYPE_17__* %26, i32 %27)
  %29 = load i32, i32* @DMA_MEMCPY, align 4
  %30 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %31 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dma_cap_set(i32 %29, i32 %33)
  %35 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %36 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %35, i32 0, i32 2
  store %struct.dma_device* %36, %struct.dma_device** %5, align 8
  %37 = load i32, i32* @zynqmp_dma_prep_memcpy, align 4
  %38 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %39 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @zynqmp_dma_device_terminate_all, align 4
  %41 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %42 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @zynqmp_dma_issue_pending, align 4
  %44 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %45 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @zynqmp_dma_alloc_chan_resources, align 4
  %47 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %48 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @zynqmp_dma_free_chan_resources, align 4
  %50 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %51 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @dma_cookie_status, align 4
  %53 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %54 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @zynqmp_dma_device_config, align 4
  %56 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %57 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %61 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %60, i32 0, i32 2
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i8* @devm_clk_get(%struct.TYPE_17__* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %66 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %68 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %67, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @IS_ERR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %16
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @dev_err(%struct.TYPE_17__* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %77 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %76, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @PTR_ERR(i8* %78)
  store i32 %79, i32* %2, align 4
  br label %217

80:                                               ; preds = %16
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i8* @devm_clk_get(%struct.TYPE_17__* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %85 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %87 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @IS_ERR(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %80
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @dev_err(%struct.TYPE_17__* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %95 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %96 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @PTR_ERR(i8* %97)
  store i32 %98, i32* %2, align 4
  br label %217

99:                                               ; preds = %80
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %102 = call i32 @platform_set_drvdata(%struct.platform_device* %100, %struct.zynqmp_dma_device* %101)
  %103 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %104 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %103, i32 0, i32 0
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = load i32, i32* @ZDMA_PM_TIMEOUT, align 4
  %107 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_17__* %105, i32 %106)
  %108 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %109 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %108, i32 0, i32 0
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_17__* %110)
  %112 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %113 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %112, i32 0, i32 0
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = call i32 @pm_runtime_enable(%struct.TYPE_17__* %114)
  %116 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %117 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %116, i32 0, i32 0
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %117, align 8
  %119 = call i32 @pm_runtime_get_sync(%struct.TYPE_17__* %118)
  %120 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %121 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %120, i32 0, i32 0
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = call i32 @pm_runtime_enabled(%struct.TYPE_17__* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %99
  %126 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %127 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %126, i32 0, i32 0
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = call i32 @zynqmp_dma_runtime_resume(%struct.TYPE_17__* %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %217

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %99
  %136 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = call i32 @zynqmp_dma_chan_probe(%struct.zynqmp_dma_device* %136, %struct.platform_device* %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @dev_err(%struct.TYPE_17__* %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %200

145:                                              ; preds = %135
  %146 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %147 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %146, i32 0, i32 1
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sdiv i32 %150, 8
  %152 = call i8* @BIT(i32 %151)
  %153 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %154 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  %155 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %156 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %155, i32 0, i32 1
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sdiv i32 %159, 8
  %161 = call i8* @BIT(i32 %160)
  %162 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %163 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  %164 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %165 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %164, i32 0, i32 2
  %166 = call i32 @dma_async_device_register(%struct.dma_device* %165)
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @of_zynqmp_dma_xlate, align 4
  %172 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %173 = call i32 @of_dma_controller_register(i32 %170, i32 %171, %struct.zynqmp_dma_device* %172)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %145
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = call i32 @dev_err(%struct.TYPE_17__* %178, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %180 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %181 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %180, i32 0, i32 2
  %182 = call i32 @dma_async_device_unregister(%struct.dma_device* %181)
  br label %195

183:                                              ; preds = %145
  %184 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %185 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %184, i32 0, i32 0
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %185, align 8
  %187 = call i32 @pm_runtime_mark_last_busy(%struct.TYPE_17__* %186)
  %188 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %189 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %188, i32 0, i32 0
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %189, align 8
  %191 = call i32 @pm_runtime_put_sync_autosuspend(%struct.TYPE_17__* %190)
  %192 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %193 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %192, i32 0, i32 0
  %194 = call i32 @dev_info(%struct.TYPE_17__* %193, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %217

195:                                              ; preds = %176
  %196 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %197 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %196, i32 0, i32 1
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %197, align 8
  %199 = call i32 @zynqmp_dma_chan_remove(%struct.TYPE_18__* %198)
  br label %200

200:                                              ; preds = %195, %141
  %201 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %202 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %201, i32 0, i32 0
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %202, align 8
  %204 = call i32 @pm_runtime_enabled(%struct.TYPE_17__* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %200
  %207 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %208 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %207, i32 0, i32 0
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %208, align 8
  %210 = call i32 @zynqmp_dma_runtime_suspend(%struct.TYPE_17__* %209)
  br label %211

211:                                              ; preds = %206, %200
  %212 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %213 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %212, i32 0, i32 0
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %213, align 8
  %215 = call i32 @pm_runtime_disable(%struct.TYPE_17__* %214)
  %216 = load i32, i32* %6, align 4
  store i32 %216, i32* %2, align 4
  br label %217

217:                                              ; preds = %211, %183, %132, %91, %72, %13
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local %struct.zynqmp_dma_device* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_set_mask(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_17__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.zynqmp_dma_device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_17__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_17__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_17__*) #1

declare dso_local i32 @pm_runtime_enabled(%struct.TYPE_17__*) #1

declare dso_local i32 @zynqmp_dma_runtime_resume(%struct.TYPE_17__*) #1

declare dso_local i32 @zynqmp_dma_chan_probe(%struct.zynqmp_dma_device*, %struct.platform_device*) #1

declare dso_local i8* @BIT(i32) #1

declare dso_local i32 @dma_async_device_register(%struct.dma_device*) #1

declare dso_local i32 @of_dma_controller_register(i32, i32, %struct.zynqmp_dma_device*) #1

declare dso_local i32 @dma_async_device_unregister(%struct.dma_device*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.TYPE_17__*) #1

declare dso_local i32 @pm_runtime_put_sync_autosuspend(%struct.TYPE_17__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @zynqmp_dma_chan_remove(%struct.TYPE_18__*) #1

declare dso_local i32 @zynqmp_dma_runtime_suspend(%struct.TYPE_17__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
