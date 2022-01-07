; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_init_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_init_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DMA_MEMCPY = common dso_local global i32 0, align 4
@DMA_INTERRUPT = common dso_local global i32 0, align 4
@DMA_PQ = common dso_local global i32 0, align 4
@DMA_PQ_VAL = common dso_local global i32 0, align 4
@DMA_XOR_VAL = common dso_local global i32 0, align 4
@DMA_XOR = common dso_local global i32 0, align 4
@ppc440spe_adma_alloc_chan_resources = common dso_local global i32 0, align 4
@ppc440spe_adma_free_chan_resources = common dso_local global i32 0, align 4
@ppc440spe_adma_tx_status = common dso_local global i32 0, align 4
@ppc440spe_adma_issue_pending = common dso_local global i32 0, align 4
@ppc440spe_adma_prep_dma_memcpy = common dso_local global i32 0, align 4
@XOR_MAX_OPS = common dso_local global i32 0, align 4
@ppc440spe_adma_prep_dma_xor = common dso_local global i32 0, align 4
@DMA0_FIFO_SIZE = common dso_local global i32 0, align 4
@DMA1_FIFO_SIZE = common dso_local global i32 0, align 4
@ppc440spe_adma_prep_dma_pq = common dso_local global i32 0, align 4
@ppc440spe_adma_prep_dma_pqzero_sum = common dso_local global i32 0, align 4
@ppc440spe_adma_prep_dma_xor_zero_sum = common dso_local global i32 0, align 4
@ppc440spe_adma_prep_dma_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%s: AMCC(R) PPC440SP(E) ADMA Engine: ( %s%s%s%s%s%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pq \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pq_val \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"xor \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"xor_val \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"memcpy \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"intr \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_device*)* @ppc440spe_adma_init_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc440spe_adma_init_capabilities(%struct.ppc440spe_adma_device* %0) #0 {
  %2 = alloca %struct.ppc440spe_adma_device*, align 8
  store %struct.ppc440spe_adma_device* %0, %struct.ppc440spe_adma_device** %2, align 8
  %3 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %4 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %63 [
    i32 130, label %6
    i32 129, label %6
    i32 128, label %37
  ]

6:                                                ; preds = %1, %1
  %7 = load i32, i32* @DMA_MEMCPY, align 4
  %8 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %9 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dma_cap_set(i32 %7, i32 %11)
  %13 = load i32, i32* @DMA_INTERRUPT, align 4
  %14 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %15 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dma_cap_set(i32 %13, i32 %17)
  %19 = load i32, i32* @DMA_PQ, align 4
  %20 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %21 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dma_cap_set(i32 %19, i32 %23)
  %25 = load i32, i32* @DMA_PQ_VAL, align 4
  %26 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %27 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dma_cap_set(i32 %25, i32 %29)
  %31 = load i32, i32* @DMA_XOR_VAL, align 4
  %32 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %33 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dma_cap_set(i32 %31, i32 %35)
  br label %63

37:                                               ; preds = %1
  %38 = load i32, i32* @DMA_XOR, align 4
  %39 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %40 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dma_cap_set(i32 %38, i32 %42)
  %44 = load i32, i32* @DMA_PQ, align 4
  %45 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %46 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dma_cap_set(i32 %44, i32 %48)
  %50 = load i32, i32* @DMA_INTERRUPT, align 4
  %51 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %52 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dma_cap_set(i32 %50, i32 %54)
  %56 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %57 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %61 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 4
  br label %63

