; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_chan = type { i32, i64, %struct.edma_cc*, i32*, %struct.edma_desc*, %struct.TYPE_9__ }
%struct.edma_cc = type { i32 }
%struct.edma_desc = type { i32, i32, i64, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.virt_dma_desc = type { i32, i32 }

@MAX_NR_SG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [129 x i8] c"\0A pset[%d]:\0A  chnum\09%d\0A  slot\09%d\0A  opt\09%08x\0A  src\09%08x\0A  dst\09%08x\0A  abcnt\09%08x\0A  ccnt\09%08x\0A  bidx\09%08x\0A  cidx\09%08x\0A  lkrld\09%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"missed event on channel %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"first transfer starting on channel %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"chan: %d: completed %d elements, resuming\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edma_chan*)* @edma_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edma_execute(%struct.edma_chan* %0) #0 {
  %2 = alloca %struct.edma_chan*, align 8
  %3 = alloca %struct.edma_cc*, align 8
  %4 = alloca %struct.virt_dma_desc*, align 8
  %5 = alloca %struct.edma_desc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.edma_chan* %0, %struct.edma_chan** %2, align 8
  %11 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %12 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %11, i32 0, i32 2
  %13 = load %struct.edma_cc*, %struct.edma_cc** %12, align 8
  store %struct.edma_cc* %13, %struct.edma_cc** %3, align 8
  %14 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %15 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %6, align 8
  %21 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %22 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %21, i32 0, i32 4
  %23 = load %struct.edma_desc*, %struct.edma_desc** %22, align 8
  %24 = icmp ne %struct.edma_desc* %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %1
  %26 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %27 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %26, i32 0, i32 5
  %28 = call %struct.virt_dma_desc* @vchan_next_desc(%struct.TYPE_9__* %27)
  store %struct.virt_dma_desc* %28, %struct.virt_dma_desc** %4, align 8
  %29 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %30 = icmp ne %struct.virt_dma_desc* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %304

32:                                               ; preds = %25
  %33 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %34 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %33, i32 0, i32 1
  %35 = call i32 @list_del(i32* %34)
  %36 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %37 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %36, i32 0, i32 0
  %38 = call %struct.edma_desc* @to_edma_desc(i32* %37)
  %39 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %40 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %39, i32 0, i32 4
  store %struct.edma_desc* %38, %struct.edma_desc** %40, align 8
  br label %41

41:                                               ; preds = %32, %1
  %42 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %43 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %42, i32 0, i32 4
  %44 = load %struct.edma_desc*, %struct.edma_desc** %43, align 8
  store %struct.edma_desc* %44, %struct.edma_desc** %5, align 8
  %45 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %46 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %49 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %47, %50
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @MAX_NR_SG, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @min(i32 %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %56 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %203, %41
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %206

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %64 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  store i32 %66, i32* %8, align 4
  %67 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %68 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %69 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %76 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %75, i32 0, i32 3
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = call i32 @edma_write_slot(%struct.edma_cc* %67, i32 %74, %struct.TYPE_10__* %81)
  %83 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %84 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %83, i32 0, i32 3
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %92 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %98 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %101 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %108 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %107, i32 0, i32 3
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %117 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %116, i32 0, i32 3
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %126 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %125, i32 0, i32 3
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %135 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %134, i32 0, i32 3
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %144 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %143, i32 0, i32 3
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %153 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %152, i32 0, i32 3
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %162 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %161, i32 0, i32 3
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %171 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %170, i32 0, i32 3
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @dev_vdbg(%struct.device* %95, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %99, i32 %106, i32 %115, i32 %124, i32 %133, i32 %142, i32 %151, i32 %160, i32 %169, i32 %178)
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %10, align 4
  %182 = sub nsw i32 %181, 1
  %183 = icmp ne i32 %180, %182
  br i1 %183, label %184, label %202

184:                                              ; preds = %61
  %185 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %186 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %187 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %186, i32 0, i32 3
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %194 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @edma_link(%struct.edma_cc* %185, i32 %192, i32 %200)
  br label %202

202:                                              ; preds = %184, %61
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %7, align 4
  br label %57

206:                                              ; preds = %57
  %207 = load i32, i32* %10, align 4
  %208 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %209 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, %207
  store i32 %211, i32* %209, align 4
  %212 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %213 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %216 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %214, %217
  br i1 %218, label %219, label %257

219:                                              ; preds = %206
  %220 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %221 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %240

224:                                              ; preds = %219
  %225 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %226 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %227 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %10, align 4
  %230 = sub nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %235 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %234, i32 0, i32 3
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @edma_link(%struct.edma_cc* %225, i32 %233, i32 %238)
  br label %256

240:                                              ; preds = %219
  %241 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %242 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %243 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %242, i32 0, i32 3
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = sub nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %251 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %250, i32 0, i32 2
  %252 = load %struct.edma_cc*, %struct.edma_cc** %251, align 8
  %253 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @edma_link(%struct.edma_cc* %241, i32 %249, i32 %254)
  br label %256

256:                                              ; preds = %240, %224
  br label %257

257:                                              ; preds = %256, %206
  %258 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %259 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %278

262:                                              ; preds = %257
  %263 = load %struct.device*, %struct.device** %6, align 8
  %264 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %265 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %263, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %266)
  %268 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %269 = call i32 @edma_clean_channel(%struct.edma_chan* %268)
  %270 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %271 = call i32 @edma_stop(%struct.edma_chan* %270)
  %272 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %273 = call i32 @edma_start(%struct.edma_chan* %272)
  %274 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %275 = call i32 @edma_trigger_channel(%struct.edma_chan* %274)
  %276 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %277 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %276, i32 0, i32 1
  store i64 0, i64* %277, align 8
  br label %304

278:                                              ; preds = %257
  %279 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %280 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @MAX_NR_SG, align 4
  %283 = icmp sle i32 %281, %282
  br i1 %283, label %284, label %292

284:                                              ; preds = %278
  %285 = load %struct.device*, %struct.device** %6, align 8
  %286 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %287 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %285, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %288)
  %290 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %291 = call i32 @edma_start(%struct.edma_chan* %290)
  br label %303

292:                                              ; preds = %278
  %293 = load %struct.device*, %struct.device** %6, align 8
  %294 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %295 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.edma_desc*, %struct.edma_desc** %5, align 8
  %298 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %293, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %296, i32 %299)
  %301 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %302 = call i32 @edma_resume(%struct.edma_chan* %301)
  br label %303

303:                                              ; preds = %292, %284
  br label %304

304:                                              ; preds = %31, %303, %262
  ret void
}

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(%struct.TYPE_9__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local %struct.edma_desc* @to_edma_desc(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @edma_write_slot(%struct.edma_cc*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @dev_vdbg(%struct.device*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @edma_link(%struct.edma_cc*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @edma_clean_channel(%struct.edma_chan*) #1

declare dso_local i32 @edma_stop(%struct.edma_chan*) #1

declare dso_local i32 @edma_start(%struct.edma_chan*) #1

declare dso_local i32 @edma_trigger_channel(%struct.edma_chan*) #1

declare dso_local i32 @edma_resume(%struct.edma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
