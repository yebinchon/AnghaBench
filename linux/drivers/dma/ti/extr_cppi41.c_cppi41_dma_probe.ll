; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_cppi41_dma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_cppi41_dma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.cppi41_dd = type { i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.device*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.cppi_glue_infos = type { i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@cppi41_dma_alloc_chan_resources = common dso_local global i32 0, align 4
@cppi41_dma_free_chan_resources = common dso_local global i32 0, align 4
@cppi41_dma_tx_status = common dso_local global i32 0, align 4
@cppi41_dma_issue_pending = common dso_local global i32 0, align 4
@cppi41_dma_prep_slave_sg = common dso_local global i32 0, align 4
@cppi41_stop_chan = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@CPPI41_DMA_BUSWIDTHS = common dso_local global i8* null, align 8
@DMA_RESIDUE_GRANULARITY_BURST = common dso_local global i32 0, align 4
@cpp41_dma_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"#dma-channels\00", align 1
@cppi41_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@cppi41_dma_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cppi41_dma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cppi41_dma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cppi41_dd*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.cppi_glue_infos*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.cppi_glue_infos* @get_glue_info(%struct.device* %13)
  store %struct.cppi_glue_infos* %14, %struct.cppi_glue_infos** %6, align 8
  %15 = load %struct.cppi_glue_infos*, %struct.cppi_glue_infos** %6, align 8
  %16 = icmp ne %struct.cppi_glue_infos* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %298

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.cppi41_dd* @devm_kzalloc(%struct.device* %22, i32 136, i32 %23)
  store %struct.cppi41_dd* %24, %struct.cppi41_dd** %4, align 8
  %25 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %26 = icmp ne %struct.cppi41_dd* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %298

30:                                               ; preds = %20
  %31 = load i32, i32* @DMA_SLAVE, align 4
  %32 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %33 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dma_cap_set(i32 %31, i32 %35)
  %37 = load i32, i32* @cppi41_dma_alloc_chan_resources, align 4
  %38 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %39 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 12
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @cppi41_dma_free_chan_resources, align 4
  %42 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %43 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 11
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @cppi41_dma_tx_status, align 4
  %46 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %47 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 10
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @cppi41_dma_issue_pending, align 4
  %50 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %51 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 9
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* @cppi41_dma_prep_slave_sg, align 4
  %54 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %55 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 8
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @cppi41_stop_chan, align 4
  %58 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %59 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 7
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %62 = call i32 @BIT(i32 %61)
  %63 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %64 = call i32 @BIT(i32 %63)
  %65 = or i32 %62, %64
  %66 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %67 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load i8*, i8** @CPPI41_DMA_BUSWIDTHS, align 8
  %70 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %71 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 6
  store i8* %69, i8** %72, align 8
  %73 = load i8*, i8** @CPPI41_DMA_BUSWIDTHS, align 8
  %74 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %75 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 5
  store i8* %73, i8** %76, align 8
  %77 = load i32, i32* @DMA_RESIDUE_GRANULARITY_BURST, align 4
  %78 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %79 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  store i32 %77, i32* %80, align 8
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %83 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  store %struct.device* %81, %struct.device** %84, align 8
  %85 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %86 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = call i32 @INIT_LIST_HEAD(i32* %87)
  %89 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %90 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpp41_dma_info, i32 0, i32 0), align 4
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = getelementptr inbounds %struct.device, %struct.device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @of_property_match_string(i32 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %30
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %2, align 4
  br label %298

101:                                              ; preds = %30
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load i32, i32* @IORESOURCE_MEM, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call %struct.resource* @platform_get_resource(%struct.platform_device* %102, i32 %103, i32 %104)
  store %struct.resource* %105, %struct.resource** %7, align 8
  %106 = load %struct.device*, %struct.device** %5, align 8
  %107 = load %struct.resource*, %struct.resource** %7, align 8
  %108 = call i8* @devm_ioremap_resource(%struct.device* %106, %struct.resource* %107)
  %109 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %110 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %109, i32 0, i32 12
  store i8* %108, i8** %110, align 8
  %111 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %112 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %111, i32 0, i32 12
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @IS_ERR(i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %101
  %117 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %118 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %117, i32 0, i32 12
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @PTR_ERR(i8* %119)
  store i32 %120, i32* %2, align 4
  br label %298

121:                                              ; preds = %101
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = load i32, i32* @IORESOURCE_MEM, align 4
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  %126 = call %struct.resource* @platform_get_resource(%struct.platform_device* %122, i32 %123, i32 %125)
  store %struct.resource* %126, %struct.resource** %7, align 8
  %127 = load %struct.device*, %struct.device** %5, align 8
  %128 = load %struct.resource*, %struct.resource** %7, align 8
  %129 = call i8* @devm_ioremap_resource(%struct.device* %127, %struct.resource* %128)
  %130 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %131 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %130, i32 0, i32 11
  store i8* %129, i8** %131, align 8
  %132 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %133 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %132, i32 0, i32 11
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @IS_ERR(i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %121
  %138 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %139 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %138, i32 0, i32 11
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @PTR_ERR(i8* %140)
  store i32 %141, i32* %2, align 4
  br label %298

142:                                              ; preds = %121
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = load i32, i32* @IORESOURCE_MEM, align 4
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 2
  %147 = call %struct.resource* @platform_get_resource(%struct.platform_device* %143, i32 %144, i32 %146)
  store %struct.resource* %147, %struct.resource** %7, align 8
  %148 = load %struct.device*, %struct.device** %5, align 8
  %149 = load %struct.resource*, %struct.resource** %7, align 8
  %150 = call i8* @devm_ioremap_resource(%struct.device* %148, %struct.resource* %149)
  %151 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %152 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %151, i32 0, i32 10
  store i8* %150, i8** %152, align 8
  %153 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %154 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %153, i32 0, i32 10
  %155 = load i8*, i8** %154, align 8
  %156 = call i64 @IS_ERR(i8* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %142
  %159 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %160 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %159, i32 0, i32 10
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @PTR_ERR(i8* %161)
  store i32 %162, i32* %2, align 4
  br label %298

163:                                              ; preds = %142
  %164 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %165 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %164, i32 0, i32 9
  %166 = call i32 @spin_lock_init(i32* %165)
  %167 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %168 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %167, i32 0, i32 8
  %169 = call i32 @INIT_LIST_HEAD(i32* %168)
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %172 = call i32 @platform_set_drvdata(%struct.platform_device* %170, %struct.cppi41_dd* %171)
  %173 = load %struct.device*, %struct.device** %5, align 8
  %174 = call i32 @pm_runtime_enable(%struct.device* %173)
  %175 = load %struct.device*, %struct.device** %5, align 8
  %176 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %175, i32 100)
  %177 = load %struct.device*, %struct.device** %5, align 8
  %178 = call i32 @pm_runtime_use_autosuspend(%struct.device* %177)
  %179 = load %struct.device*, %struct.device** %5, align 8
  %180 = call i32 @pm_runtime_get_sync(%struct.device* %179)
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %163
  br label %292

184:                                              ; preds = %163
  %185 = load %struct.cppi_glue_infos*, %struct.cppi_glue_infos** %6, align 8
  %186 = getelementptr inbounds %struct.cppi_glue_infos, %struct.cppi_glue_infos* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %189 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %188, i32 0, i32 7
  store i32 %187, i32* %189, align 4
  %190 = load %struct.cppi_glue_infos*, %struct.cppi_glue_infos** %6, align 8
  %191 = getelementptr inbounds %struct.cppi_glue_infos, %struct.cppi_glue_infos* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %194 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %193, i32 0, i32 6
  store i32 %192, i32* %194, align 8
  %195 = load %struct.cppi_glue_infos*, %struct.cppi_glue_infos** %6, align 8
  %196 = getelementptr inbounds %struct.cppi_glue_infos, %struct.cppi_glue_infos* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %199 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %198, i32 0, i32 5
  store i32 %197, i32* %199, align 4
  %200 = load %struct.cppi_glue_infos*, %struct.cppi_glue_infos** %6, align 8
  %201 = getelementptr inbounds %struct.cppi_glue_infos, %struct.cppi_glue_infos* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %204 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 8
  %205 = load %struct.cppi_glue_infos*, %struct.cppi_glue_infos** %6, align 8
  %206 = getelementptr inbounds %struct.cppi_glue_infos, %struct.cppi_glue_infos* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %209 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 4
  %210 = load %struct.device*, %struct.device** %5, align 8
  %211 = getelementptr inbounds %struct.device, %struct.device* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %214 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %213, i32 0, i32 2
  %215 = call i32 @of_property_read_u32(i32 %212, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %214)
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %184
  br label %291

219:                                              ; preds = %184
  %220 = load %struct.device*, %struct.device** %5, align 8
  %221 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %222 = call i32 @init_cppi41(%struct.device* %220, %struct.cppi41_dd* %221)
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %10, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %219
  br label %288

226:                                              ; preds = %219
  %227 = load %struct.device*, %struct.device** %5, align 8
  %228 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %229 = call i32 @cppi41_add_chans(%struct.device* %227, %struct.cppi41_dd* %228)
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  br label %284

233:                                              ; preds = %226
  %234 = load %struct.device*, %struct.device** %5, align 8
  %235 = getelementptr inbounds %struct.device, %struct.device* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @irq_of_parse_and_map(i32 %236, i32 0)
  store i32 %237, i32* %9, align 4
  %238 = load i32, i32* %9, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %233
  %241 = load i32, i32* @EINVAL, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %10, align 4
  br label %284

243:                                              ; preds = %233
  %244 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %245 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %244, i32 0, i32 0
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* @cppi41_irq, align 4
  %248 = load i32, i32* @IRQF_SHARED, align 4
  %249 = load %struct.device*, %struct.device** %5, align 8
  %250 = call i32 @dev_name(%struct.device* %249)
  %251 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %252 = call i32 @devm_request_irq(%struct.device* %245, i32 %246, i32 %247, i32 %248, i32 %250, %struct.cppi41_dd* %251)
  store i32 %252, i32* %10, align 4
  %253 = load i32, i32* %10, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %243
  br label %284

256:                                              ; preds = %243
  %257 = load i32, i32* %9, align 4
  %258 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %259 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %258, i32 0, i32 0
  store i32 %257, i32* %259, align 8
  %260 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %261 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %260, i32 0, i32 1
  %262 = call i32 @dma_async_device_register(%struct.TYPE_6__* %261)
  store i32 %262, i32* %10, align 4
  %263 = load i32, i32* %10, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %256
  br label %284

266:                                              ; preds = %256
  %267 = load %struct.device*, %struct.device** %5, align 8
  %268 = getelementptr inbounds %struct.device, %struct.device* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @cppi41_dma_xlate, align 4
  %271 = call i32 @of_dma_controller_register(i32 %269, i32 %270, %struct.TYPE_5__* @cpp41_dma_info)
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* %10, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %266
  br label %280

275:                                              ; preds = %266
  %276 = load %struct.device*, %struct.device** %5, align 8
  %277 = call i32 @pm_runtime_mark_last_busy(%struct.device* %276)
  %278 = load %struct.device*, %struct.device** %5, align 8
  %279 = call i32 @pm_runtime_put_autosuspend(%struct.device* %278)
  store i32 0, i32* %2, align 4
  br label %298

280:                                              ; preds = %274
  %281 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %282 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %281, i32 0, i32 1
  %283 = call i32 @dma_async_device_unregister(%struct.TYPE_6__* %282)
  br label %284

284:                                              ; preds = %280, %265, %255, %240, %232
  %285 = load %struct.device*, %struct.device** %5, align 8
  %286 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %287 = call i32 @deinit_cppi41(%struct.device* %285, %struct.cppi41_dd* %286)
  br label %288

288:                                              ; preds = %284, %225
  %289 = load %struct.device*, %struct.device** %5, align 8
  %290 = call i32 @pm_runtime_dont_use_autosuspend(%struct.device* %289)
  br label %291

291:                                              ; preds = %288, %218
  br label %292

292:                                              ; preds = %291, %183
  %293 = load %struct.device*, %struct.device** %5, align 8
  %294 = call i32 @pm_runtime_put_sync(%struct.device* %293)
  %295 = load %struct.device*, %struct.device** %5, align 8
  %296 = call i32 @pm_runtime_disable(%struct.device* %295)
  %297 = load i32, i32* %10, align 4
  store i32 %297, i32* %2, align 4
  br label %298

298:                                              ; preds = %292, %275, %158, %137, %116, %99, %27, %17
  %299 = load i32, i32* %2, align 4
  ret i32 %299
}

declare dso_local %struct.cppi_glue_infos* @get_glue_info(%struct.device*) #1

declare dso_local %struct.cppi41_dd* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @of_property_match_string(i32, i8*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cppi41_dd*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @init_cppi41(%struct.device*, %struct.cppi41_dd*) #1

declare dso_local i32 @cppi41_add_chans(%struct.device*, %struct.cppi41_dd*) #1

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.cppi41_dd*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dma_async_device_register(%struct.TYPE_6__*) #1

declare dso_local i32 @of_dma_controller_register(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

declare dso_local i32 @dma_async_device_unregister(%struct.TYPE_6__*) #1

declare dso_local i32 @deinit_cppi41(%struct.device*, %struct.cppi41_dd*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
