; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_saa7146_pgtable_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_saa7146_pgtable_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.saa7146_buf = type { %struct.saa7146_pgtable*, %struct.TYPE_2__*, i32 }
%struct.saa7146_pgtable = type { i32*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.videobuf_dmabuf = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32, i64 }
%struct.saa7146_format = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"dev:%p, buf:%p, sg_len:%d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"size:%d, m1:%d, m2:%d, m3:%d, o1:%d, o2:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.saa7146_buf*)* @saa7146_pgtable_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7146_pgtable_build(%struct.saa7146_dev* %0, %struct.saa7146_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_buf*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.videobuf_dmabuf*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.saa7146_format*, align 8
  %11 = alloca %struct.saa7146_pgtable*, align 8
  %12 = alloca %struct.saa7146_pgtable*, align 8
  %13 = alloca %struct.saa7146_pgtable*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.saa7146_pgtable*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_buf* %1, %struct.saa7146_buf** %5, align 8
  %27 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %28 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %27, i32 0, i32 0
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %6, align 8
  %30 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %31 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %30, i32 0, i32 2
  %32 = call %struct.videobuf_dmabuf* @videobuf_to_dma(i32* %31)
  store %struct.videobuf_dmabuf* %32, %struct.videobuf_dmabuf** %7, align 8
  %33 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %7, align 8
  %34 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %33, i32 0, i32 1
  %35 = load %struct.scatterlist*, %struct.scatterlist** %34, align 8
  store %struct.scatterlist* %35, %struct.scatterlist** %8, align 8
  %36 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %7, align 8
  %37 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  %39 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %40 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %41 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %39, i32 %44)
  store %struct.saa7146_format* %45, %struct.saa7146_format** %10, align 8
  %46 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %47 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @DEB_EE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %46, %struct.saa7146_buf* %47, i32 %48)
  %50 = load %struct.saa7146_format*, %struct.saa7146_format** %10, align 8
  %51 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @IS_PLANAR(i32 %52)
  %54 = icmp ne i64 0, %53
  br i1 %54, label %55, label %327

55:                                               ; preds = %2
  %56 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %57 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %56, i32 0, i32 0
  %58 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %57, align 8
  %59 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %58, i64 0
  store %struct.saa7146_pgtable* %59, %struct.saa7146_pgtable** %11, align 8
  %60 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %61 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %60, i32 0, i32 0
  %62 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %61, align 8
  %63 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %62, i64 1
  store %struct.saa7146_pgtable* %63, %struct.saa7146_pgtable** %12, align 8
  %64 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %65 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %64, i32 0, i32 0
  %66 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %65, align 8
  %67 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %66, i64 2
  store %struct.saa7146_pgtable* %67, %struct.saa7146_pgtable** %13, align 8
  %68 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %69 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %74 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %72, %77
  store i32 %78, i32* %18, align 4
  %79 = load %struct.saa7146_format*, %struct.saa7146_format** %10, align 8
  %80 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %162 [
    i32 12, label %82
    i32 16, label %123
  ]

82:                                               ; preds = %55
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = sdiv i32 %85, %86
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %21, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = sdiv i32 %90, 4
  %92 = add nsw i32 %89, %91
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = sdiv i32 %94, %95
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %22, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = sdiv i32 %99, 2
  %101 = add nsw i32 %98, %100
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = sdiv i32 %103, %104
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %23, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* @PAGE_SIZE, align 4
  %109 = srem i32 %107, %108
  store i32 %109, i32* %24, align 4
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = sdiv i32 %111, 4
  %113 = add nsw i32 %110, %112
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = srem i32 %113, %114
  store i32 %115, i32* %25, align 4
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* %23, align 4
  %120 = load i32, i32* %24, align 4
  %121 = load i32, i32* %25, align 4
  %122 = call i32 @DEB_CAP(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121)
  br label %163