63:                                               ; preds = %1, %37, %6
  %64 = load i32, i32* @ppc440spe_adma_alloc_chan_resources, align 4
  %65 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %66 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 12
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @ppc440spe_adma_free_chan_resources, align 4
  %69 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %70 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 11
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @ppc440spe_adma_tx_status, align 4
  %73 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %74 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 10
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @ppc440spe_adma_issue_pending, align 4
  %77 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %78 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 9
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @DMA_MEMCPY, align 4
  %81 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %82 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @dma_has_cap(i32 %80, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %63
  %88 = load i32, i32* @ppc440spe_adma_prep_dma_memcpy, align 4
  %89 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %90 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 8
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %87, %63
  %93 = load i32, i32* @DMA_XOR, align 4
  %94 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %95 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @dma_has_cap(i32 %93, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %92
  %101 = load i32, i32* @XOR_MAX_OPS, align 4
  %102 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %103 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* @ppc440spe_adma_prep_dma_xor, align 4
  %106 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %107 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 7
  store i32 %105, i32* %108, align 4
  br label %109

109:                                              ; preds = %100, %92
  %110 = load i32, i32* @DMA_PQ, align 4
  %111 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %112 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @dma_has_cap(i32 %110, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %148

117:                                              ; preds = %109
  %118 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %119 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %143 [
    i32 130, label %121
    i32 129, label %129
    i32 128, label %137
  ]

121:                                              ; preds = %117
  %122 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %123 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %122, i32 0, i32 1
  %124 = load i32, i32* @DMA0_FIFO_SIZE, align 4
  %125 = sext i32 %124 to i64
  %126 = udiv i64 %125, 4
  %127 = trunc i64 %126 to i32
  %128 = call i32 @dma_set_maxpq(%struct.TYPE_2__* %123, i32 %127, i32 0)
  br label %143

129:                                              ; preds = %117
  %130 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %131 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %130, i32 0, i32 1
  %132 = load i32, i32* @DMA1_FIFO_SIZE, align 4
  %133 = sext i32 %132 to i64
  %134 = udiv i64 %133, 4
  %135 = trunc i64 %134 to i32
  %136 = call i32 @dma_set_maxpq(%struct.TYPE_2__* %131, i32 %135, i32 0)
  br label %143

137:                                              ; preds = %117
  %138 = load i32, i32* @XOR_MAX_OPS, align 4
  %139 = mul nsw i32 %138, 3
  %140 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %141 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 4
  br label %143

143:                                              ; preds = %117, %137, %129, %121
  %144 = load i32, i32* @ppc440spe_adma_prep_dma_pq, align 4
  %145 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %146 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 6
  store i32 %144, i32* %147, align 4
  br label %148

148:                                              ; preds = %143, %109
  %149 = load i32, i32* @DMA_PQ_VAL, align 4
  %150 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %151 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @dma_has_cap(i32 %149, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %181

156:                                              ; preds = %148
  %157 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %158 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  switch i32 %159, label %176 [
    i32 130, label %160
    i32 129, label %168
  ]

160:                                              ; preds = %156
  %161 = load i32, i32* @DMA0_FIFO_SIZE, align 4
  %162 = sext i32 %161 to i64
  %163 = udiv i64 %162, 4
  %164 = trunc i64 %163 to i32
  %165 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %166 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  store i32 %164, i32* %167, align 4
  br label %176

168:                                              ; preds = %156
  %169 = load i32, i32* @DMA1_FIFO_SIZE, align 4
  %170 = sext i32 %169 to i64
  %171 = udiv i64 %170, 4
  %172 = trunc i64 %171 to i32
  %173 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %174 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  store i32 %172, i32* %175, align 4
  br label %176

176:                                              ; preds = %156, %168, %160
  %177 = load i32, i32* @ppc440spe_adma_prep_dma_pqzero_sum, align 4
  %178 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %179 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 5
  store i32 %177, i32* %180, align 4
  br label %181

181:                                              ; preds = %176, %148
  %182 = load i32, i32* @DMA_XOR_VAL, align 4
  %183 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %184 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @dma_has_cap(i32 %182, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %214

189:                                              ; preds = %181
  %190 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %191 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  switch i32 %192, label %209 [
    i32 130, label %193
    i32 129, label %201
  ]

193:                                              ; preds = %189
  %194 = load i32, i32* @DMA0_FIFO_SIZE, align 4
  %195 = sext i32 %194 to i64
  %196 = udiv i64 %195, 4
  %197 = trunc i64 %196 to i32
  %198 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %199 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 4
  br label %209

201:                                              ; preds = %189
  %202 = load i32, i32* @DMA1_FIFO_SIZE, align 4
  %203 = sext i32 %202 to i64
  %204 = udiv i64 %203, 4
  %205 = trunc i64 %204 to i32
  %206 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %207 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  store i32 %205, i32* %208, align 4
  br label %209

209:                                              ; preds = %189, %201, %193
  %210 = load i32, i32* @ppc440spe_adma_prep_dma_xor_zero_sum, align 4
  %211 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %212 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 4
  store i32 %210, i32* %213, align 4
  br label %214

214:                                              ; preds = %209, %181
  %215 = load i32, i32* @DMA_INTERRUPT, align 4
  %216 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %217 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = call i64 @dma_has_cap(i32 %215, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %214
  %223 = load i32, i32* @ppc440spe_adma_prep_dma_interrupt, align 4
  %224 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %225 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 3
  store i32 %223, i32* %226, align 4
  br label %227

227:                                              ; preds = %222, %214
  %228 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %229 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @dev_name(i32 %230)
  %232 = load i32, i32* @DMA_PQ, align 4
  %233 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %234 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = call i64 @dma_has_cap(i32 %232, i32 %236)
  %238 = icmp ne i64 %237, 0
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %241 = load i32, i32* @DMA_PQ_VAL, align 4
  %242 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %243 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = call i64 @dma_has_cap(i32 %241, i32 %245)
  %247 = icmp ne i64 %246, 0
  %248 = zext i1 %247 to i64
  %249 = select i1 %247, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %250 = load i32, i32* @DMA_XOR, align 4
  %251 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %252 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = call i64 @dma_has_cap(i32 %250, i32 %254)
  %256 = icmp ne i64 %255, 0
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %259 = load i32, i32* @DMA_XOR_VAL, align 4
  %260 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %261 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = call i64 @dma_has_cap(i32 %259, i32 %263)
  %265 = icmp ne i64 %264, 0
  %266 = zext i1 %265 to i64
  %267 = select i1 %265, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %268 = load i32, i32* @DMA_MEMCPY, align 4
  %269 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %270 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = call i64 @dma_has_cap(i32 %268, i32 %272)
  %274 = icmp ne i64 %273, 0
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %277 = load i32, i32* @DMA_INTERRUPT, align 4
  %278 = load %struct.ppc440spe_adma_device*, %struct.ppc440spe_adma_device** %2, align 8
  %279 = getelementptr inbounds %struct.ppc440spe_adma_device, %struct.ppc440spe_adma_device* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = call i64 @dma_has_cap(i32 %277, i32 %281)
  %283 = icmp ne i64 %282, 0
  %284 = zext i1 %283 to i64
  %285 = select i1 %283, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %286 = call i32 @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %231, i8* %240, i8* %249, i8* %258, i8* %267, i8* %276, i8* %285)
  ret void
}

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i64 @dma_has_cap(i32, i32) #1

declare dso_local i32 @dma_set_maxpq(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
