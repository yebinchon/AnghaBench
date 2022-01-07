; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_chan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_chan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_dma_device = type { %struct.TYPE_7__, %struct.zynqmp_dma_chan*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 }
%struct.zynqmp_dma_chan = type { i64, i64, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.zynqmp_dma_device*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ZYNQMP_DMA_BUS_WIDTH_64 = common dso_local global i64 0, align 8
@ZYNQMP_DMA_AWLEN_RST_VAL = common dso_local global i32 0, align 4
@ZYNQMP_DMA_ARLEN_RST_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"xlnx,bus-width\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"missing xlnx,bus-width property\0A\00", align 1
@ZYNQMP_DMA_BUS_WIDTH_128 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"invalid bus-width value\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"dma-coherent\00", align 1
@zynqmp_dma_do_tasklet = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@zynqmp_dma_irq_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"zynqmp-dma\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zynqmp_dma_device*, %struct.platform_device*)* @zynqmp_dma_chan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_dma_chan_probe(%struct.zynqmp_dma_device* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zynqmp_dma_device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.zynqmp_dma_chan*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  store %struct.zynqmp_dma_device* %0, %struct.zynqmp_dma_device** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %8, align 8
  %14 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %15 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.zynqmp_dma_chan* @devm_kzalloc(%struct.TYPE_9__* %16, i32 96, i32 %17)
  store %struct.zynqmp_dma_chan* %18, %struct.zynqmp_dma_chan** %6, align 8
  %19 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %20 = icmp ne %struct.zynqmp_dma_chan* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %167

24:                                               ; preds = %2
  %25 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %26 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %29 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %28, i32 0, i32 16
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %29, align 8
  %30 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %31 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %32 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %31, i32 0, i32 15
  store %struct.zynqmp_dma_device* %30, %struct.zynqmp_dma_device** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %7, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.resource*, %struct.resource** %7, align 8
  %39 = call i32 @devm_ioremap_resource(%struct.TYPE_9__* %37, %struct.resource* %38)
  %40 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %41 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %40, i32 0, i32 14
  store i32 %39, i32* %41, align 4
  %42 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %43 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %42, i32 0, i32 14
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %24
  %48 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %49 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %48, i32 0, i32 14
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %3, align 4
  br label %167

52:                                               ; preds = %24
  %53 = load i64, i64* @ZYNQMP_DMA_BUS_WIDTH_64, align 8
  %54 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %55 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* @ZYNQMP_DMA_AWLEN_RST_VAL, align 4
  %57 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %58 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %57, i32 0, i32 13
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @ZYNQMP_DMA_ARLEN_RST_VAL, align 4
  %60 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %61 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %60, i32 0, i32 12
  store i32 %59, i32* %61, align 4
  %62 = load %struct.device_node*, %struct.device_node** %8, align 8
  %63 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %64 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %63, i32 0, i32 0
  %65 = call i32 @of_property_read_u32(%struct.device_node* %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %52
  %69 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_err(%struct.TYPE_9__* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %167

73:                                               ; preds = %52
  %74 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %75 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ZYNQMP_DMA_BUS_WIDTH_64, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %81 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ZYNQMP_DMA_BUS_WIDTH_128, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %87 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = call i32 @dev_err(%struct.TYPE_9__* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %167

92:                                               ; preds = %79, %73
  %93 = load %struct.device_node*, %struct.device_node** %8, align 8
  %94 = call i32 @of_property_read_bool(%struct.device_node* %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %95 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %96 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %95, i32 0, i32 11
  store i32 %94, i32* %96, align 8
  %97 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %98 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %99 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %98, i32 0, i32 1
  store %struct.zynqmp_dma_chan* %97, %struct.zynqmp_dma_chan** %99, align 8
  %100 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %101 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %100, i32 0, i32 10
  %102 = load i32, i32* @zynqmp_dma_do_tasklet, align 4
  %103 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %104 = ptrtoint %struct.zynqmp_dma_chan* %103 to i32
  %105 = call i32 @tasklet_init(i32* %101, i32 %102, i32 %104)
  %106 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %107 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %106, i32 0, i32 9
  %108 = call i32 @spin_lock_init(i32* %107)
  %109 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %110 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %109, i32 0, i32 8
  %111 = call i32 @INIT_LIST_HEAD(i32* %110)
  %112 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %113 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %112, i32 0, i32 7
  %114 = call i32 @INIT_LIST_HEAD(i32* %113)
  %115 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %116 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %115, i32 0, i32 6
  %117 = call i32 @INIT_LIST_HEAD(i32* %116)
  %118 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %119 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %118, i32 0, i32 5
  %120 = call i32 @INIT_LIST_HEAD(i32* %119)
  %121 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %122 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %121, i32 0, i32 4
  %123 = call i32 @dma_cookie_init(%struct.TYPE_8__* %122)
  %124 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %125 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %124, i32 0, i32 0
  %126 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %127 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  store %struct.TYPE_7__* %125, %struct.TYPE_7__** %128, align 8
  %129 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %130 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load %struct.zynqmp_dma_device*, %struct.zynqmp_dma_device** %4, align 8
  %133 = getelementptr inbounds %struct.zynqmp_dma_device, %struct.zynqmp_dma_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = call i32 @list_add_tail(i32* %131, i32* %134)
  %136 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %137 = call i32 @zynqmp_dma_init(%struct.zynqmp_dma_chan* %136)
  %138 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %139 = call i64 @platform_get_irq(%struct.platform_device* %138, i32 0)
  %140 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %141 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %143 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %92
  %147 = load i32, i32* @ENXIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %167

149:                                              ; preds = %92
  %150 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %153 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* @zynqmp_dma_irq_handler, align 4
  %156 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %157 = call i32 @devm_request_irq(%struct.TYPE_9__* %151, i64 %154, i32 %155, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.zynqmp_dma_chan* %156)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %149
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %3, align 4
  br label %167

162:                                              ; preds = %149
  %163 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %164 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %163, i32 0, i32 2
  store i32 4, i32* %164, align 8
  %165 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %6, align 8
  %166 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %165, i32 0, i32 3
  store i32 1, i32* %166, align 4
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %162, %160, %146, %85, %68, %47, %21
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local %struct.zynqmp_dma_chan* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_9__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_cookie_init(%struct.TYPE_8__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @zynqmp_dma_init(%struct.zynqmp_dma_chan*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_9__*, i64, i32, i32, i8*, %struct.zynqmp_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
