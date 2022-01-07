; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_pxad_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_pxad_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.pxad_device = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_12__*, i32, i32, %struct.TYPE_10__, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.dma_slave_map* }
%struct.dma_slave_map = type { i32 }
%struct.of_device_id = type { i32 }
%struct.mmp_dma_platdata = type { i32, i32, i32, %struct.dma_slave_map* }
%struct.resource = type { i32 }

@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@pxad_dt_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"#dma-channels\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"#dma-requests\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"#dma-requests set to default 32 as missing in OF: %d\00", align 1
@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@DMA_CYCLIC = common dso_local global i32 0, align 4
@DMA_PRIVATE = common dso_local global i32 0, align 4
@pxad_prep_memcpy = common dso_local global i32 0, align 4
@pxad_prep_slave_sg = common dso_local global i32 0, align 4
@pxad_prep_dma_cyclic = common dso_local global i32 0, align 4
@pxad_filter_fn = common dso_local global i32 0, align 4
@PDMA_ALIGNMENT = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_RESIDUE_GRANULARITY_DESCRIPTOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"unable to register\0A\00", align 1
@pxad_dma_xlate = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"of_dma_controller_register failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"initialized %d channels on %d requestors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxad_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxad_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pxad_device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.dma_slave_map*, align 8
  %7 = alloca %struct.mmp_dma_platdata*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.dma_slave_map* null, %struct.dma_slave_map** %6, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.mmp_dma_platdata* @dev_get_platdata(%struct.TYPE_12__* %15)
  store %struct.mmp_dma_platdata* %16, %struct.mmp_dma_platdata** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  %18 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %13, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.pxad_device* @devm_kzalloc(%struct.TYPE_12__* %23, i32 72, i32 %24)
  store %struct.pxad_device* %25, %struct.pxad_device** %4, align 8
  %26 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %27 = icmp ne %struct.pxad_device* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %240

31:                                               ; preds = %1
  %32 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %33 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %32, i32 0, i32 2
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = call %struct.resource* @platform_get_resource(%struct.platform_device* %35, i32 %36, i32 0)
  store %struct.resource* %37, %struct.resource** %8, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.resource*, %struct.resource** %8, align 8
  %41 = call i32 @devm_ioremap_resource(%struct.TYPE_12__* %39, %struct.resource* %40)
  %42 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %43 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %45 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %31
  %50 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %51 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %240

54:                                               ; preds = %31
  %55 = load i32, i32* @pxad_dt_ids, align 4
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call %struct.of_device_id* @of_match_device(i32 %55, %struct.TYPE_12__* %57)
  store %struct.of_device_id* %58, %struct.of_device_id** %5, align 8
  %59 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %60 = icmp ne %struct.of_device_id* %59, null
  br i1 %60, label %61, label %82

