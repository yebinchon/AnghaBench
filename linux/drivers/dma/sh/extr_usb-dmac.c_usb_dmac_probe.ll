; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.dma_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i32, i32 }
%struct.usb_dmac = type { i32, %struct.dma_device, i32*, i32, %struct.TYPE_10__* }
%struct.resource = type { i32 }

@USB_DMAC_SLAVE_BUSWIDTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"runtime PM get sync failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to reset device\0A\00", align 1
@usb_dmac_of_xlate = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_RESIDUE_GRANULARITY_BURST = common dso_local global i32 0, align 4
@usb_dmac_alloc_chan_resources = common dso_local global i32 0, align 4
@usb_dmac_free_chan_resources = common dso_local global i32 0, align 4
@usb_dmac_prep_slave_sg = common dso_local global i32 0, align 4
@usb_dmac_chan_terminate_all = common dso_local global i32 0, align 4
@usb_dmac_tx_status = common dso_local global i32 0, align 4
@usb_dmac_issue_pending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usb_dmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_dmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_device*, align 8
  %6 = alloca %struct.usb_dmac*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @USB_DMAC_SLAVE_BUSWIDTH, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.usb_dmac* @devm_kzalloc(%struct.TYPE_10__* %12, i32 88, i32 %13)
  store %struct.usb_dmac* %14, %struct.usb_dmac** %6, align 8
  %15 = load %struct.usb_dmac*, %struct.usb_dmac** %6, align 8
  %16 = icmp ne %struct.usb_dmac* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %203

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.usb_dmac*, %struct.usb_dmac** %6, align 8
  %24 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %23, i32 0, i32 4
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.usb_dmac*, %struct.usb_dmac** %6, align 8
  %27 = call i32 @platform_set_drvdata(%struct.platform_device* %25, %struct.usb_dmac* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.usb_dmac*, %struct.usb_dmac** %6, align 8
  %31 = call i32 @usb_dmac_parse_of(%struct.TYPE_10__* %29, %struct.usb_dmac* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %2, align 4
  br label %203

36:                                               ; preds = %20
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.usb_dmac*, %struct.usb_dmac** %6, align 8
  %40 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32* @devm_kcalloc(%struct.TYPE_10__* %38, i32 %41, i32 4, i32 %42)
  %44 = load %struct.usb_dmac*, %struct.usb_dmac** %6, align 8
  %45 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = load %struct.usb_dmac*, %struct.usb_dmac** %6, align 8
  %47 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %36
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %203

53:                                               ; preds = %36
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load i32, i32* @IORESOURCE_MEM, align 4
  %56 = call %struct.resource* @platform_get_resource(%struct.platform_device* %54, i32 %55, i32 0)
  store %struct.resource* %56, %struct.resource** %7, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.resource*, %struct.resource** %7, align 8
  %60 = call i32 @devm_ioremap_resource(%struct.TYPE_10__* %58, %struct.resource* %59)
  %61 = load %struct.usb_dmac*, %struct.usb_dmac** %6, align 8
  %62 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.usb_dmac*, %struct.usb_dmac** %6, align 8
  %64 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @IS_ERR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %53
  %69 = load %struct.usb_dmac*, %struct.usb_dmac** %6, align 8
  %70 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @PTR_ERR(i32 %71)
  store i32 %72, i32* %2, align 4
  br label %203

73:                                               ; preds = %53
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 @pm_runtime_enable(%struct.TYPE_10__* %75)
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i32 @pm_runtime_get_sync(%struct.TYPE_10__* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32, i32* %9, align 4
  %86 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %198

87:                                               ; preds = %73
  %88 = load %struct.usb_dmac*, %struct.usb_dmac** %6, align 8
  %89 = call i32 @usb_dmac_init(%struct.usb_dmac* %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %189

96:                                               ; preds = %87
  %97 = load %struct.usb_dmac*, %struct.usb_dmac** %6, align 8
  %98 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %98, i32 0, i32 12
  %100 = call i32 @INIT_LIST_HEAD(i32* %99)
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %121, %96
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.usb_dmac*, %struct.usb_dmac** %6, align 8
  %104 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ult i32 %102, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %101
  %108 = load %struct.usb_dmac*, %struct.usb_dmac** %6, align 8
  %109 = load %struct.usb_dmac*, %struct.usb_dmac** %6, align 8
  %110 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @usb_dmac_chan_probe(%struct.usb_dmac* %108, i32* %114, i32 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  br label %189

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %8, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %101

124:                                              ; preds = %101
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @usb_dmac_of_xlate, align 4
  %130 = call i32 @of_dma_controller_register(i32 %128, i32 %129, i32* null)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  br label %189

134:                                              ; preds = %124
  %135 = load %struct.usb_dmac*, %struct.usb_dmac** %6, align 8
  %136 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %135, i32 0, i32 1
  store %struct.dma_device* %136, %struct.dma_device** %5, align 8
  %137 = load i32, i32* @DMA_SLAVE, align 4
  %138 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %139 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %138, i32 0, i32 11
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @dma_cap_set(i32 %137, i32 %140)
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %145 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %144, i32 0, i32 10
  store %struct.TYPE_10__* %143, %struct.TYPE_10__** %145, align 8
  %146 = load i32, i32* %4, align 4
  %147 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %148 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %4, align 4
  %150 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %151 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %153 = call i32 @BIT(i32 %152)
  %154 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %155 = call i32 @BIT(i32 %154)
  %156 = or i32 %153, %155
  %157 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %158 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* @DMA_RESIDUE_GRANULARITY_BURST, align 4
  %160 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %161 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %160, i32 0, i32 9
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @usb_dmac_alloc_chan_resources, align 4
  %163 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %164 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %163, i32 0, i32 8
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* @usb_dmac_free_chan_resources, align 4
  %166 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %167 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %166, i32 0, i32 7
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @usb_dmac_prep_slave_sg, align 4
  %169 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %170 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* @usb_dmac_chan_terminate_all, align 4
  %172 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %173 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* @usb_dmac_tx_status, align 4
  %175 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %176 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* @usb_dmac_issue_pending, align 4
  %178 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %179 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 4
  %180 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %181 = call i32 @dma_async_device_register(%struct.dma_device* %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %134
  br label %189

185:                                              ; preds = %134
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %186, i32 0, i32 0
  %188 = call i32 @pm_runtime_put(%struct.TYPE_10__* %187)
  store i32 0, i32* %2, align 4
  br label %203

189:                                              ; preds = %184, %133, %119, %92
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @of_dma_controller_free(i32 %193)
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = call i32 @pm_runtime_put(%struct.TYPE_10__* %196)
  br label %198

198:                                              ; preds = %189, %82
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = call i32 @pm_runtime_disable(%struct.TYPE_10__* %200)
  %202 = load i32, i32* %9, align 4
  store i32 %202, i32* %2, align 4
  br label %203

203:                                              ; preds = %198, %185, %68, %50, %34, %17
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local %struct.usb_dmac* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.usb_dmac*) #1

declare dso_local i32 @usb_dmac_parse_of(%struct.TYPE_10__*, %struct.usb_dmac*) #1

declare dso_local i32* @devm_kcalloc(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_10__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_10__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @usb_dmac_init(%struct.usb_dmac*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @usb_dmac_chan_probe(%struct.usb_dmac*, i32*, i32) #1

declare dso_local i32 @of_dma_controller_register(i32, i32, i32*) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dma_async_device_register(%struct.dma_device*) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_10__*) #1

declare dso_local i32 @of_dma_controller_free(i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
