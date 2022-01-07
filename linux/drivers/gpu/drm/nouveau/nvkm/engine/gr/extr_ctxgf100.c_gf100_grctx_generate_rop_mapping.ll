; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgf100.c_gf100_grctx_generate_rop_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgf100.c_gf100_grctx_generate_rop_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i32*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf100_grctx_generate_rop_mapping(%struct.gf100_gr* %0) #0 {
  %2 = alloca %struct.gf100_gr*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca [6 x i32], align 16
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %2, align 8
  %9 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %10 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %3, align 8
  %15 = bitcast [6 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 24, i1 false)
  %16 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %39, %1
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 32
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %22 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 7
  %29 = load i32, i32* %8, align 4
  %30 = srem i32 %29, 6
  %31 = mul nsw i32 %30, 5
  %32 = shl i32 %28, %31
  %33 = load i32, i32* %8, align 4
  %34 = sdiv i32 %33, 6
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %32
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %20
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %17

42:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  %43 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %44 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %51, %42
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 16
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %46

56:                                               ; preds = %46
  %57 = load i32, i32* %7, align 4
  %58 = shl i32 %57, 16
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  %61 = shl i32 %60, 21
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %7, align 4
  %66 = srem i32 32, %65
  %67 = shl i32 %66, 24
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  store i32 1, i32* %8, align 4
  br label %71

71:                                               ; preds = %87, %56
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 7
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 5
  %77 = shl i32 1, %76
  %78 = load i32, i32* %7, align 4
  %79 = srem i32 %77, %78
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %80, 1
  %82 = mul nsw i32 %81, 5
  %83 = shl i32 %79, %82
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %71

90:                                               ; preds = %71
  %91 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %92 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %93 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = shl i32 %94, 8
  %96 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %97 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %95, %98
  %100 = call i32 @nvkm_wr32(%struct.nvkm_device* %91, i32 4295608, i32 %99)
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %114, %90
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 6
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %106 = load i32, i32* %8, align 4
  %107 = mul nsw i32 %106, 4
  %108 = add nsw i32 4295432, %107
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @nvkm_wr32(%struct.nvkm_device* %105, i32 %108, i32 %112)
  br label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %101

117:                                              ; preds = %101
  %118 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %119 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %120 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 %121, 8
  %123 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %124 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %122, %125
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %126, %128
  %130 = call i32 @nvkm_wr32(%struct.nvkm_device* %118, i32 4299728, i32 %129)
  %131 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @nvkm_wr32(%struct.nvkm_device* %131, i32 4299748, i32 %133)
  store i32 0, i32* %8, align 4
  br label %135

135:                                              ; preds = %148, %117
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 6
  br i1 %137, label %138, label %151

138:                                              ; preds = %135
  %139 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %140 = load i32, i32* %8, align 4
  %141 = mul nsw i32 %140, 4
  %142 = add nsw i32 4299520, %141
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @nvkm_wr32(%struct.nvkm_device* %139, i32 %142, i32 %146)
  br label %148

148:                                              ; preds = %138
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %135

151:                                              ; preds = %135
  %152 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %153 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %154 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = shl i32 %155, 8
  %157 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %158 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %156, %159
  %161 = call i32 @nvkm_wr32(%struct.nvkm_device* %152, i32 4225212, i32 %160)
  store i32 0, i32* %8, align 4
  br label %162

162:                                              ; preds = %175, %151
  %163 = load i32, i32* %8, align 4
  %164 = icmp slt i32 %163, 6
  br i1 %164, label %165, label %178

165:                                              ; preds = %162
  %166 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %167 = load i32, i32* %8, align 4
  %168 = mul nsw i32 %167, 4
  %169 = add nsw i32 4225036, %168
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @nvkm_wr32(%struct.nvkm_device* %166, i32 %169, i32 %173)
  br label %175

175:                                              ; preds = %165
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %162

178:                                              ; preds = %162
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
