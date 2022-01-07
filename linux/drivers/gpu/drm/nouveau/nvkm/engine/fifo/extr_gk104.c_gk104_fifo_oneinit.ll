; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo = type { i32 }
%struct.gk104_fifo = type { i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 (%struct.gk104_fifo*)* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.nvkm_vmm = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%d PBDMA(s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"engine %2d: runlist %2d pbdma %2d (%s)\0A\00", align 1
@nvkm_subdev_name = common dso_local global i32* null, align 8
@NVKM_MEM_TARGET_INST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fifo*)* @gk104_fifo_oneinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_fifo_oneinit(%struct.nvkm_fifo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_fifo*, align 8
  %4 = alloca %struct.gk104_fifo*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca %struct.nvkm_vmm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.nvkm_fifo* %0, %struct.nvkm_fifo** %3, align 8
  %16 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %3, align 8
  %17 = call %struct.gk104_fifo* @gk104_fifo(%struct.nvkm_fifo* %16)
  store %struct.gk104_fifo* %17, %struct.gk104_fifo** %4, align 8
  %18 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %19 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store %struct.nvkm_subdev* %21, %struct.nvkm_subdev** %5, align 8
  %22 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %22, i32 0, i32 0
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %23, align 8
  store %struct.nvkm_device* %24, %struct.nvkm_device** %6, align 8
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %26 = call %struct.nvkm_vmm* @nvkm_bar_bar1_vmm(%struct.nvkm_device* %25)
  store %struct.nvkm_vmm* %26, %struct.nvkm_vmm** %7, align 8
  %27 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %28 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %27, i32 0, i32 6
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32 (%struct.gk104_fifo*)*, i32 (%struct.gk104_fifo*)** %32, align 8
  %34 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %35 = call i32 %33(%struct.gk104_fifo* %34)
  %36 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %37 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %39 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %40 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %44 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i32* @kcalloc(i32 %45, i32 4, i32 %46)
  store i32* %47, i32** %15, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %1
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %296

52:                                               ; preds = %1
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %69, %52
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %56 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %61 = load i32, i32* %12, align 4
  %62 = mul nsw i32 %61, 4
  %63 = add nsw i32 9104, %62
  %64 = call i32 @nvkm_rd32(%struct.nvkm_device* %60, i32 %63)
  %65 = load i32*, i32** %15, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %53

72:                                               ; preds = %53
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %102, %72
  %74 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  %77 = call i32 @nvkm_top_engine(%struct.nvkm_device* %74, i32 %75, i32* %9, i32* %8)
  store i32 %77, i32* %14, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %168

79:                                               ; preds = %73
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %10, align 4
  br label %80

80:                                               ; preds = %99, %79
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %83 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %80
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = shl i32 1, %92
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %10, align 4
  br label %102

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %80

102:                                              ; preds = %96, %80
  %103 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32*, i32** @nvkm_subdev_name, align 8
  %108 = load i32, i32* %14, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %105, i32 %106, i32 %111)
  %113 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @nvkm_device_engine(%struct.nvkm_device* %113, i32 %114)
  %116 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %117 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %116, i32 0, i32 7
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  store i32 %115, i32* %122, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %125 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %124, i32 0, i32 7
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store i32 %123, i32* %130, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %133 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %132, i32 0, i32 7
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  store i32 %131, i32* %138, align 4
  %139 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %140 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  %144 = call i8* @max(i32 %141, i32 %143)
  %145 = ptrtoint i8* %144 to i32
  %146 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %147 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %8, align 4
  %149 = shl i32 1, %148
  %150 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %151 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %150, i32 0, i32 5
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %149
  store i32 %158, i32* %156, align 8
  %159 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %160 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  %164 = call i8* @max(i32 %161, i32 %163)
  %165 = ptrtoint i8* %164 to i32
  %166 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %167 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  br label %73

168:                                              ; preds = %73
  %169 = load i32*, i32** %15, align 8
  %170 = call i32 @kfree(i32* %169)
  store i32 0, i32* %12, align 4
  br label %171

171:                                              ; preds = %251, %168
  %172 = load i32, i32* %12, align 4
  %173 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %174 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %254

177:                                              ; preds = %171
  store i32 0, i32* %13, align 4
  br label %178

178:                                              ; preds = %223, %177
  %179 = load i32, i32* %13, align 4
  %180 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %181 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %180, i32 0, i32 5
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @ARRAY_SIZE(i32* %187)
  %189 = icmp slt i32 %179, %188
  br i1 %189, label %190, label %226

190:                                              ; preds = %178
  %191 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %192 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %193 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %194 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = mul nsw i32 %196, 2
  %198 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %199 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %198, i32 0, i32 6
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %197, %204
  %206 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %207 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %206, i32 0, i32 5
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %207, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 4
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = call i32 @nvkm_memory_new(%struct.nvkm_device* %191, i32 %192, i32 %205, i32 4096, i32 0, i32* %216)
  store i32 %217, i32* %11, align 4
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %190
  %221 = load i32, i32* %11, align 4
  store i32 %221, i32* %2, align 4
  br label %296

222:                                              ; preds = %190
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %13, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %13, align 4
  br label %178

226:                                              ; preds = %178
  %227 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %228 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %227, i32 0, i32 5
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %228, align 8
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 3
  %234 = call i32 @init_waitqueue_head(i32* %233)
  %235 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %236 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %235, i32 0, i32 5
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %236, align 8
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 2
  %242 = call i32 @INIT_LIST_HEAD(i32* %241)
  %243 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %244 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %243, i32 0, i32 5
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %244, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 1
  %250 = call i32 @INIT_LIST_HEAD(i32* %249)
  br label %251

251:                                              ; preds = %226
  %252 = load i32, i32* %12, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %12, align 4
  br label %171

254:                                              ; preds = %171
  %255 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %256 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %257 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %258 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %257, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = mul nsw i32 %260, 512
  %262 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %263 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 1
  %265 = call i32 @nvkm_memory_new(%struct.nvkm_device* %255, i32 %256, i32 %261, i32 4096, i32 1, i32* %264)
  store i32 %265, i32* %11, align 4
  %266 = load i32, i32* %11, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %254
  %269 = load i32, i32* %11, align 4
  store i32 %269, i32* %2, align 4
  br label %296

270:                                              ; preds = %254
  %271 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %272 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %273 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @nvkm_memory_size(i32 %275)
  %277 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %278 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 0
  %280 = call i32 @nvkm_vmm_get(%struct.nvkm_vmm* %271, i32 12, i32 %276, i32* %279)
  store i32 %280, i32* %11, align 4
  %281 = load i32, i32* %11, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %270
  %284 = load i32, i32* %11, align 4
  store i32 %284, i32* %2, align 4
  br label %296

285:                                              ; preds = %270
  %286 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %287 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %291 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %292 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @nvkm_memory_map(i32 %289, i32 0, %struct.nvkm_vmm* %290, i32 %294, i32* null, i32 0)
  store i32 %295, i32* %2, align 4
  br label %296

296:                                              ; preds = %285, %283, %268, %220, %49
  %297 = load i32, i32* %2, align 4
  ret i32 %297
}

declare dso_local %struct.gk104_fifo* @gk104_fifo(%struct.nvkm_fifo*) #1

declare dso_local %struct.nvkm_vmm* @nvkm_bar_bar1_vmm(%struct.nvkm_device*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, ...) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_top_engine(%struct.nvkm_device*, i32, i32*, i32*) #1

declare dso_local i32 @nvkm_device_engine(%struct.nvkm_device*, i32) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nvkm_memory_new(%struct.nvkm_device*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nvkm_vmm_get(%struct.nvkm_vmm*, i32, i32, i32*) #1

declare dso_local i32 @nvkm_memory_size(i32) #1

declare dso_local i32 @nvkm_memory_map(i32, i32, %struct.nvkm_vmm*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