123:                                              ; preds = %55
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* @PAGE_SIZE, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* @PAGE_SIZE, align 4
  %128 = sdiv i32 %126, %127
  %129 = sub nsw i32 %128, 1
  store i32 %129, i32* %21, align 4
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = sdiv i32 %131, 2
  %133 = add nsw i32 %130, %132
  %134 = load i32, i32* @PAGE_SIZE, align 4
  %135 = add nsw i32 %133, %134
  %136 = load i32, i32* @PAGE_SIZE, align 4
  %137 = sdiv i32 %135, %136
  %138 = sub nsw i32 %137, 1
  store i32 %138, i32* %22, align 4
  %139 = load i32, i32* %18, align 4
  %140 = mul nsw i32 2, %139
  %141 = load i32, i32* @PAGE_SIZE, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, i32* @PAGE_SIZE, align 4
  %144 = sdiv i32 %142, %143
  %145 = sub nsw i32 %144, 1
  store i32 %145, i32* %23, align 4
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* @PAGE_SIZE, align 4
  %148 = srem i32 %146, %147
  store i32 %148, i32* %24, align 4
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %18, align 4
  %151 = sdiv i32 %150, 2
  %152 = add nsw i32 %149, %151
  %153 = load i32, i32* @PAGE_SIZE, align 4
  %154 = srem i32 %152, %153
  store i32 %154, i32* %25, align 4
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %21, align 4
  %157 = load i32, i32* %22, align 4
  %158 = load i32, i32* %23, align 4
  %159 = load i32, i32* %24, align 4
  %160 = load i32, i32* %25, align 4
  %161 = call i32 @DEB_CAP(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160)
  br label %163

162:                                              ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %338

163:                                              ; preds = %123, %82
  %164 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %11, align 8
  %165 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  store i32* %166, i32** %14, align 8
  %167 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %12, align 8
  %168 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  store i32* %169, i32** %15, align 8
  %170 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %13, align 8
  %171 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  store i32* %172, i32** %16, align 8
  store i32 0, i32* %19, align 4
  br label %173

173:                                              ; preds = %200, %163
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %205

177:                                              ; preds = %173
  store i32 0, i32* %20, align 4
  br label %178

178:                                              ; preds = %194, %177
  %179 = load i32, i32* %20, align 4
  %180 = mul nsw i32 %179, 4096
  %181 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %182 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %199

185:                                              ; preds = %178
  %186 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %187 = call i64 @sg_dma_address(%struct.scatterlist* %186)
  %188 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %189 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = sub nsw i64 %187, %190
  %192 = call i32 @cpu_to_le32(i64 %191)
  %193 = load i32*, i32** %14, align 8
  store i32 %192, i32* %193, align 4
  br label %194

194:                                              ; preds = %185
  %195 = load i32, i32* %20, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %20, align 4
  %197 = load i32*, i32** %14, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %14, align 8
  br label %178

199:                                              ; preds = %178
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %19, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %19, align 4
  %203 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %204 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %203, i32 1
  store %struct.scatterlist* %204, %struct.scatterlist** %8, align 8
  br label %173

205:                                              ; preds = %173
  %206 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %7, align 8
  %207 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %206, i32 0, i32 1
  %208 = load %struct.scatterlist*, %struct.scatterlist** %207, align 8
  %209 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %11, align 8
  %212 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %211, i32 0, i32 1
  store i64 %210, i64* %212, align 8
  %213 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %11, align 8
  %214 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* %24, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %215, %217
  %219 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %12, align 8
  %220 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %219, i32 0, i32 1
  store i64 %218, i64* %220, align 8
  %221 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %11, align 8
  %222 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* %25, align 4
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %223, %225
  %227 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %13, align 8
  %228 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %227, i32 0, i32 1
  store i64 %226, i64* %228, align 8
  %229 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %11, align 8
  %230 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  store i32* %231, i32** %14, align 8
  %232 = load i32, i32* %21, align 4
  store i32 %232, i32* %19, align 4
  br label %233

233:                                              ; preds = %244, %205
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* %22, align 4
  %236 = icmp sle i32 %234, %235
  br i1 %236, label %237, label %249

237:                                              ; preds = %233
  %238 = load i32*, i32** %14, align 8
  %239 = load i32, i32* %19, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %15, align 8
  store i32 %242, i32* %243, align 4
  br label %244

244:                                              ; preds = %237
  %245 = load i32, i32* %19, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %19, align 4
  %247 = load i32*, i32** %15, align 8
  %248 = getelementptr inbounds i32, i32* %247, i32 1
  store i32* %248, i32** %15, align 8
  br label %233

249:                                              ; preds = %233
  %250 = load i32*, i32** %15, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 -1
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %17, align 4
  br label %253

253:                                              ; preds = %259, %249
  %254 = load i32, i32* %19, align 4
  %255 = icmp slt i32 %254, 1024
  br i1 %255, label %256, label %264

256:                                              ; preds = %253
  %257 = load i32, i32* %17, align 4
  %258 = load i32*, i32** %15, align 8
  store i32 %257, i32* %258, align 4
  br label %259

