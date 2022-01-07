; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_cleanup_device_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_cleanup_device_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i32, i32, %struct.qib_ctxtdata**, %struct.page**, %struct.page**, %struct.TYPE_4__*, i32*, i32, %struct.TYPE_3__* }
%struct.qib_ctxtdata = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.qib_ctxtdata**, %struct.qib_ctxtdata**, %struct.qib_ctxtdata**, %struct.qib_ctxtdata**, i32* }

@QIB_STATUS_CHIP_PRESENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @cleanup_device_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_device_data(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_ctxtdata**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.qib_ctxtdata*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %123, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %126

19:                                               ; preds = %13
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %21 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %20, i32 0, i32 11
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %19
  %30 = load i32, i32* @QIB_STATUS_CHIP_PRESENT, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %33 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %32, i32 0, i32 11
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %31
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %29, %19
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %44 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %43, i32 0, i32 11
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %52 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %51, i32 0, i32 11
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  %58 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %57, align 8
  %59 = call i32 @kfree(%struct.qib_ctxtdata** %58)
  %60 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %61 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %60, i32 0, i32 11
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  store %struct.qib_ctxtdata** null, %struct.qib_ctxtdata*** %66, align 8
  %67 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %68 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %67, i32 0, i32 11
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %73, align 8
  %75 = call i32 @kfree(%struct.qib_ctxtdata** %74)
  %76 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %77 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %76, i32 0, i32 11
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  store %struct.qib_ctxtdata** null, %struct.qib_ctxtdata*** %82, align 8
  %83 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %84 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %83, i32 0, i32 11
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %89, align 8
  %91 = call i32 @kfree(%struct.qib_ctxtdata** %90)
  %92 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %93 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %92, i32 0, i32 11
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  store %struct.qib_ctxtdata** null, %struct.qib_ctxtdata*** %98, align 8
  %99 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %100 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %99, i32 0, i32 11
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %105, align 8
  %107 = call i32 @kfree(%struct.qib_ctxtdata** %106)
  %108 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %109 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %108, i32 0, i32 11
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store %struct.qib_ctxtdata** null, %struct.qib_ctxtdata*** %114, align 8
  %115 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %116 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %115, i32 0, i32 11
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = call i32 @spin_unlock(i32* %121)
  br label %123

123:                                              ; preds = %42
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %4, align 4
  br label %13

126:                                              ; preds = %13
  %127 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %128 = call i32 @qib_disable_wc(%struct.qib_devdata* %127)
  %129 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %130 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %129, i32 0, i32 9
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %149

133:                                              ; preds = %126
  %134 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %135 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %134, i32 0, i32 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* @PAGE_SIZE, align 4
  %139 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %140 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %139, i32 0, i32 9
  %141 = load i32*, i32** %140, align 8
  %142 = bitcast i32* %141 to i8*
  %143 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %144 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %143, i32 0, i32 10
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @dma_free_coherent(i32* %137, i32 %138, i8* %142, i32 %145)
  %147 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %148 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %147, i32 0, i32 9
  store i32* null, i32** %148, align 8
  br label %149

149:                                              ; preds = %133, %126
  %150 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %151 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %150, i32 0, i32 7
  %152 = load %struct.page**, %struct.page*** %151, align 8
  %153 = icmp ne %struct.page** %152, null
  br i1 %153, label %154, label %228

154:                                              ; preds = %149
  %155 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %156 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %155, i32 0, i32 7
  %157 = load %struct.page**, %struct.page*** %156, align 8
  store %struct.page** %157, %struct.page*** %7, align 8
  %158 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %159 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %158, i32 0, i32 6
  %160 = load %struct.page**, %struct.page*** %159, align 8
  store %struct.page** %160, %struct.page*** %8, align 8
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %216, %154
  %162 = load i32, i32* %3, align 4
  %163 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %164 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %219

167:                                              ; preds = %161
  %168 = load i32, i32* %3, align 4
  %169 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %170 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = mul nsw i32 %168, %171
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %175 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %173, %176
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %212, %167
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %11, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %215

183:                                              ; preds = %179
  %184 = load %struct.page**, %struct.page*** %7, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.page*, %struct.page** %184, i64 %186
  %188 = load %struct.page*, %struct.page** %187, align 8
  %189 = icmp ne %struct.page* %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %183
  br label %212

191:                                              ; preds = %183
  %192 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %193 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %192, i32 0, i32 8
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = load %struct.page**, %struct.page*** %8, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.page*, %struct.page** %195, i64 %197
  %199 = load %struct.page*, %struct.page** %198, align 8
  %200 = load i32, i32* @PAGE_SIZE, align 4
  %201 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %202 = call i32 @pci_unmap_page(%struct.TYPE_4__* %194, %struct.page* %199, i32 %200, i32 %201)
  %203 = load %struct.page**, %struct.page*** %7, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.page*, %struct.page** %203, i64 %205
  %207 = call i32 @qib_release_user_pages(%struct.page** %206, i32 1)
  %208 = load %struct.page**, %struct.page*** %7, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.page*, %struct.page** %208, i64 %210
  store %struct.page* null, %struct.page** %211, align 8
  br label %212

212:                                              ; preds = %191, %190
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %9, align 4
  br label %179

215:                                              ; preds = %179
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %3, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %3, align 4
  br label %161

219:                                              ; preds = %161
  %220 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %221 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %220, i32 0, i32 7
  store %struct.page** null, %struct.page*** %221, align 8
  %222 = load %struct.page**, %struct.page*** %7, align 8
  %223 = call i32 @vfree(%struct.page** %222)
  %224 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %225 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %224, i32 0, i32 6
  store %struct.page** null, %struct.page*** %225, align 8
  %226 = load %struct.page**, %struct.page*** %8, align 8
  %227 = call i32 @vfree(%struct.page** %226)
  br label %228

228:                                              ; preds = %219, %149
  %229 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %230 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %229, i32 0, i32 4
  %231 = load i64, i64* %6, align 8
  %232 = call i32 @spin_lock_irqsave(i32* %230, i64 %231)
  %233 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %234 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %233, i32 0, i32 5
  %235 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %234, align 8
  store %struct.qib_ctxtdata** %235, %struct.qib_ctxtdata*** %5, align 8
  %236 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %237 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %236, i32 0, i32 5
  store %struct.qib_ctxtdata** null, %struct.qib_ctxtdata*** %237, align 8
  %238 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %239 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %238, i32 0, i32 4
  %240 = load i64, i64* %6, align 8
  %241 = call i32 @spin_unlock_irqrestore(i32* %239, i64 %240)
  store i32 0, i32* %3, align 4
  br label %242

242:                                              ; preds = %266, %228
  %243 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %5, align 8
  %244 = icmp ne %struct.qib_ctxtdata** %243, null
  br i1 %244, label %245, label %251

245:                                              ; preds = %242
  %246 = load i32, i32* %3, align 4
  %247 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %248 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = icmp slt i32 %246, %249
  br label %251

251:                                              ; preds = %245, %242
  %252 = phi i1 [ false, %242 ], [ %250, %245 ]
  br i1 %252, label %253, label %269

253:                                              ; preds = %251
  %254 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %5, align 8
  %255 = load i32, i32* %3, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %254, i64 %256
  %258 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %257, align 8
  store %struct.qib_ctxtdata* %258, %struct.qib_ctxtdata** %12, align 8
  %259 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %5, align 8
  %260 = load i32, i32* %3, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %259, i64 %261
  store %struct.qib_ctxtdata* null, %struct.qib_ctxtdata** %262, align 8
  %263 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %264 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %12, align 8
  %265 = call i32 @qib_free_ctxtdata(%struct.qib_devdata* %263, %struct.qib_ctxtdata* %264)
  br label %266

266:                                              ; preds = %253
  %267 = load i32, i32* %3, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %3, align 4
  br label %242

269:                                              ; preds = %251
  %270 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %5, align 8
  %271 = call i32 @kfree(%struct.qib_ctxtdata** %270)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kfree(%struct.qib_ctxtdata**) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @qib_disable_wc(%struct.qib_devdata*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

declare dso_local i32 @pci_unmap_page(%struct.TYPE_4__*, %struct.page*, i32, i32) #1

declare dso_local i32 @qib_release_user_pages(%struct.page**, i32) #1

declare dso_local i32 @vfree(%struct.page**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qib_free_ctxtdata(%struct.qib_devdata*, %struct.qib_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
