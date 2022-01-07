; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_bci.c_savage_dma_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_bci.c_savage_dma_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }

@BCI_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"first=%u, cur=%u, first->flushed=%u, cur->used=%u, pad=%u, align=%u\0A\00", align 1
@SAVAGE_DMA_PAGE_SIZE = common dso_local global i32 0, align 4
@BCI_CMD_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"phys_addr=%lx, len=%u\0A\00", align 1
@SAVAGE_DMABUFADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"first=cur=%u, cur->used=%u, cur->flushed=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @savage_dma_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @savage_dma_flush(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @BCI_LOCALS, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %31, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  br label %335

42:                                               ; preds = %23, %1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 5
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub i32 0, %50
  %52 = and i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 5
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %60, %61
  %63 = sub i32 0, %62
  %64 = and i32 %63, 7
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %74, i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %130

88:                                               ; preds = %42
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 7
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i32*
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @SAVAGE_DMA_PAGE_SIZE, align 4
  %97 = mul i32 %95, %96
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 5
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %99, i64 %108
  store i32* %109, i32** %12, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 5
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add i32 %118, %110
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %123, %88
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32, i32* @BCI_CMD_WAIT, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %12, align 8
  store i32 %124, i32* %125, align 4
  %127 = load i32, i32* %7, align 4
  %128 = add i32 %127, -1
  store i32 %128, i32* %7, align 4
  br label %120

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129, %42
  %131 = call i32 (...) @mb()
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 7
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* @SAVAGE_DMA_PAGE_SIZE, align 4
  %139 = mul i32 %137, %138
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 5
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = load i32, i32* %3, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = add i32 %139, %147
  %149 = mul i32 %148, 4
  %150 = add i32 %136, %149
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %11, align 8
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* %3, align 4
  %154 = sub i32 %152, %153
  %155 = load i32, i32* @SAVAGE_DMA_PAGE_SIZE, align 4
  %156 = mul i32 %154, %155
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 5
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = add i32 %156, %164
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 5
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = load i32, i32* %3, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sub i32 %165, %173
  store i32 %174, i32* %9, align 4
  %175 = load i64, i64* %11, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = or i64 %175, %178
  %180 = trunc i64 %179 to i32
  %181 = load i32, i32* %9, align 4
  %182 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %180, i32 %181)
  %183 = call i32 @BEGIN_BCI(i32 3)
  %184 = load i32, i32* @SAVAGE_DMABUFADDR, align 4
  %185 = call i32 @BCI_SET_REGISTERS(i32 %184, i32 1)
  %186 = load i64, i64* %11, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = or i64 %186, %189
  %191 = call i32 @BCI_WRITE(i64 %190)
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @BCI_DMA(i32 %192)
  %194 = load i32, i32* %8, align 4
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 5
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = load i32, i32* %4, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = add i32 %202, %194
  store i32 %203, i32* %201, align 4
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %205 = call i32 @savage_bci_emit_event(%struct.TYPE_8__* %204, i32 0)
  store i32 %205, i32* %5, align 4
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %3, align 4
  store i32 %209, i32* %10, align 4
  br label %210

210:                                              ; preds = %239, %130
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %4, align 4
  %213 = icmp ult i32 %211, %212
  br i1 %213, label %214, label %242

214:                                              ; preds = %210
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 5
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 2
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @SET_AGE(i32* %221, i32 %222, i32 %223)
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 5
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %226, align 8
  %228 = load i32, i32* %10, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  store i32 0, i32* %231, align 4
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 5
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = load i32, i32* %10, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 1
  store i32 0, i32* %238, align 4
  br label %239

239:                                              ; preds = %214
  %240 = load i32, i32* %10, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %10, align 4
  br label %210

242:                                              ; preds = %210
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 5
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %244, align 8
  %246 = load i32, i32* %4, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @SAVAGE_DMA_PAGE_SIZE, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %292

253:                                              ; preds = %242
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 5
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %255, align 8
  %257 = load i32, i32* %4, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 2
  %261 = load i32, i32* %5, align 4
  %262 = load i32, i32* %6, align 4
  %263 = call i32 @SET_AGE(i32* %260, i32 %261, i32 %262)
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 5
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %265, align 8
  %267 = load i32, i32* %4, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 0
  store i32 0, i32* %270, align 4
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 5
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %272, align 8
  %274 = load i32, i32* %4, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 1
  store i32 0, i32* %277, align 4
  %278 = load i32, i32* %4, align 4
  %279 = add i32 %278, 1
  store i32 %279, i32* %4, align 4
  %280 = load i32, i32* %4, align 4
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %280, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %253
  store i32 0, i32* %4, align 4
  br label %286

286:                                              ; preds = %285, %253
  %287 = load i32, i32* %4, align 4
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 1
  store i32 %287, i32* %289, align 4
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 0
  store i32 %287, i32* %291, align 8
  br label %311

292:                                              ; preds = %242
  %293 = load i32, i32* %4, align 4
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 0
  store i32 %293, i32* %295, align 8
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 5
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %297, align 8
  %299 = load i32, i32* %10, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 5
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %305, align 8
  %307 = load i32, i32* %4, align 4
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 1
  store i32 %303, i32* %310, align 4
  br label %311

311:                                              ; preds = %292, %286
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 6
  %314 = load i32, i32* %5, align 4
  %315 = load i32, i32* %6, align 4
  %316 = call i32 @SET_AGE(i32* %313, i32 %314, i32 %315)
  %317 = load i32, i32* %4, align 4
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 5
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %319, align 8
  %321 = load i32, i32* %4, align 4
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 5
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %327, align 8
  %329 = load i32, i32* %4, align 4
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %317, i32 %325, i32 %333)
  br label %335

335:                                              ; preds = %311, %41
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, ...) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @BEGIN_BCI(i32) #1

declare dso_local i32 @BCI_SET_REGISTERS(i32, i32) #1

declare dso_local i32 @BCI_WRITE(i64) #1

declare dso_local i32 @BCI_DMA(i32) #1

declare dso_local i32 @savage_bci_emit_event(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @SET_AGE(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