259:                                              ; preds = %256
  %260 = load i32, i32* %19, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %19, align 4
  %262 = load i32*, i32** %15, align 8
  %263 = getelementptr inbounds i32, i32* %262, i32 1
  store i32* %263, i32** %15, align 8
  br label %253

264:                                              ; preds = %253
  %265 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %11, align 8
  %266 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  store i32* %267, i32** %14, align 8
  %268 = load i32, i32* %22, align 4
  store i32 %268, i32* %19, align 4
  br label %269

269:                                              ; preds = %280, %264
  %270 = load i32, i32* %19, align 4
  %271 = load i32, i32* %23, align 4
  %272 = icmp sle i32 %270, %271
  br i1 %272, label %273, label %285

273:                                              ; preds = %269
  %274 = load i32*, i32** %14, align 8
  %275 = load i32, i32* %19, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load i32*, i32** %16, align 8
  store i32 %278, i32* %279, align 4
  br label %280

280:                                              ; preds = %273
  %281 = load i32, i32* %19, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %19, align 4
  %283 = load i32*, i32** %16, align 8
  %284 = getelementptr inbounds i32, i32* %283, i32 1
  store i32* %284, i32** %16, align 8
  br label %269

285:                                              ; preds = %269
  %286 = load i32*, i32** %16, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 -1
  %288 = load i32, i32* %287, align 4
  store i32 %288, i32* %17, align 4
  br label %289

289:                                              ; preds = %295, %285
  %290 = load i32, i32* %19, align 4
  %291 = icmp slt i32 %290, 1024
  br i1 %291, label %292, label %300

292:                                              ; preds = %289
  %293 = load i32, i32* %17, align 4
  %294 = load i32*, i32** %16, align 8
  store i32 %293, i32* %294, align 4
  br label %295

295:                                              ; preds = %292
  %296 = load i32, i32* %19, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %19, align 4
  %298 = load i32*, i32** %16, align 8
  %299 = getelementptr inbounds i32, i32* %298, i32 1
  store i32* %299, i32** %16, align 8
  br label %289

300:                                              ; preds = %289
  %301 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %11, align 8
  %302 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %21, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  store i32* %306, i32** %14, align 8
  %307 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %11, align 8
  %308 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %307, i32 0, i32 0
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %21, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %312, align 4
  store i32 %313, i32* %17, align 4
  %314 = load i32, i32* %21, align 4
  store i32 %314, i32* %19, align 4
  br label %315

315:                                              ; preds = %321, %300
  %316 = load i32, i32* %19, align 4
  %317 = icmp slt i32 %316, 1024
  br i1 %317, label %318, label %326

318:                                              ; preds = %315
  %319 = load i32, i32* %17, align 4
  %320 = load i32*, i32** %14, align 8
  store i32 %319, i32* %320, align 4
  br label %321

321:                                              ; preds = %318
  %322 = load i32, i32* %19, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %19, align 4
  %324 = load i32*, i32** %14, align 8
  %325 = getelementptr inbounds i32, i32* %324, i32 1
  store i32* %325, i32** %14, align 8
  br label %315

326:                                              ; preds = %315
  br label %337

327:                                              ; preds = %2
  %328 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %329 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %328, i32 0, i32 0
  %330 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %329, align 8
  %331 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %330, i64 0
  store %struct.saa7146_pgtable* %331, %struct.saa7146_pgtable** %26, align 8
  %332 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %333 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %26, align 8
  %334 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %335 = load i32, i32* %9, align 4
  %336 = call i32 @saa7146_pgtable_build_single(%struct.pci_dev* %332, %struct.saa7146_pgtable* %333, %struct.scatterlist* %334, i32 %335)
  store i32 %336, i32* %3, align 4
  br label %338

337:                                              ; preds = %326
  store i32 0, i32* %3, align 4
  br label %338

338:                                              ; preds = %337, %327, %162
  %339 = load i32, i32* %3, align 4
  ret i32 %339
}

declare dso_local %struct.videobuf_dmabuf* @videobuf_to_dma(i32*) #1

declare dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @DEB_EE(i8*, %struct.saa7146_dev*, %struct.saa7146_buf*, i32) #1

declare dso_local i64 @IS_PLANAR(i32) #1

declare dso_local i32 @DEB_CAP(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @saa7146_pgtable_build_single(%struct.pci_dev*, %struct.saa7146_pgtable*, %struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
