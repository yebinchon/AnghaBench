; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i32, i32, i32, i64, i64 }
%union.ce_ring_size = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%union.ce_ring_control = type { i32 }
%union.ce_part_ring_size = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%union.ce_io_threshold = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%union.ce_pe_dma_cfg = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@PPC4XX_BYTE_ORDER = common dso_local global i32 0, align 4
@CRYPTO4XX_BYTE_ORDER_CFG = common dso_local global i64 0, align 8
@CRYPTO4XX_PE_DMA_CFG = common dso_local global i64 0, align 8
@CRYPTO4XX_PDR_BASE = common dso_local global i64 0, align 8
@CRYPTO4XX_RDR_BASE = common dso_local global i64 0, align 8
@PPC4XX_PRNG_CTRL_AUTO_EN = common dso_local global i32 0, align 4
@CRYPTO4XX_PRNG_CTRL = common dso_local global i64 0, align 8
@CRYPTO4XX_PRNG_SEED_L = common dso_local global i64 0, align 8
@CRYPTO4XX_PRNG_SEED_H = common dso_local global i64 0, align 8
@PPC4XX_PD_SIZE = common dso_local global i32 0, align 4
@PPC4XX_NUM_PD = common dso_local global i32 0, align 4
@CRYPTO4XX_RING_SIZE = common dso_local global i64 0, align 8
@CRYPTO4XX_RING_CTRL = common dso_local global i64 0, align 8
@CRYPTO4XX_DEVICE_CTRL = common dso_local global i64 0, align 8
@PPC4XX_DC_3DES_EN = common dso_local global i32 0, align 4
@CRYPTO4XX_GATH_RING_BASE = common dso_local global i64 0, align 8
@CRYPTO4XX_SCAT_RING_BASE = common dso_local global i64 0, align 8
@PPC4XX_SDR_SIZE = common dso_local global i32 0, align 4
@PPC4XX_GDR_SIZE = common dso_local global i32 0, align 4
@CRYPTO4XX_PART_RING_SIZE = common dso_local global i64 0, align 8
@PPC4XX_SD_BUFFER_SIZE = common dso_local global i32 0, align 4
@CRYPTO4XX_PART_RING_CFG = common dso_local global i64 0, align 8
@PPC4XX_OUTPUT_THRESHOLD = common dso_local global i32 0, align 4
@PPC4XX_INPUT_THRESHOLD = common dso_local global i32 0, align 4
@CRYPTO4XX_IO_THRESHOLD = common dso_local global i64 0, align 8
@CRYPTO4XX_PDR_BASE_UADDR = common dso_local global i64 0, align 8
@CRYPTO4XX_RDR_BASE_UADDR = common dso_local global i64 0, align 8
@CRYPTO4XX_PKT_SRC_UADDR = common dso_local global i64 0, align 8
@CRYPTO4XX_PKT_DEST_UADDR = common dso_local global i64 0, align 8
@CRYPTO4XX_SA_UADDR = common dso_local global i64 0, align 8
@CRYPTO4XX_GATH_RING_BASE_UADDR = common dso_local global i64 0, align 8
@CRYPTO4XX_SCAT_RING_BASE_UADDR = common dso_local global i64 0, align 8
@PPC4XX_INTERRUPT_CLR = common dso_local global i32 0, align 4
@CRYPTO4XX_INT_CLR = common dso_local global i64 0, align 8
@PPC4XX_INT_DESCR_CNT = common dso_local global i32 0, align 4
@CRYPTO4XX_INT_DESCR_CNT = common dso_local global i64 0, align 8
@PPC4XX_INT_CFG = common dso_local global i32 0, align 4
@CRYPTO4XX_INT_CFG = common dso_local global i64 0, align 8
@PPC4XX_INT_TIMEOUT_CNT_REVB = common dso_local global i32 0, align 4
@CRYPTO4XX_INT_TIMEOUT_CNT = common dso_local global i64 0, align 8
@PPC4XX_PD_DONE_INT = common dso_local global i32 0, align 4
@PPC4XX_TMO_ERR_INT = common dso_local global i32 0, align 4
@CRYPTO4XX_INT_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto4xx_device*)* @crypto4xx_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto4xx_hw_init(%struct.crypto4xx_device* %0) #0 {
  %2 = alloca %struct.crypto4xx_device*, align 8
  %3 = alloca %union.ce_ring_size, align 4
  %4 = alloca %union.ce_ring_control, align 4
  %5 = alloca %union.ce_part_ring_size, align 4
  %6 = alloca %union.ce_io_threshold, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ce_pe_dma_cfg, align 8
  %9 = alloca i32, align 4
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %2, align 8
  %10 = load i32, i32* @PPC4XX_BYTE_ORDER, align 4
  %11 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %12 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CRYPTO4XX_BYTE_ORDER_CFG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 %10, i64 %15)
  %17 = bitcast %union.ce_pe_dma_cfg* %8 to i32*
  store i32 0, i32* %17, align 8
  %18 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 9
  store i64 0, i64* %21, align 8
  %22 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  store i32 1, i32* %25, align 8
  %26 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  store i32 1, i32* %27, align 4
  %28 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  store i32 1, i32* %29, align 8
  %30 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 5
  store i32 1, i32* %31, align 4
  %32 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 6
  store i32 1, i32* %33, align 8
  %34 = bitcast %union.ce_pe_dma_cfg* %8 to i32*
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %37 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CRYPTO4XX_PE_DMA_CFG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 7
  store i32 0, i32* %43, align 4
  %44 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 4
  store i32 0, i32* %45, align 8
  %46 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 5
  store i32 0, i32* %47, align 4
  %48 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 6
  store i32 0, i32* %49, align 8
  %50 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 8
  store i64 0, i64* %51, align 8
  %52 = bitcast %union.ce_pe_dma_cfg* %8 to i32*
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %55 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CRYPTO4XX_PE_DMA_CFG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %61 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %64 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CRYPTO4XX_PDR_BASE, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  %69 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %70 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %73 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CRYPTO4XX_RDR_BASE, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load i32, i32* @PPC4XX_PRNG_CTRL_AUTO_EN, align 4
  %79 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %80 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CRYPTO4XX_PRNG_CTRL, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  %85 = call i32 @get_random_bytes(i32* %7, i32 4)
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %88 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CRYPTO4XX_PRNG_SEED_L, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  %93 = call i32 @get_random_bytes(i32* %7, i32 4)
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %96 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CRYPTO4XX_PRNG_SEED_H, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  %101 = bitcast %union.ce_ring_size* %3 to i32*
  store i32 0, i32* %101, align 4
  %102 = load i32, i32* @PPC4XX_PD_SIZE, align 4
  %103 = bitcast %union.ce_ring_size* %3 to %struct.TYPE_5__*
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %106 = bitcast %union.ce_ring_size* %3 to %struct.TYPE_5__*
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = bitcast %union.ce_ring_size* %3 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %111 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CRYPTO4XX_RING_SIZE, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @writel(i32 %109, i64 %114)
  %116 = bitcast %union.ce_ring_control* %4 to i32*
  store i32 0, i32* %116, align 4
  %117 = bitcast %union.ce_ring_control* %4 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %120 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @CRYPTO4XX_RING_CTRL, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @writel(i32 %118, i64 %123)
  %125 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %126 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @CRYPTO4XX_DEVICE_CTRL, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @readl(i64 %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* @PPC4XX_DC_3DES_EN, align 4
  %132 = load i32, i32* %9, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %136 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @CRYPTO4XX_DEVICE_CTRL, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @writel(i32 %134, i64 %139)
  %141 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %142 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %145 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @CRYPTO4XX_GATH_RING_BASE, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @writel(i32 %143, i64 %148)
  %150 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %151 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %154 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @CRYPTO4XX_SCAT_RING_BASE, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @writel(i32 %152, i64 %157)
  %159 = bitcast %union.ce_part_ring_size* %5 to i32*
  store i32 0, i32* %159, align 4
  %160 = load i32, i32* @PPC4XX_SDR_SIZE, align 4
  %161 = bitcast %union.ce_part_ring_size* %5 to %struct.TYPE_6__*
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* @PPC4XX_GDR_SIZE, align 4
  %164 = bitcast %union.ce_part_ring_size* %5 to %struct.TYPE_6__*
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  %166 = bitcast %union.ce_part_ring_size* %5 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %169 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @CRYPTO4XX_PART_RING_SIZE, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @writel(i32 %167, i64 %172)
  %174 = load i32, i32* @PPC4XX_SD_BUFFER_SIZE, align 4
  %175 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %176 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @CRYPTO4XX_PART_RING_CFG, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @writel(i32 %174, i64 %179)
  %181 = bitcast %union.ce_io_threshold* %6 to i32*
  store i32 0, i32* %181, align 4
  %182 = load i32, i32* @PPC4XX_OUTPUT_THRESHOLD, align 4
  %183 = bitcast %union.ce_io_threshold* %6 to %struct.TYPE_7__*
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* @PPC4XX_INPUT_THRESHOLD, align 4
  %186 = bitcast %union.ce_io_threshold* %6 to %struct.TYPE_7__*
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 4
  %188 = bitcast %union.ce_io_threshold* %6 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %191 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @CRYPTO4XX_IO_THRESHOLD, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @writel(i32 %189, i64 %194)
  %196 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %197 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @CRYPTO4XX_PDR_BASE_UADDR, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @writel(i32 0, i64 %200)
  %202 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %203 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @CRYPTO4XX_RDR_BASE_UADDR, align 8
  %206 = add nsw i64 %204, %205
  %207 = call i32 @writel(i32 0, i64 %206)
  %208 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %209 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @CRYPTO4XX_PKT_SRC_UADDR, align 8
  %212 = add nsw i64 %210, %211
  %213 = call i32 @writel(i32 0, i64 %212)
  %214 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %215 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @CRYPTO4XX_PKT_DEST_UADDR, align 8
  %218 = add nsw i64 %216, %217
  %219 = call i32 @writel(i32 0, i64 %218)
  %220 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %221 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @CRYPTO4XX_SA_UADDR, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 @writel(i32 0, i64 %224)
  %226 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %227 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @CRYPTO4XX_GATH_RING_BASE_UADDR, align 8
  %230 = add nsw i64 %228, %229
  %231 = call i32 @writel(i32 0, i64 %230)
  %232 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %233 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @CRYPTO4XX_SCAT_RING_BASE_UADDR, align 8
  %236 = add nsw i64 %234, %235
  %237 = call i32 @writel(i32 0, i64 %236)
  %238 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 7
  store i32 1, i32* %239, align 4
  %240 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 4
  store i32 0, i32* %241, align 8
  %242 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 5
  store i32 0, i32* %243, align 4
  %244 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 6
  store i32 0, i32* %245, align 8
  %246 = bitcast %union.ce_pe_dma_cfg* %8 to %struct.TYPE_8__*
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 8
  store i64 0, i64* %247, align 8
  %248 = bitcast %union.ce_pe_dma_cfg* %8 to i32*
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %251 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @CRYPTO4XX_PE_DMA_CFG, align 8
  %254 = add nsw i64 %252, %253
  %255 = call i32 @writel(i32 %249, i64 %254)
  %256 = load i32, i32* @PPC4XX_INTERRUPT_CLR, align 4
  %257 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %258 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %257, i32 0, i32 3
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @CRYPTO4XX_INT_CLR, align 8
  %261 = add nsw i64 %259, %260
  %262 = call i32 @writel(i32 %256, i64 %261)
  %263 = load i32, i32* @PPC4XX_INT_DESCR_CNT, align 4
  %264 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %265 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @CRYPTO4XX_INT_DESCR_CNT, align 8
  %268 = add nsw i64 %266, %267
  %269 = call i32 @writel(i32 %263, i64 %268)
  %270 = load i32, i32* @PPC4XX_INT_DESCR_CNT, align 4
  %271 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %272 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %271, i32 0, i32 3
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @CRYPTO4XX_INT_DESCR_CNT, align 8
  %275 = add nsw i64 %273, %274
  %276 = call i32 @writel(i32 %270, i64 %275)
  %277 = load i32, i32* @PPC4XX_INT_CFG, align 4
  %278 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %279 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %278, i32 0, i32 3
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @CRYPTO4XX_INT_CFG, align 8
  %282 = add nsw i64 %280, %281
  %283 = call i32 @writel(i32 %277, i64 %282)
  %284 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %285 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %284, i32 0, i32 4
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %306

288:                                              ; preds = %1
  %289 = load i32, i32* @PPC4XX_INT_TIMEOUT_CNT_REVB, align 4
  %290 = shl i32 %289, 10
  %291 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %292 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %291, i32 0, i32 3
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @CRYPTO4XX_INT_TIMEOUT_CNT, align 8
  %295 = add nsw i64 %293, %294
  %296 = call i32 @writel(i32 %290, i64 %295)
  %297 = load i32, i32* @PPC4XX_PD_DONE_INT, align 4
  %298 = load i32, i32* @PPC4XX_TMO_ERR_INT, align 4
  %299 = or i32 %297, %298
  %300 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %301 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @CRYPTO4XX_INT_EN, align 8
  %304 = add nsw i64 %302, %303
  %305 = call i32 @writel(i32 %299, i64 %304)
  br label %314

306:                                              ; preds = %1
  %307 = load i32, i32* @PPC4XX_PD_DONE_INT, align 4
  %308 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %309 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %308, i32 0, i32 3
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @CRYPTO4XX_INT_EN, align 8
  %312 = add nsw i64 %310, %311
  %313 = call i32 @writel(i32 %307, i64 %312)
  br label %314

314:                                              ; preds = %306, %288
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
