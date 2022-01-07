; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgm107.c_gm107_grctx_generate_attrib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgm107.c_gm107_grctx_generate_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_grctx = type { %struct.gf100_gr* }
%struct.gf100_gr = type { i32, i32, i32*, i32**, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gf100_grctx_func* }
%struct.gf100_grctx_func = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gm107_grctx_generate_attrib(%struct.gf100_grctx* %0) #0 {
  %2 = alloca %struct.gf100_grctx*, align 8
  %3 = alloca %struct.gf100_gr*, align 8
  %4 = alloca %struct.gf100_grctx_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.gf100_grctx* %0, %struct.gf100_grctx** %2, align 8
  %20 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %21 = getelementptr inbounds %struct.gf100_grctx, %struct.gf100_grctx* %20, i32 0, i32 0
  %22 = load %struct.gf100_gr*, %struct.gf100_gr** %21, align 8
  store %struct.gf100_gr* %22, %struct.gf100_gr** %3, align 8
  %23 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %24 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %23, i32 0, i32 5
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %26, align 8
  store %struct.gf100_grctx_func* %27, %struct.gf100_grctx_func** %4, align 8
  %28 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %29 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %32 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %35 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %38 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = mul nsw i32 32, %40
  store i32 %41, i32* %7, align 4
  store i32 12, i32* %8, align 4
  %42 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %45 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %43, %46
  %48 = call i32 @mmio_vram(%struct.gf100_grctx* %42, i32 %47, i32 4096, i32 0)
  store i32 %48, i32* %9, align 4
  store i32 65535, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %51 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %54 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %52, %55
  %57 = add nsw i32 %49, %56
  store i32 %57, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %58 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @mmio_refn(%struct.gf100_grctx* %58, i32 4294672, i32 -2147483648, i32 12, i32 %59)
  %61 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @mmio_refn(%struct.gf100_grctx* %61, i32 4298824, i32 268435456, i32 12, i32 %62)
  %64 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @mmio_refn(%struct.gf100_grctx* %64, i32 4299820, i32 268435456, i32 12, i32 %65)
  %67 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %68 = load i32, i32* %6, align 4
  %69 = shl i32 %68, 16
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @mmio_wr32(%struct.gf100_grctx* %67, i32 4216880, i32 %71)
  %73 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sdiv i32 %74, 4
  %76 = shl i32 %75, 16
  %77 = or i32 %76, 65535
  %78 = call i32 @mmio_wr32(%struct.gf100_grctx* %73, i32 4220100, i32 %77)
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %210, %1
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %82 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %213

85:                                               ; preds = %79
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %204, %85
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %89 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %87, %94
  br i1 %95, label %96, label %209

96:                                               ; preds = %86
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %99 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %98, i32 0, i32 3
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %97, %108
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %112 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %111, i32 0, i32 3
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %110, %121
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %15, align 4
  %124 = mul nsw i32 %123, 4
  %125 = add nsw i32 4296352, %124
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @PPC_UNIT(i32 %126, i32 %127, i32 0)
  store i32 %128, i32* %19, align 4
  %129 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %130 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %14, align 4
  %137 = shl i32 1, %136
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %96
  br label %204

141:                                              ; preds = %96
  %142 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %143 = load i32, i32* %19, align 4
  %144 = add nsw i32 %143, 192
  %145 = load i32, i32* %17, align 4
  %146 = call i32 @mmio_wr32(%struct.gf100_grctx* %142, i32 %144, i32 %145)
  %147 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %148, 244
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @mmio_wr32(%struct.gf100_grctx* %147, i32 %149, i32 %150)
  %152 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %153 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %156 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %155, i32 0, i32 3
  %157 = load i32**, i32*** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = mul nsw i32 %154, %165
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %11, align 4
  %169 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %170 = load i32, i32* %19, align 4
  %171 = add nsw i32 %170, 228
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @mmio_wr32(%struct.gf100_grctx* %169, i32 %171, i32 %172)
  %174 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %175 = load i32, i32* %19, align 4
  %176 = add nsw i32 %175, 248
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @mmio_wr32(%struct.gf100_grctx* %174, i32 %176, i32 %177)
  %179 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %180 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %183 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %182, i32 0, i32 3
  %184 = load i32**, i32*** %183, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32*, i32** %184, i64 %186
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %181, %192
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %12, align 4
  %196 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %197 = load i32, i32* %18, align 4
  %198 = load i32, i32* %17, align 4
  %199 = sdiv i32 %198, 3
  %200 = shl i32 %199, 16
  %201 = load i32, i32* %17, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @mmio_wr32(%struct.gf100_grctx* %196, i32 %197, i32 %202)
  br label %204

204:                                              ; preds = %141, %140
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %15, align 4
  br label %86

209:                                              ; preds = %86
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %13, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %13, align 4
  br label %79

213:                                              ; preds = %79
  ret void
}

declare dso_local i32 @mmio_vram(%struct.gf100_grctx*, i32, i32, i32) #1

declare dso_local i32 @mmio_refn(%struct.gf100_grctx*, i32, i32, i32, i32) #1

declare dso_local i32 @mmio_wr32(%struct.gf100_grctx*, i32, i32) #1

declare dso_local i32 @PPC_UNIT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
