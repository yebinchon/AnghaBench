; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pch_dma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pch_dma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.pch_dma = type { %struct.pch_dma_regs*, i32, %struct.TYPE_4__, %struct.pch_dma_chan* }
%struct.pch_dma_regs = type { i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.pch_dma_chan = type { %struct.TYPE_3__, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot enable PCI device\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Cannot find proper base address\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Cannot obtain PCI resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Cannot set proper DMA config\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Cannot map MMIO registers\0A\00", align 1
@pd_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Failed to request IRQ\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"pch_dma_desc_pool\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Failed to alloc DMA descriptors\0A\00", align 1
@pdc_tasklet = common dso_local global i32 0, align 4
@DMA_PRIVATE = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@pd_alloc_chan_resources = common dso_local global i32 0, align 4
@pd_free_chan_resources = common dso_local global i32 0, align 4
@pd_tx_status = common dso_local global i32 0, align 4
@pd_issue_pending = common dso_local global i32 0, align 4
@pd_prep_slave_sg = common dso_local global i32 0, align 4
@pd_device_terminate_all = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Failed to register DMA device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pch_dma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_dma_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.pch_dma*, align 8
  %7 = alloca %struct.pch_dma_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pch_dma_chan*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %12 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.pch_dma* @kzalloc(i32 64, i32 %15)
  store %struct.pch_dma* %16, %struct.pch_dma** %6, align 8
  %17 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %18 = icmp ne %struct.pch_dma* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %258

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %25 = call i32 @pci_set_drvdata(%struct.pci_dev* %23, %struct.pch_dma* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @pci_enable_device(%struct.pci_dev* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 1
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %254

34:                                               ; preds = %22
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pci_resource_flags(%struct.pci_dev* %35, i32 1)
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 1
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %251

46:                                               ; preds = %34
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = load i32, i32* @DRV_NAME, align 4
  %49 = call i32 @pci_request_regions(%struct.pci_dev* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 1
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %251

56:                                               ; preds = %46
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = call i32 @DMA_BIT_MASK(i32 32)
  %59 = call i32 @pci_set_dma_mask(%struct.pci_dev* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 1
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %248

66:                                               ; preds = %56
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = call %struct.pch_dma_regs* @pci_iomap(%struct.pci_dev* %67, i32 1, i32 0)
  %69 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %70 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %69, i32 0, i32 0
  store %struct.pch_dma_regs* %68, %struct.pch_dma_regs** %70, align 8
  store %struct.pch_dma_regs* %68, %struct.pch_dma_regs** %7, align 8
  %71 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %72 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %71, i32 0, i32 0
  %73 = load %struct.pch_dma_regs*, %struct.pch_dma_regs** %72, align 8
  %74 = icmp ne %struct.pch_dma_regs* %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %66
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 1
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %9, align 4
  br label %248

81:                                               ; preds = %66
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = call i32 @pci_set_master(%struct.pci_dev* %82)
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @pd_irq, align 4
  %88 = load i32, i32* @IRQF_SHARED, align 4
  %89 = load i32, i32* @DRV_NAME, align 4
  %90 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %91 = call i32 @request_irq(i32 %86, i32 %87, i32 %88, i32 %89, %struct.pch_dma* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %81
  %95 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 1
  %97 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %242

98:                                               ; preds = %81
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 1
  %101 = call i32 @dma_pool_create(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32* %100, i32 4, i32 4, i32 0)
  %102 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %103 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %105 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %98
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %109, i32 0, i32 1
  %111 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %9, align 4
  br label %236

114:                                              ; preds = %98
  %115 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %116 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %115, i32 0, i32 1
  %117 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %118 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 8
  store i32* %116, i32** %119, align 8
  %120 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %121 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 7
  %123 = call i32 @INIT_LIST_HEAD(i32* %122)
  store i32 0, i32* %10, align 4
  br label %124

124:                                              ; preds = %176, %114
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %179

128:                                              ; preds = %124
  %129 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %130 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %129, i32 0, i32 3
  %131 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %131, i64 %133
  store %struct.pch_dma_chan* %134, %struct.pch_dma_chan** %11, align 8
  %135 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %136 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %135, i32 0, i32 2
  %137 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %11, align 8
  %138 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  store %struct.TYPE_4__* %136, %struct.TYPE_4__** %139, align 8
  %140 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %11, align 8
  %141 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %140, i32 0, i32 0
  %142 = call i32 @dma_cookie_init(%struct.TYPE_3__* %141)
  %143 = load %struct.pch_dma_regs*, %struct.pch_dma_regs** %7, align 8
  %144 = getelementptr inbounds %struct.pch_dma_regs, %struct.pch_dma_regs* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %11, align 8
  %150 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %149, i32 0, i32 6
  store i32* %148, i32** %150, align 8
  %151 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %11, align 8
  %152 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %151, i32 0, i32 5
  %153 = call i32 @spin_lock_init(i32* %152)
  %154 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %11, align 8
  %155 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %154, i32 0, i32 4
  %156 = call i32 @INIT_LIST_HEAD(i32* %155)
  %157 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %11, align 8
  %158 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %157, i32 0, i32 3
  %159 = call i32 @INIT_LIST_HEAD(i32* %158)
  %160 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %11, align 8
  %161 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %160, i32 0, i32 2
  %162 = call i32 @INIT_LIST_HEAD(i32* %161)
  %163 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %11, align 8
  %164 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %163, i32 0, i32 1
  %165 = load i32, i32* @pdc_tasklet, align 4
  %166 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %11, align 8
  %167 = ptrtoint %struct.pch_dma_chan* %166 to i64
  %168 = call i32 @tasklet_init(i32* %164, i32 %165, i64 %167)
  %169 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %11, align 8
  %170 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %173 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 7
  %175 = call i32 @list_add_tail(i32* %171, i32* %174)
  br label %176

176:                                              ; preds = %128
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %10, align 4
  br label %124

179:                                              ; preds = %124
  %180 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %181 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @dma_cap_zero(i32 %183)
  %185 = load i32, i32* @DMA_PRIVATE, align 4
  %186 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %187 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @dma_cap_set(i32 %185, i32 %189)
  %191 = load i32, i32* @DMA_SLAVE, align 4
  %192 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %193 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @dma_cap_set(i32 %191, i32 %195)
  %197 = load i32, i32* @pd_alloc_chan_resources, align 4
  %198 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %199 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 5
  store i32 %197, i32* %200, align 4
  %201 = load i32, i32* @pd_free_chan_resources, align 4
  %202 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %203 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 4
  store i32 %201, i32* %204, align 8
  %205 = load i32, i32* @pd_tx_status, align 4
  %206 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %207 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 3
  store i32 %205, i32* %208, align 4
  %209 = load i32, i32* @pd_issue_pending, align 4
  %210 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %211 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 2
  store i32 %209, i32* %212, align 8
  %213 = load i32, i32* @pd_prep_slave_sg, align 4
  %214 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %215 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 1
  store i32 %213, i32* %216, align 4
  %217 = load i32, i32* @pd_device_terminate_all, align 4
  %218 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %219 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  store i32 %217, i32* %220, align 8
  %221 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %222 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %221, i32 0, i32 2
  %223 = call i32 @dma_async_device_register(%struct.TYPE_4__* %222)
  store i32 %223, i32* %9, align 4
  %224 = load i32, i32* %9, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %179
  %227 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %228 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %227, i32 0, i32 1
  %229 = call i32 @dev_err(i32* %228, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %231

230:                                              ; preds = %179
  store i32 0, i32* %3, align 4
  br label %258

231:                                              ; preds = %226
  %232 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %233 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @dma_pool_destroy(i32 %234)
  br label %236

236:                                              ; preds = %231, %108
  %237 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %238 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %241 = call i32 @free_irq(i32 %239, %struct.pch_dma* %240)
  br label %242

242:                                              ; preds = %236, %94
  %243 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %244 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %245 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %244, i32 0, i32 0
  %246 = load %struct.pch_dma_regs*, %struct.pch_dma_regs** %245, align 8
  %247 = call i32 @pci_iounmap(%struct.pci_dev* %243, %struct.pch_dma_regs* %246)
  br label %248

248:                                              ; preds = %242, %75, %62
  %249 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %250 = call i32 @pci_release_regions(%struct.pci_dev* %249)
  br label %251

251:                                              ; preds = %248, %52, %40
  %252 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %253 = call i32 @pci_disable_device(%struct.pci_dev* %252)
  br label %254

254:                                              ; preds = %251, %30
  %255 = load %struct.pch_dma*, %struct.pch_dma** %6, align 8
  %256 = call i32 @kfree(%struct.pch_dma* %255)
  %257 = load i32, i32* %9, align 4
  store i32 %257, i32* %3, align 4
  br label %258

258:                                              ; preds = %254, %230, %19
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

declare dso_local %struct.pch_dma* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.pch_dma*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.pch_dma_regs* @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.pch_dma*) #1

declare dso_local i32 @dma_pool_create(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_cookie_init(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @dma_async_device_register(%struct.TYPE_4__*) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @free_irq(i32, %struct.pch_dma*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, %struct.pch_dma_regs*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.pch_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
