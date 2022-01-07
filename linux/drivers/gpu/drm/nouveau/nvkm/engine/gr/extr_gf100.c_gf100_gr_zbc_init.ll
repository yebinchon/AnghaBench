; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_zbc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_zbc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.gf100_gr*, i32)*, i32 (%struct.gf100_gr*, i32)*, i32 (%struct.gf100_gr*, i32)*, i32 (%struct.gf100_gr*, i32, i32, i32)* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.nvkm_ltc* }
%struct.nvkm_ltc = type { i32, i32 }

@__const.gf100_gr_zbc_init.one = private unnamed_addr constant [8 x i32] [i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@__const.gf100_gr_zbc_init.f32_1 = private unnamed_addr constant [8 x i32] [i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf100_gr_zbc_init(%struct.gf100_gr* %0) #0 {
  %2 = alloca %struct.gf100_gr*, align 8
  %3 = alloca [8 x i32], align 16
  %4 = alloca [8 x i32], align 16
  %5 = alloca [8 x i32], align 16
  %6 = alloca [8 x i32], align 16
  %7 = alloca %struct.nvkm_ltc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %2, align 8
  %12 = bitcast [8 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 32, i1 false)
  %13 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([8 x i32]* @__const.gf100_gr_zbc_init.one to i8*), i64 32, i1 false)
  %14 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false)
  %15 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([8 x i32]* @__const.gf100_gr_zbc_init.f32_1 to i8*), i64 32, i1 false)
  %16 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %17 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %22, align 8
  store %struct.nvkm_ltc* %23, %struct.nvkm_ltc** %7, align 8
  %24 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %7, align 8
  %25 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %7, align 8
  %28 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %7, align 8
  %31 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %34 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %33, i32 0, i32 1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %116, label %40

40:                                               ; preds = %1
  %41 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 4
  %44 = call i32 @gf100_gr_zbc_color_get(%struct.gf100_gr* %41, i32 1, i32* %42, i32* %43)
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4
  %50 = call i32 @gf100_gr_zbc_color_get(%struct.gf100_gr* %47, i32 2, i32* %48, i32* %49)
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  %53 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %56 = call i32 @gf100_gr_zbc_color_get(%struct.gf100_gr* %53, i32 4, i32* %54, i32* %55)
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  %62 = call i32 @gf100_gr_zbc_color_get(%struct.gf100_gr* %59, i32 4, i32* %60, i32* %61)
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %66 = call i32 @gf100_gr_zbc_depth_get(%struct.gf100_gr* %65, i32 1, i32 0, i32 0)
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  %69 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %70 = call i32 @gf100_gr_zbc_depth_get(%struct.gf100_gr* %69, i32 1, i32 1065353216, i32 1065353216)
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  %73 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %74 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %73, i32 0, i32 0
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 3
  %79 = load i32 (%struct.gf100_gr*, i32, i32, i32)*, i32 (%struct.gf100_gr*, i32, i32, i32)** %78, align 8
  %80 = icmp ne i32 (%struct.gf100_gr*, i32, i32, i32)* %79, null
  br i1 %80, label %81, label %115

81:                                               ; preds = %40
  %82 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %83 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %82, i32 0, i32 0
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  %88 = load i32 (%struct.gf100_gr*, i32, i32, i32)*, i32 (%struct.gf100_gr*, i32, i32, i32)** %87, align 8
  %89 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %90 = call i32 %88(%struct.gf100_gr* %89, i32 1, i32 0, i32 0)
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  %93 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %94 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 3
  %99 = load i32 (%struct.gf100_gr*, i32, i32, i32)*, i32 (%struct.gf100_gr*, i32, i32, i32)** %98, align 8
  %100 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %101 = call i32 %99(%struct.gf100_gr* %100, i32 1, i32 1, i32 1)
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  %104 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %105 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 3
  %110 = load i32 (%struct.gf100_gr*, i32, i32, i32)*, i32 (%struct.gf100_gr*, i32, i32, i32)** %109, align 8
  %111 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %112 = call i32 %110(%struct.gf100_gr* %111, i32 1, i32 255, i32 255)
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %81, %40
  br label %116

116:                                              ; preds = %115, %1
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %135, %116
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %7, align 8
  %121 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp sle i32 %119, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %118
  %125 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %126 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %125, i32 0, i32 0
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = load i32 (%struct.gf100_gr*, i32)*, i32 (%struct.gf100_gr*, i32)** %130, align 8
  %132 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 %131(%struct.gf100_gr* %132, i32 %133)
  br label %135

135:                                              ; preds = %124
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %118

138:                                              ; preds = %118
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %157, %138
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %7, align 8
  %143 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp sle i32 %141, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %140
  %147 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %148 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %147, i32 0, i32 0
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i32 (%struct.gf100_gr*, i32)*, i32 (%struct.gf100_gr*, i32)** %152, align 8
  %154 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %155 = load i32, i32* %8, align 4
  %156 = call i32 %153(%struct.gf100_gr* %154, i32 %155)
  br label %157

157:                                              ; preds = %146
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %140

160:                                              ; preds = %140
  %161 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %162 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %161, i32 0, i32 0
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = load i32 (%struct.gf100_gr*, i32)*, i32 (%struct.gf100_gr*, i32)** %166, align 8
  %168 = icmp ne i32 (%struct.gf100_gr*, i32)* %167, null
  br i1 %168, label %169, label %192

169:                                              ; preds = %160
  %170 = load i32, i32* %11, align 4
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %188, %169
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %7, align 8
  %174 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp sle i32 %172, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %171
  %178 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %179 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %178, i32 0, i32 0
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load i32 (%struct.gf100_gr*, i32)*, i32 (%struct.gf100_gr*, i32)** %183, align 8
  %185 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %186 = load i32, i32* %8, align 4
  %187 = call i32 %184(%struct.gf100_gr* %185, i32 %186)
  br label %188

188:                                              ; preds = %177
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  br label %171

191:                                              ; preds = %171
  br label %192

192:                                              ; preds = %191, %160
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gf100_gr_zbc_color_get(%struct.gf100_gr*, i32, i32*, i32*) #2

declare dso_local i32 @gf100_gr_zbc_depth_get(%struct.gf100_gr*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
