; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_engine_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_engine_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_fifo = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.TYPE_5__ = type { %struct.nvkm_engine* }
%struct.nvkm_engine = type { i32 }
%struct.gk104_fifo_engine_status = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_8__*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [79 x i8] c"engine %02d: busy %d faulted %d chsw %d save %d load %d %sid %d%s-> %sid %d%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tsg\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gk104_fifo*, i32, %struct.gk104_fifo_engine_status*)* @gk104_fifo_engine_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gk104_fifo_engine_status(%struct.gk104_fifo* %0, i32 %1, %struct.gk104_fifo_engine_status* %2) #0 {
  %4 = alloca %struct.gk104_fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gk104_fifo_engine_status*, align 8
  %7 = alloca %struct.nvkm_engine*, align 8
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca i32, align 4
  store %struct.gk104_fifo* %0, %struct.gk104_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.gk104_fifo_engine_status* %2, %struct.gk104_fifo_engine_status** %6, align 8
  %11 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %12 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_engine*, %struct.nvkm_engine** %17, align 8
  store %struct.nvkm_engine* %18, %struct.nvkm_engine** %7, align 8
  %19 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %20 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store %struct.nvkm_subdev* %22, %struct.nvkm_subdev** %8, align 8
  %23 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %24 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %23, i32 0, i32 0
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %24, align 8
  store %struct.nvkm_device* %25, %struct.nvkm_device** %9, align 8
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 8
  %29 = add nsw i32 9792, %28
  %30 = call i32 @nvkm_rd32(%struct.nvkm_device* %26, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, -2147483648
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %38 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 1073741824
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %46 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, 268435456
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %54 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 268369920
  %58 = ashr i32 %57, 16
  %59 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %60 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, 32768
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %69 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, 16384
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %77 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, 8192
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %85 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %10, align 4
  %87 = and i32 %86, 4096
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %93 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* %10, align 4
  %96 = and i32 %95, 4095
  %97 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %98 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  %100 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %101 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %100, i32 0, i32 6
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %101, align 8
  %102 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %103 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %156

106:                                              ; preds = %3
  %107 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %108 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %156

111:                                              ; preds = %106
  %112 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %113 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %111
  %117 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %118 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %116
  %122 = load %struct.nvkm_engine*, %struct.nvkm_engine** %7, align 8
  %123 = icmp ne %struct.nvkm_engine* %122, null
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load %struct.nvkm_engine*, %struct.nvkm_engine** %7, align 8
  %126 = call i64 @nvkm_engine_chsw_load(%struct.nvkm_engine* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %130 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %129, i32 0, i32 5
  %131 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %132 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %131, i32 0, i32 6
  store %struct.TYPE_8__* %130, %struct.TYPE_8__** %132, align 8
  br label %138

133:                                              ; preds = %124, %121
  %134 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %135 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %134, i32 0, i32 7
  %136 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %137 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %136, i32 0, i32 6
  store %struct.TYPE_8__* %135, %struct.TYPE_8__** %137, align 8
  br label %138

138:                                              ; preds = %133, %128
  br label %155

139:                                              ; preds = %116, %111
  %140 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %141 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %146 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %145, i32 0, i32 5
  %147 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %148 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %147, i32 0, i32 6
  store %struct.TYPE_8__* %146, %struct.TYPE_8__** %148, align 8
  br label %154

149:                                              ; preds = %139
  %150 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %151 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %150, i32 0, i32 7
  %152 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %153 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %152, i32 0, i32 6
  store %struct.TYPE_8__* %151, %struct.TYPE_8__** %153, align 8
  br label %154

154:                                              ; preds = %149, %144
  br label %155

155:                                              ; preds = %154, %138
  br label %167

156:                                              ; preds = %106, %3
  %157 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %158 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %163 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %162, i32 0, i32 7
  %164 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %165 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %164, i32 0, i32 6
  store %struct.TYPE_8__* %163, %struct.TYPE_8__** %165, align 8
  br label %166

166:                                              ; preds = %161, %156
  br label %167

167:                                              ; preds = %166, %155
  %168 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %169 = load i32, i32* %5, align 4
  %170 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %171 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %174 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %177 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %180 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %183 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %186 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %185, i32 0, i32 7
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %192 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %193 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %192, i32 0, i32 7
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %197 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %196, i32 0, i32 6
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %200 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %199, i32 0, i32 7
  %201 = icmp eq %struct.TYPE_8__* %198, %200
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %204 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %205 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %211 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %212 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %216 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %215, i32 0, i32 6
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %216, align 8
  %218 = load %struct.gk104_fifo_engine_status*, %struct.gk104_fifo_engine_status** %6, align 8
  %219 = getelementptr inbounds %struct.gk104_fifo_engine_status, %struct.gk104_fifo_engine_status* %218, i32 0, i32 5
  %220 = icmp eq %struct.TYPE_8__* %217, %219
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %223 = call i32 @nvkm_debug(%struct.nvkm_subdev* %168, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %169, i32 %172, i32 %175, i32 %178, i32 %181, i32 %184, i8* %191, i32 %195, i8* %203, i8* %210, i32 %214, i8* %222)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i64 @nvkm_engine_chsw_load(%struct.nvkm_engine*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
