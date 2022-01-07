; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv40.c_nv40_gr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv40.c_nv40_gr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.nv40_gr = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.nvkm_device*, i32)* }

@NV40_PGRAPH_CTXCTL_CUR = common dso_local global i32 0, align 4
@NV03_PGRAPH_INTR = common dso_local global i32 0, align 4
@NV40_PGRAPH_INTR_EN = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_0 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_1 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_3 = common dso_local global i32 0, align 4
@NV10_PGRAPH_DEBUG_4 = common dso_local global i32 0, align 4
@NV04_PGRAPH_LIMIT_VIOL_PIX = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV10_PGRAPH_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv40_gr_init(%struct.nvkm_gr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_gr*, align 8
  %4 = alloca %struct.nv40_gr*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %3, align 8
  %10 = load %struct.nvkm_gr*, %struct.nvkm_gr** %3, align 8
  %11 = call %struct.nv40_gr* @nv40_gr(%struct.nvkm_gr* %10)
  store %struct.nv40_gr* %11, %struct.nv40_gr** %4, align 8
  %12 = load %struct.nv40_gr*, %struct.nv40_gr** %4, align 8
  %13 = getelementptr inbounds %struct.nv40_gr, %struct.nv40_gr* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %5, align 8
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %19 = load %struct.nv40_gr*, %struct.nv40_gr** %4, align 8
  %20 = getelementptr inbounds %struct.nv40_gr, %struct.nv40_gr* %19, i32 0, i32 0
  %21 = call i32 @nv40_grctx_init(%struct.nvkm_device* %18, i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %231

26:                                               ; preds = %1
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %28 = load i32, i32* @NV40_PGRAPH_CTXCTL_CUR, align 4
  %29 = call i32 @nvkm_wr32(%struct.nvkm_device* %27, i32 %28, i32 0)
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %31 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %32 = call i32 @nvkm_wr32(%struct.nvkm_device* %30, i32 %31, i32 -1)
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %34 = load i32, i32* @NV40_PGRAPH_INTR_EN, align 4
  %35 = call i32 @nvkm_wr32(%struct.nvkm_device* %33, i32 %34, i32 -1)
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %37 = load i32, i32* @NV04_PGRAPH_DEBUG_0, align 4
  %38 = call i32 @nvkm_wr32(%struct.nvkm_device* %36, i32 %37, i32 -1)
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %40 = load i32, i32* @NV04_PGRAPH_DEBUG_0, align 4
  %41 = call i32 @nvkm_wr32(%struct.nvkm_device* %39, i32 %40, i32 0)
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %43 = load i32, i32* @NV04_PGRAPH_DEBUG_1, align 4
  %44 = call i32 @nvkm_wr32(%struct.nvkm_device* %42, i32 %43, i32 1074956224)
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %46 = load i32, i32* @NV04_PGRAPH_DEBUG_3, align 4
  %47 = call i32 @nvkm_wr32(%struct.nvkm_device* %45, i32 %46, i32 -522289067)
  %48 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %49 = load i32, i32* @NV10_PGRAPH_DEBUG_4, align 4
  %50 = call i32 @nvkm_wr32(%struct.nvkm_device* %48, i32 %49, i32 32768)
  %51 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %52 = load i32, i32* @NV04_PGRAPH_LIMIT_VIOL_PIX, align 4
  %53 = call i32 @nvkm_wr32(%struct.nvkm_device* %51, i32 %52, i32 12467295)
  %54 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %55 = load i32, i32* @NV10_PGRAPH_CTX_CONTROL, align 4
  %56 = call i32 @nvkm_wr32(%struct.nvkm_device* %54, i32 %55, i32 268501248)
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %58 = load i32, i32* @NV10_PGRAPH_STATE, align 4
  %59 = call i32 @nvkm_wr32(%struct.nvkm_device* %57, i32 %58, i32 -1)
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %61 = call i32 @nvkm_rd32(%struct.nvkm_device* %60, i32 5440)
  %62 = and i32 %61, 255
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %72, %65
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = ashr i32 %73, 1
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %66

77:                                               ; preds = %66
  %78 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @nvkm_wr32(%struct.nvkm_device* %78, i32 4214784, i32 %79)
  br label %81

81:                                               ; preds = %77, %26
  %82 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %83 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 64
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %88 = call i32 @nvkm_wr32(%struct.nvkm_device* %87, i32 4196784, i32 -2094526465)
  %89 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %90 = call i32 @nvkm_wr32(%struct.nvkm_device* %89, i32 4196788, i32 160)
  br label %96

91:                                               ; preds = %81
  %92 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %93 = call i32 @nvkm_wr32(%struct.nvkm_device* %92, i32 4196384, i32 -2094526721)
  %94 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %95 = call i32 @nvkm_wr32(%struct.nvkm_device* %94, i32 4196388, i32 160)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %98 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  switch i32 %99, label %125 [
    i32 64, label %100
    i32 69, label %100
    i32 65, label %105
    i32 66, label %105
    i32 67, label %110
    i32 68, label %115
    i32 70, label %115
    i32 74, label %115
    i32 76, label %115
    i32 78, label %115
    i32 71, label %120
    i32 73, label %120
    i32 75, label %120
  ]

100:                                              ; preds = %96, %96
  %101 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %102 = call i32 @nvkm_wr32(%struct.nvkm_device* %101, i32 4196792, i32 7922534)
  %103 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %104 = call i32 @nvkm_wr32(%struct.nvkm_device* %103, i32 4196796, i32 332)
  br label %126

105:                                              ; preds = %96, %96
  %106 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %107 = call i32 @nvkm_wr32(%struct.nvkm_device* %106, i32 4196392, i32 7706367)
  %108 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %109 = call i32 @nvkm_wr32(%struct.nvkm_device* %108, i32 4196396, i32 264)
  br label %126

110:                                              ; preds = %96
  %111 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %112 = call i32 @nvkm_wr32(%struct.nvkm_device* %111, i32 4196392, i32 7523191)
  %113 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %114 = call i32 @nvkm_wr32(%struct.nvkm_device* %113, i32 4196396, i32 264)
  br label %126

115:                                              ; preds = %96, %96, %96, %96, %96
  %116 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %117 = call i32 @nvkm_wr32(%struct.nvkm_device* %116, i32 4196448, i32 0)
  %118 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %119 = call i32 @nvkm_wr32(%struct.nvkm_device* %118, i32 4196452, i32 0)
  br label %126

120:                                              ; preds = %96, %96, %96
  %121 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %122 = call i32 @nvkm_wr32(%struct.nvkm_device* %121, i32 4196392, i32 126027280)
  %123 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %124 = call i32 @nvkm_wr32(%struct.nvkm_device* %123, i32 4196396, i32 362)
  br label %126

125:                                              ; preds = %96
  br label %126

126:                                              ; preds = %125, %120, %115, %110, %105, %100
  %127 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %128 = call i32 @nvkm_wr32(%struct.nvkm_device* %127, i32 4197176, i32 805304320)
  %129 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %130 = call i32 @nvkm_wr32(%struct.nvkm_device* %129, i32 4197180, i32 24576)
  %131 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %132 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  switch i32 %133, label %149 [
    i32 68, label %134
    i32 74, label %134
    i32 70, label %139
    i32 76, label %144
    i32 78, label %144
    i32 103, label %144
  ]

134:                                              ; preds = %126, %126
  %135 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %136 = call i32 @nvkm_wr32(%struct.nvkm_device* %135, i32 4197316, i32 268687496)
  %137 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %138 = call i32 @nvkm_wr32(%struct.nvkm_device* %137, i32 4197308, i32 -1213745920)
  br label %150

139:                                              ; preds = %126
  %140 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %141 = call i32 @nvkm_wr32(%struct.nvkm_device* %140, i32 4197316, i32 57380)
  %142 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %143 = call i32 @nvkm_wr32(%struct.nvkm_device* %142, i32 4197308, i32 -1213745888)
  br label %150

144:                                              ; preds = %126, %126, %126
  %145 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %146 = call i32 @nvkm_wr32(%struct.nvkm_device* %145, i32 4197316, i32 268687496)
  %147 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %148 = call i32 @nvkm_wr32(%struct.nvkm_device* %147, i32 4197308, i32 -1213745856)
  br label %150

149:                                              ; preds = %126
  br label %150

150:                                              ; preds = %149, %144, %139, %134
  %151 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %152 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %151, i32 0, i32 1
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)** %154, align 8
  %156 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %157 = call i32 %155(%struct.nvkm_device* %156, i32 1)
  %158 = sub nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  %159 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %160 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  switch i32 %161, label %189 [
    i32 64, label %162
  ]

162:                                              ; preds = %150
  %163 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %164 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %165 = call i32 @nvkm_rd32(%struct.nvkm_device* %164, i32 1049088)
  %166 = call i32 @nvkm_wr32(%struct.nvkm_device* %163, i32 4196772, i32 %165)
  %167 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %168 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %169 = call i32 @nvkm_rd32(%struct.nvkm_device* %168, i32 1049092)
  %170 = call i32 @nvkm_wr32(%struct.nvkm_device* %167, i32 4196776, i32 %169)
  %171 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %172 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %173 = call i32 @nvkm_rd32(%struct.nvkm_device* %172, i32 1049088)
  %174 = call i32 @nvkm_wr32(%struct.nvkm_device* %171, i32 4221348, i32 %173)
  %175 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %176 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %177 = call i32 @nvkm_rd32(%struct.nvkm_device* %176, i32 1049092)
  %178 = call i32 @nvkm_wr32(%struct.nvkm_device* %175, i32 4221352, i32 %177)
  %179 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %180 = call i32 @nvkm_wr32(%struct.nvkm_device* %179, i32 4196384, i32 0)
  %181 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %182 = call i32 @nvkm_wr32(%struct.nvkm_device* %181, i32 4196388, i32 0)
  %183 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @nvkm_wr32(%struct.nvkm_device* %183, i32 4196452, i32 %184)
  %186 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @nvkm_wr32(%struct.nvkm_device* %186, i32 4196456, i32 %187)
  br label %230

189:                                              ; preds = %150
  %190 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %191 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  switch i32 %192, label %202 [
    i32 65, label %193
    i32 66, label %193
    i32 67, label %193
    i32 69, label %193
    i32 78, label %193
    i32 68, label %193
    i32 74, label %193
  ]

193:                                              ; preds = %189, %189, %189, %189, %189, %189, %189
  %194 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %195 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %196 = call i32 @nvkm_rd32(%struct.nvkm_device* %195, i32 1049088)
  %197 = call i32 @nvkm_wr32(%struct.nvkm_device* %194, i32 4196848, i32 %196)
  %198 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %199 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %200 = call i32 @nvkm_rd32(%struct.nvkm_device* %199, i32 1049092)
  %201 = call i32 @nvkm_wr32(%struct.nvkm_device* %198, i32 4196852, i32 %200)
  br label %211

202:                                              ; preds = %189
  %203 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %204 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %205 = call i32 @nvkm_rd32(%struct.nvkm_device* %204, i32 1049088)
  %206 = call i32 @nvkm_wr32(%struct.nvkm_device* %203, i32 4197872, i32 %205)
  %207 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %208 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %209 = call i32 @nvkm_rd32(%struct.nvkm_device* %208, i32 1049092)
  %210 = call i32 @nvkm_wr32(%struct.nvkm_device* %207, i32 4197876, i32 %209)
  br label %211

211:                                              ; preds = %202, %193
  %212 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %213 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %214 = call i32 @nvkm_rd32(%struct.nvkm_device* %213, i32 1049088)
  %215 = call i32 @nvkm_wr32(%struct.nvkm_device* %212, i32 4221424, i32 %214)
  %216 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %217 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %218 = call i32 @nvkm_rd32(%struct.nvkm_device* %217, i32 1049092)
  %219 = call i32 @nvkm_wr32(%struct.nvkm_device* %216, i32 4221428, i32 %218)
  %220 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %221 = call i32 @nvkm_wr32(%struct.nvkm_device* %220, i32 4196416, i32 0)
  %222 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %223 = call i32 @nvkm_wr32(%struct.nvkm_device* %222, i32 4196420, i32 0)
  %224 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @nvkm_wr32(%struct.nvkm_device* %224, i32 4196512, i32 %225)
  %227 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %228 = load i32, i32* %9, align 4
  %229 = call i32 @nvkm_wr32(%struct.nvkm_device* %227, i32 4196516, i32 %228)
  br label %230

230:                                              ; preds = %211, %162
  store i32 0, i32* %2, align 4
  br label %231

231:                                              ; preds = %230, %24
  %232 = load i32, i32* %2, align 4
  ret i32 %232
}

declare dso_local %struct.nv40_gr* @nv40_gr(%struct.nvkm_gr*) #1

declare dso_local i32 @nv40_grctx_init(%struct.nvkm_device*, i32*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
