; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_state = type { i32, i32, i32, i32, %struct.dma64dd*, %struct.dma64dd*, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_7__*, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_6__* }
%struct.dma64dd = type { i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.dma64* }
%struct.dma64 = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.pdc_ring_alloc = type { i32, i32* }

@PDC_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c" - base DMA addr of tx ring      %pad\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c" - base virtual addr of tx ring  %p\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c" - base DMA addr of rx ring      %pad\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c" - base virtual addr of rx ring  %p\00", align 1
@PDC_TX_CTL = common dso_local global i32 0, align 4
@PDC_RX_CTL = common dso_local global i32 0, align 4
@PDC_TX_ENABLE = common dso_local global i32 0, align 4
@PDC_RX_ENABLE = common dso_local global i32 0, align 4
@PDC_RING_ENTRIES = common dso_local global i32 0, align 4
@D64_CTRL1_SOF = common dso_local global i32 0, align 4
@D64_CTRL1_EOF = common dso_local global i32 0, align 4
@D64_CTRL1_EOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pdc_state*, i32)* @pdc_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_ring_init(%struct.pdc_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pdc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma64*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.pdc_ring_alloc, align 8
  %11 = alloca %struct.pdc_ring_alloc, align 8
  store %struct.pdc_state* %0, %struct.pdc_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @PDC_SUCCESS, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %14 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %13, i32 0, i32 16
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %18 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = getelementptr inbounds %struct.pdc_ring_alloc, %struct.pdc_ring_alloc* %10, i32 0, i32 0
  %22 = call i8* @dma_pool_zalloc(i32 %19, i32 %20, i32* %21)
  %23 = bitcast i8* %22 to i32*
  %24 = getelementptr inbounds %struct.pdc_ring_alloc, %struct.pdc_ring_alloc* %10, i32 0, i32 1
  store i32* %23, i32** %24, align 8
  %25 = getelementptr inbounds %struct.pdc_ring_alloc, %struct.pdc_ring_alloc* %10, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %268

35:                                               ; preds = %2
  %36 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %37 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = getelementptr inbounds %struct.pdc_ring_alloc, %struct.pdc_ring_alloc* %11, i32 0, i32 0
  %41 = call i8* @dma_pool_zalloc(i32 %38, i32 %39, i32* %40)
  %42 = bitcast i8* %41 to i32*
  %43 = getelementptr inbounds %struct.pdc_ring_alloc, %struct.pdc_ring_alloc* %11, i32 0, i32 1
  store i32* %42, i32** %43, align 8
  %44 = getelementptr inbounds %struct.pdc_ring_alloc, %struct.pdc_ring_alloc* %11, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %35
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %259

54:                                               ; preds = %35
  %55 = load %struct.device*, %struct.device** %9, align 8
  %56 = getelementptr inbounds %struct.pdc_ring_alloc, %struct.pdc_ring_alloc* %10, i32 0, i32 0
  %57 = call i32 @dev_dbg(%struct.device* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32* %56)
  %58 = load %struct.device*, %struct.device** %9, align 8
  %59 = getelementptr inbounds %struct.pdc_ring_alloc, %struct.pdc_ring_alloc* %10, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @dev_dbg(%struct.device* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32* %60)
  %62 = load %struct.device*, %struct.device** %9, align 8
  %63 = getelementptr inbounds %struct.pdc_ring_alloc, %struct.pdc_ring_alloc* %11, i32 0, i32 0
  %64 = call i32 @dev_dbg(%struct.device* %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32* %63)
  %65 = load %struct.device*, %struct.device** %9, align 8
  %66 = getelementptr inbounds %struct.pdc_ring_alloc, %struct.pdc_ring_alloc* %11, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @dev_dbg(%struct.device* %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32* %67)
  %69 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %70 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %69, i32 0, i32 7
  %71 = call i32 @memcpy(%struct.TYPE_10__* %70, %struct.pdc_ring_alloc* %10, i32 16)
  %72 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %73 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %72, i32 0, i32 6
  %74 = call i32 @memcpy(%struct.TYPE_10__* %73, %struct.pdc_ring_alloc* %11, i32 16)
  %75 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %76 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %75, i32 0, i32 15
  store i64 0, i64* %76, align 8
  %77 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %78 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %77, i32 0, i32 14
  store i64 0, i64* %78, align 8
  %79 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %80 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %79, i32 0, i32 13
  store i64 0, i64* %80, align 8
  %81 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %82 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %81, i32 0, i32 12
  store i64 0, i64* %82, align 8
  %83 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %84 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %83, i32 0, i32 11
  store i64 0, i64* %84, align 8
  %85 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %86 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %85, i32 0, i32 10
  store i64 0, i64* %86, align 8
  %87 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %88 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %87, i32 0, i32 9
  store i64 0, i64* %88, align 8
  %89 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %90 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %89, i32 0, i32 7
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.dma64dd*
  %94 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %95 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %94, i32 0, i32 5
  store %struct.dma64dd* %93, %struct.dma64dd** %95, align 8
  %96 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %97 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to %struct.dma64dd*
  %101 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %102 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %101, i32 0, i32 4
  store %struct.dma64dd* %100, %struct.dma64dd** %102, align 8
  %103 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %104 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %103, i32 0, i32 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load %struct.dma64*, %struct.dma64** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.dma64, %struct.dma64* %107, i64 %109
  store %struct.dma64* %110, %struct.dma64** %8, align 8
  %111 = load i32, i32* @PDC_TX_CTL, align 4
  %112 = load %struct.dma64*, %struct.dma64** %8, align 8
  %113 = getelementptr inbounds %struct.dma64, %struct.dma64* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = call i32 @iowrite32(i32 %111, i32* %114)
  %116 = load i32, i32* @PDC_RX_CTL, align 4
  %117 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %118 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = shl i32 %119, 1
  %121 = add nsw i32 %116, %120
  %122 = load %struct.dma64*, %struct.dma64** %8, align 8
  %123 = getelementptr inbounds %struct.dma64, %struct.dma64* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = call i32 @iowrite32(i32 %121, i32* %124)
  %126 = load %struct.dma64*, %struct.dma64** %8, align 8
  %127 = getelementptr inbounds %struct.dma64, %struct.dma64* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  %129 = call i32 @iowrite32(i32 0, i32* %128)
  %130 = load %struct.dma64*, %struct.dma64** %8, align 8
  %131 = getelementptr inbounds %struct.dma64, %struct.dma64* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 3
  %133 = call i32 @iowrite32(i32 0, i32* %132)
  %134 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %135 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %134, i32 0, i32 7
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @lower_32_bits(i32 %137)
  %139 = load %struct.dma64*, %struct.dma64** %8, align 8
  %140 = getelementptr inbounds %struct.dma64, %struct.dma64* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = call i32 @iowrite32(i32 %138, i32* %141)
  %143 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %144 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @upper_32_bits(i32 %146)
  %148 = load %struct.dma64*, %struct.dma64** %8, align 8
  %149 = getelementptr inbounds %struct.dma64, %struct.dma64* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = call i32 @iowrite32(i32 %147, i32* %150)
  %152 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %153 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @lower_32_bits(i32 %155)
  %157 = load %struct.dma64*, %struct.dma64** %8, align 8
  %158 = getelementptr inbounds %struct.dma64, %struct.dma64* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  %160 = call i32 @iowrite32(i32 %156, i32* %159)
  %161 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %162 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @upper_32_bits(i32 %164)
  %166 = load %struct.dma64*, %struct.dma64** %8, align 8
  %167 = getelementptr inbounds %struct.dma64, %struct.dma64* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = call i32 @iowrite32(i32 %165, i32* %168)
  %170 = load i32, i32* @PDC_TX_CTL, align 4
  %171 = load i32, i32* @PDC_TX_ENABLE, align 4
  %172 = or i32 %170, %171
  %173 = load %struct.dma64*, %struct.dma64** %8, align 8
  %174 = getelementptr inbounds %struct.dma64, %struct.dma64* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = call i32 @iowrite32(i32 %172, i32* %175)
  %177 = load i32, i32* @PDC_RX_CTL, align 4
  %178 = load i32, i32* @PDC_RX_ENABLE, align 4
  %179 = or i32 %177, %178
  %180 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %181 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = shl i32 %182, 1
  %184 = or i32 %179, %183
  %185 = load %struct.dma64*, %struct.dma64** %8, align 8
  %186 = getelementptr inbounds %struct.dma64, %struct.dma64* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = call i32 @iowrite32(i32 %184, i32* %187)
  store i32 0, i32* %6, align 4
  br label %189

189:                                              ; preds = %254, %54
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @PDC_RING_ENTRIES, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %257

193:                                              ; preds = %189
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %196 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %194, %197
  br i1 %198, label %199, label %211

199:                                              ; preds = %193
  %200 = load i32, i32* @D64_CTRL1_SOF, align 4
  %201 = load i32, i32* @D64_CTRL1_EOF, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %204 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %203, i32 0, i32 5
  %205 = load %struct.dma64dd*, %struct.dma64dd** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.dma64dd, %struct.dma64dd* %205, i64 %207
  %209 = getelementptr inbounds %struct.dma64dd, %struct.dma64dd* %208, i32 0, i32 0
  %210 = call i32 @iowrite32(i32 %202, i32* %209)
  br label %225

211:                                              ; preds = %193
  %212 = load i32, i32* @D64_CTRL1_SOF, align 4
  %213 = load i32, i32* @D64_CTRL1_EOF, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @D64_CTRL1_EOT, align 4
  %216 = or i32 %214, %215
  %217 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %218 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %217, i32 0, i32 5
  %219 = load %struct.dma64dd*, %struct.dma64dd** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.dma64dd, %struct.dma64dd* %219, i64 %221
  %223 = getelementptr inbounds %struct.dma64dd, %struct.dma64dd* %222, i32 0, i32 0
  %224 = call i32 @iowrite32(i32 %216, i32* %223)
  br label %225

225:                                              ; preds = %211, %199
  %226 = load i32, i32* %6, align 4
  %227 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %228 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %226, %229
  br i1 %230, label %231, label %241

231:                                              ; preds = %225
  %232 = load i32, i32* @D64_CTRL1_SOF, align 4
  %233 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %234 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %233, i32 0, i32 4
  %235 = load %struct.dma64dd*, %struct.dma64dd** %234, align 8
  %236 = load i32, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.dma64dd, %struct.dma64dd* %235, i64 %237
  %239 = getelementptr inbounds %struct.dma64dd, %struct.dma64dd* %238, i32 0, i32 0
  %240 = call i32 @iowrite32(i32 %232, i32* %239)
  br label %253

241:                                              ; preds = %225
  %242 = load i32, i32* @D64_CTRL1_SOF, align 4
  %243 = load i32, i32* @D64_CTRL1_EOT, align 4
  %244 = or i32 %242, %243
  %245 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %246 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %245, i32 0, i32 4
  %247 = load %struct.dma64dd*, %struct.dma64dd** %246, align 8
  %248 = load i32, i32* %6, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.dma64dd, %struct.dma64dd* %247, i64 %249
  %251 = getelementptr inbounds %struct.dma64dd, %struct.dma64dd* %250, i32 0, i32 0
  %252 = call i32 @iowrite32(i32 %244, i32* %251)
  br label %253

253:                                              ; preds = %241, %231
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %6, align 4
  br label %189

257:                                              ; preds = %189
  %258 = load i32, i32* @PDC_SUCCESS, align 4
  store i32 %258, i32* %3, align 4
  br label %270

259:                                              ; preds = %51
  %260 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %261 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = getelementptr inbounds %struct.pdc_ring_alloc, %struct.pdc_ring_alloc* %10, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds %struct.pdc_ring_alloc, %struct.pdc_ring_alloc* %10, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @dma_pool_free(i32 %262, i32* %264, i32 %266)
  br label %268

268:                                              ; preds = %259, %32
  %269 = load i32, i32* %7, align 4
  store i32 %269, i32* %3, align 4
  br label %270

270:                                              ; preds = %268, %257
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i8* @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.pdc_ring_alloc*, i32) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @dma_pool_free(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
