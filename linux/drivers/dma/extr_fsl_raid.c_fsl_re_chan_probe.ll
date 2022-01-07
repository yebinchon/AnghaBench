; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl_raid.c_fsl_re_chan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl_raid.c_fsl_re_chan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.fsl_re_drv_private = type { i32, %struct.fsl_re_chan**, i64, %struct.dma_device }
%struct.fsl_re_chan = type { i32, i32, i8*, %struct.fsl_re_drv_private*, %struct.fsl_re_chan_cfg*, i8*, i32, i32, i32, i32, i32, %struct.device*, %struct.TYPE_2__, i32, i32, i32 }
%struct.fsl_re_chan_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.fsl_re_chan*, %struct.dma_device* }
%struct.dma_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Not able to create ofdev for jr %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Reg property not found in jr %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"No IRQ defined for JR %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"re_jr%02d\00", align 1
@fsl_re_dequeue = common dso_local global i32 0, align 4
@fsl_re_isr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Unable to register interrupt for JR %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"No dma memory for inb_ring_virt_addr\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"No dma memory for oub_ring_virt_addr\0A\00", align 1
@FSL_RE_ADDR_BIT_MASK = common dso_local global i32 0, align 4
@FSL_RE_ADDR_BIT_SHIFT = common dso_local global i32 0, align 4
@FSL_RE_RING_SIZE = common dso_local global i32 0, align 4
@FSL_RE_RING_SIZE_SHIFT = common dso_local global i32 0, align 4
@FSL_RE_REG_LIODN_MASK = common dso_local global i32 0, align 4
@FSL_RE_CFG1_CBSI = common dso_local global i32 0, align 4
@FSL_RE_CFG1_CBS0 = common dso_local global i32 0, align 4
@FSL_RE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.device_node*, i32, i32)* @fsl_re_chan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_re_chan_probe(%struct.platform_device* %0, %struct.device_node* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.fsl_re_drv_private*, align 8
  %13 = alloca %struct.fsl_re_chan*, align 8
  %14 = alloca %struct.dma_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %10, align 8
  %22 = load %struct.device*, %struct.device** %10, align 8
  %23 = call %struct.fsl_re_drv_private* @dev_get_drvdata(%struct.device* %22)
  store %struct.fsl_re_drv_private* %23, %struct.fsl_re_drv_private** %12, align 8
  %24 = load %struct.fsl_re_drv_private*, %struct.fsl_re_drv_private** %12, align 8
  %25 = getelementptr inbounds %struct.fsl_re_drv_private, %struct.fsl_re_drv_private* %24, i32 0, i32 3
  store %struct.dma_device* %25, %struct.dma_device** %14, align 8
  %26 = load %struct.device*, %struct.device** %10, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.fsl_re_chan* @devm_kzalloc(%struct.device* %26, i32 104, i32 %27)
  store %struct.fsl_re_chan* %28, %struct.fsl_re_chan** %13, align 8
  %29 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %30 = icmp ne %struct.fsl_re_chan* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %292

34:                                               ; preds = %4
  %35 = load %struct.device_node*, %struct.device_node** %7, align 8
  %36 = load %struct.device*, %struct.device** %10, align 8
  %37 = call %struct.platform_device* @of_platform_device_create(%struct.device_node* %35, i32* null, %struct.device* %36)
  store %struct.platform_device* %37, %struct.platform_device** %19, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %19, align 8
  %39 = icmp ne %struct.platform_device* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.device*, %struct.device** %10, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %17, align 4
  br label %290

46:                                               ; preds = %34
  %47 = load %struct.device_node*, %struct.device_node** %7, align 8
  %48 = call i32 @of_property_read_u32(%struct.device_node* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %15)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.device*, %struct.device** %10, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %17, align 4
  br label %290

57:                                               ; preds = %46
  %58 = load %struct.fsl_re_drv_private*, %struct.fsl_re_drv_private** %12, align 8
  %59 = getelementptr inbounds %struct.fsl_re_drv_private, %struct.fsl_re_drv_private* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = bitcast i32* %67 to %struct.fsl_re_chan_cfg*
  %69 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %70 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %69, i32 0, i32 4
  store %struct.fsl_re_chan_cfg* %68, %struct.fsl_re_chan_cfg** %70, align 8
  %71 = load %struct.device_node*, %struct.device_node** %7, align 8
  %72 = call i32 @irq_of_parse_and_map(%struct.device_node* %71, i32 0)
  %73 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %74 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %73, i32 0, i32 14
  store i32 %72, i32* %74, align 4
  %75 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %76 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %75, i32 0, i32 14
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %57
  %80 = load %struct.device*, %struct.device** %10, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %17, align 4
  br label %290

85:                                               ; preds = %57
  %86 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %87 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %86, i32 0, i32 13
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @snprintf(i32 %88, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load %struct.platform_device*, %struct.platform_device** %19, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  store %struct.device* %92, %struct.device** %11, align 8
  %93 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %94 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %93, i32 0, i32 15
  %95 = load i32, i32* @fsl_re_dequeue, align 4
  %96 = load %struct.device*, %struct.device** %11, align 8
  %97 = ptrtoint %struct.device* %96 to i64
  %98 = call i32 @tasklet_init(i32* %94, i32 %95, i64 %97)
  %99 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %100 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %99, i32 0, i32 14
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @fsl_re_isr, align 4
  %103 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %104 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %103, i32 0, i32 13
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.device*, %struct.device** %11, align 8
  %107 = call i32 @request_irq(i32 %101, i32 %102, i32 0, i32 %105, %struct.device* %106)
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %85
  %111 = load %struct.device*, %struct.device** %10, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %111, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %17, align 4
  br label %290

116:                                              ; preds = %85
  %117 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %118 = load %struct.fsl_re_drv_private*, %struct.fsl_re_drv_private** %12, align 8
  %119 = getelementptr inbounds %struct.fsl_re_drv_private, %struct.fsl_re_drv_private* %118, i32 0, i32 1
  %120 = load %struct.fsl_re_chan**, %struct.fsl_re_chan*** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.fsl_re_chan*, %struct.fsl_re_chan** %120, i64 %122
  store %struct.fsl_re_chan* %117, %struct.fsl_re_chan** %123, align 8
  %124 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %125 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %126 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %125, i32 0, i32 12
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store %struct.dma_device* %124, %struct.dma_device** %127, align 8
  %128 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %129 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %130 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %129, i32 0, i32 12
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store %struct.fsl_re_chan* %128, %struct.fsl_re_chan** %131, align 8
  %132 = load %struct.device*, %struct.device** %11, align 8
  %133 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %134 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %133, i32 0, i32 11
  store %struct.device* %132, %struct.device** %134, align 8
  %135 = load %struct.fsl_re_drv_private*, %struct.fsl_re_drv_private** %12, align 8
  %136 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %137 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %136, i32 0, i32 3
  store %struct.fsl_re_drv_private* %135, %struct.fsl_re_drv_private** %137, align 8
  %138 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %139 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %138, i32 0, i32 10
  %140 = call i32 @spin_lock_init(i32* %139)
  %141 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %142 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %141, i32 0, i32 9
  %143 = call i32 @INIT_LIST_HEAD(i32* %142)
  %144 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %145 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %144, i32 0, i32 8
  %146 = call i32 @INIT_LIST_HEAD(i32* %145)
  %147 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %148 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %147, i32 0, i32 7
  %149 = call i32 @INIT_LIST_HEAD(i32* %148)
  %150 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %151 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %150, i32 0, i32 6
  %152 = call i32 @INIT_LIST_HEAD(i32* %151)
  %153 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %154 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %153, i32 0, i32 3
  %155 = load %struct.fsl_re_drv_private*, %struct.fsl_re_drv_private** %154, align 8
  %156 = getelementptr inbounds %struct.fsl_re_drv_private, %struct.fsl_re_drv_private* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @GFP_KERNEL, align 4
  %159 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %160 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %159, i32 0, i32 0
  %161 = call i8* @dma_pool_alloc(i32 %157, i32 %158, i32* %160)
  %162 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %163 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %162, i32 0, i32 2
  store i8* %161, i8** %163, align 8
  %164 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %165 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %173, label %168

168:                                              ; preds = %116
  %169 = load %struct.device*, %struct.device** %10, align 8
  %170 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %169, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %17, align 4
  br label %290

173:                                              ; preds = %116
  %174 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %175 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %174, i32 0, i32 3
  %176 = load %struct.fsl_re_drv_private*, %struct.fsl_re_drv_private** %175, align 8
  %177 = getelementptr inbounds %struct.fsl_re_drv_private, %struct.fsl_re_drv_private* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @GFP_KERNEL, align 4
  %180 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %181 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %180, i32 0, i32 1
  %182 = call i8* @dma_pool_alloc(i32 %178, i32 %179, i32* %181)
  %183 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %184 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %183, i32 0, i32 5
  store i8* %182, i8** %184, align 8
  %185 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %186 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %185, i32 0, i32 5
  %187 = load i8*, i8** %186, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %194, label %189

189:                                              ; preds = %173
  %190 = load %struct.device*, %struct.device** %10, align 8
  %191 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %190, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %192 = load i32, i32* @ENOMEM, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %17, align 4
  br label %277

194:                                              ; preds = %173
  %195 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %196 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %195, i32 0, i32 4
  %197 = load %struct.fsl_re_chan_cfg*, %struct.fsl_re_chan_cfg** %196, align 8
  %198 = getelementptr inbounds %struct.fsl_re_chan_cfg, %struct.fsl_re_chan_cfg* %197, i32 0, i32 7
  %199 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %200 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @FSL_RE_ADDR_BIT_MASK, align 4
  %203 = and i32 %201, %202
  %204 = call i32 @out_be32(i32* %198, i32 %203)
  %205 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %206 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %205, i32 0, i32 4
  %207 = load %struct.fsl_re_chan_cfg*, %struct.fsl_re_chan_cfg** %206, align 8
  %208 = getelementptr inbounds %struct.fsl_re_chan_cfg, %struct.fsl_re_chan_cfg* %207, i32 0, i32 6
  %209 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %210 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @FSL_RE_ADDR_BIT_MASK, align 4
  %213 = and i32 %211, %212
  %214 = call i32 @out_be32(i32* %208, i32 %213)
  %215 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %216 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %215, i32 0, i32 4
  %217 = load %struct.fsl_re_chan_cfg*, %struct.fsl_re_chan_cfg** %216, align 8
  %218 = getelementptr inbounds %struct.fsl_re_chan_cfg, %struct.fsl_re_chan_cfg* %217, i32 0, i32 5
  %219 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %220 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @FSL_RE_ADDR_BIT_SHIFT, align 4
  %223 = ashr i32 %221, %222
  %224 = call i32 @out_be32(i32* %218, i32 %223)
  %225 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %226 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %225, i32 0, i32 4
  %227 = load %struct.fsl_re_chan_cfg*, %struct.fsl_re_chan_cfg** %226, align 8
  %228 = getelementptr inbounds %struct.fsl_re_chan_cfg, %struct.fsl_re_chan_cfg* %227, i32 0, i32 4
  %229 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %230 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @FSL_RE_ADDR_BIT_SHIFT, align 4
  %233 = ashr i32 %231, %232
  %234 = call i32 @out_be32(i32* %228, i32 %233)
  %235 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %236 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %235, i32 0, i32 4
  %237 = load %struct.fsl_re_chan_cfg*, %struct.fsl_re_chan_cfg** %236, align 8
  %238 = getelementptr inbounds %struct.fsl_re_chan_cfg, %struct.fsl_re_chan_cfg* %237, i32 0, i32 3
  %239 = load i32, i32* @FSL_RE_RING_SIZE, align 4
  %240 = load i32, i32* @FSL_RE_RING_SIZE_SHIFT, align 4
  %241 = shl i32 %239, %240
  %242 = call i32 @out_be32(i32* %238, i32 %241)
  %243 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %244 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %243, i32 0, i32 4
  %245 = load %struct.fsl_re_chan_cfg*, %struct.fsl_re_chan_cfg** %244, align 8
  %246 = getelementptr inbounds %struct.fsl_re_chan_cfg, %struct.fsl_re_chan_cfg* %245, i32 0, i32 2
  %247 = load i32, i32* @FSL_RE_RING_SIZE, align 4
  %248 = load i32, i32* @FSL_RE_RING_SIZE_SHIFT, align 4
  %249 = shl i32 %247, %248
  %250 = call i32 @out_be32(i32* %246, i32 %249)
  %251 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %252 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %251, i32 0, i32 4
  %253 = load %struct.fsl_re_chan_cfg*, %struct.fsl_re_chan_cfg** %252, align 8
  %254 = getelementptr inbounds %struct.fsl_re_chan_cfg, %struct.fsl_re_chan_cfg* %253, i32 0, i32 1
  %255 = call i32 @in_be32(i32* %254)
  %256 = load i32, i32* @FSL_RE_REG_LIODN_MASK, align 4
  %257 = and i32 %255, %256
  store i32 %257, i32* %16, align 4
  %258 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %259 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %258, i32 0, i32 4
  %260 = load %struct.fsl_re_chan_cfg*, %struct.fsl_re_chan_cfg** %259, align 8
  %261 = getelementptr inbounds %struct.fsl_re_chan_cfg, %struct.fsl_re_chan_cfg* %260, i32 0, i32 1
  %262 = load i32, i32* @FSL_RE_CFG1_CBSI, align 4
  %263 = load i32, i32* @FSL_RE_CFG1_CBS0, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* %16, align 4
  %266 = or i32 %264, %265
  %267 = call i32 @out_be32(i32* %261, i32 %266)
  %268 = load %struct.device*, %struct.device** %11, align 8
  %269 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %270 = call i32 @dev_set_drvdata(%struct.device* %268, %struct.fsl_re_chan* %269)
  %271 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %272 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %271, i32 0, i32 4
  %273 = load %struct.fsl_re_chan_cfg*, %struct.fsl_re_chan_cfg** %272, align 8
  %274 = getelementptr inbounds %struct.fsl_re_chan_cfg, %struct.fsl_re_chan_cfg* %273, i32 0, i32 0
  %275 = load i32, i32* @FSL_RE_ENABLE, align 4
  %276 = call i32 @out_be32(i32* %274, i32 %275)
  store i32 0, i32* %5, align 4
  br label %292

277:                                              ; preds = %189
  %278 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %279 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %278, i32 0, i32 3
  %280 = load %struct.fsl_re_drv_private*, %struct.fsl_re_drv_private** %279, align 8
  %281 = getelementptr inbounds %struct.fsl_re_drv_private, %struct.fsl_re_drv_private* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %284 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %283, i32 0, i32 2
  %285 = load i8*, i8** %284, align 8
  %286 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %13, align 8
  %287 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @dma_pool_free(i32 %282, i8* %285, i32 %288)
  br label %290

290:                                              ; preds = %277, %168, %110, %79, %51, %40
  %291 = load i32, i32* %17, align 4
  store i32 %291, i32* %5, align 4
  br label %292

292:                                              ; preds = %290, %194, %31
  %293 = load i32, i32* %5, align 4
  ret i32 %293
}

declare dso_local %struct.fsl_re_drv_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.fsl_re_chan* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.platform_device* @of_platform_device_create(%struct.device_node*, i32*, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.fsl_re_chan*) #1

declare dso_local i32 @dma_pool_free(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