61:                                               ; preds = %54
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @of_property_read_u32(i64 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %10)
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @of_property_read_u32(i64 %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %61
  %75 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %76 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @dev_warn(%struct.TYPE_12__* %78, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  store i32 32, i32* %11, align 4
  br label %81

81:                                               ; preds = %74, %61
  br label %105

82:                                               ; preds = %54
  %83 = load %struct.mmp_dma_platdata*, %struct.mmp_dma_platdata** %7, align 8
  %84 = icmp ne %struct.mmp_dma_platdata* %83, null
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = load %struct.mmp_dma_platdata*, %struct.mmp_dma_platdata** %7, align 8
  %87 = getelementptr inbounds %struct.mmp_dma_platdata, %struct.mmp_dma_platdata* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load %struct.mmp_dma_platdata*, %struct.mmp_dma_platdata** %7, align 8
  %92 = getelementptr inbounds %struct.mmp_dma_platdata, %struct.mmp_dma_platdata* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %10, align 4
  %94 = load %struct.mmp_dma_platdata*, %struct.mmp_dma_platdata** %7, align 8
  %95 = getelementptr inbounds %struct.mmp_dma_platdata, %struct.mmp_dma_platdata* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %11, align 4
  %97 = load %struct.mmp_dma_platdata*, %struct.mmp_dma_platdata** %7, align 8
  %98 = getelementptr inbounds %struct.mmp_dma_platdata, %struct.mmp_dma_platdata* %97, i32 0, i32 3
  %99 = load %struct.dma_slave_map*, %struct.dma_slave_map** %98, align 8
  store %struct.dma_slave_map* %99, %struct.dma_slave_map** %6, align 8
  %100 = load %struct.mmp_dma_platdata*, %struct.mmp_dma_platdata** %7, align 8
  %101 = getelementptr inbounds %struct.mmp_dma_platdata, %struct.mmp_dma_platdata* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %12, align 4
  br label %104

103:                                              ; preds = %85, %82
  store i32 32, i32* %10, align 4
  br label %104

104:                                              ; preds = %103, %90
  br label %105

105:                                              ; preds = %104, %81
  %106 = load i32, i32* @DMA_SLAVE, align 4
  %107 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %108 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 11
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dma_cap_set(i32 %106, i32 %110)
  %112 = load i32, i32* @DMA_MEMCPY, align 4
  %113 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %114 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 11
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @dma_cap_set(i32 %112, i32 %116)
  %118 = load i32, i32* @DMA_CYCLIC, align 4
  %119 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %120 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 11
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @dma_cap_set(i32 %118, i32 %122)
  %124 = load i32, i32* @DMA_PRIVATE, align 4
  %125 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %126 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 11
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @dma_cap_set(i32 %124, i32 %128)
  %130 = load i32, i32* @pxad_prep_memcpy, align 4
  %131 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %132 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 10
  store i32 %130, i32* %133, align 8
  %134 = load i32, i32* @pxad_prep_slave_sg, align 4
  %135 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %136 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 9
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* @pxad_prep_dma_cyclic, align 4
  %139 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %140 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 8
  store i32 %138, i32* %141, align 8
  %142 = load %struct.dma_slave_map*, %struct.dma_slave_map** %6, align 8
  %143 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %144 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 7
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  store %struct.dma_slave_map* %142, %struct.dma_slave_map** %146, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %149 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 7
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  store i32 %147, i32* %151, align 8
  %152 = load i32, i32* @pxad_filter_fn, align 4
  %153 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %154 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 7
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  store i32 %152, i32* %156, align 4
  %157 = load i32, i32* @PDMA_ALIGNMENT, align 4
  %158 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %159 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 6
  store i32 %157, i32* %160, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %163 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %167 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  store i32 %165, i32* %168, align 4
  %169 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %170 = call i32 @BIT(i32 %169)
  %171 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %172 = call i32 @BIT(i32 %171)
  %173 = or i32 %170, %172
  %174 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %175 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 2
  store i32 %173, i32* %176, align 8
  %177 = load i32, i32* @DMA_RESIDUE_GRANULARITY_DESCRIPTOR, align 4
  %178 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %179 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 5
  store i32 %177, i32* %180, align 8
  %181 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %182 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 3
  store i32 1, i32* %183, align 4
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %187 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 4
  store %struct.TYPE_12__* %185, %struct.TYPE_12__** %188, align 8
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @pxad_init_dmadev(%struct.platform_device* %189, %struct.pxad_device* %190, i32 %191, i32 %192)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %105
  %197 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %198 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %199, align 8
  %201 = call i32 @dev_err(%struct.TYPE_12__* %200, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %202 = load i32, i32* %9, align 4
  store i32 %202, i32* %2, align 4
  br label %240

203:                                              ; preds = %105
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %227

209:                                              ; preds = %203
  %210 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %211 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* @pxad_dma_xlate, align 4
  %215 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %216 = call i32 @of_dma_controller_register(i64 %213, i32 %214, %struct.pxad_device* %215)
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %209
  %220 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %221 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 4
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %222, align 8
  %224 = call i32 @dev_err(%struct.TYPE_12__* %223, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %225 = load i32, i32* %9, align 4
  store i32 %225, i32* %2, align 4
  br label %240

226:                                              ; preds = %209
  br label %227

227:                                              ; preds = %226, %203
  %228 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %229 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %230 = call i32 @platform_set_drvdata(%struct.platform_device* %228, %struct.pxad_device* %229)
  %231 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %232 = call i32 @pxad_init_debugfs(%struct.pxad_device* %231)
  %233 = load %struct.pxad_device*, %struct.pxad_device** %4, align 8
  %234 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 4
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %235, align 8
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* %11, align 4
  %239 = call i32 @dev_info(%struct.TYPE_12__* %236, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %237, i32 %238)
  store i32 0, i32* %2, align 4
  br label %240

240:                                              ; preds = %227, %219, %196, %49, %28
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local %struct.mmp_dma_platdata* @dev_get_platdata(%struct.TYPE_12__*) #1

declare dso_local %struct.pxad_device* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @of_property_read_u32(i64, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pxad_init_dmadev(%struct.platform_device*, %struct.pxad_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @of_dma_controller_register(i64, i32, %struct.pxad_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pxad_device*) #1

declare dso_local i32 @pxad_init_debugfs(%struct.pxad_device*) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
