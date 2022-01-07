; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgf117.c_gf117_grctx_generate_attrib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgf117.c_gf117_grctx_generate_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_grctx = type { %struct.gf100_gr* }
%struct.gf100_gr = type { i32, i32, i32*, i32**, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gf100_grctx_func* }
%struct.gf100_grctx_func = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf117_grctx_generate_attrib(%struct.gf100_grctx* %0) #0 {
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
  store i32 1, i32* %10, align 4
  store i32 65535, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %51 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %54 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %52, %55
  %57 = add nsw i32 %49, %56
  store i32 %57, i32* %13, align 4
  %58 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @mmio_refn(%struct.gf100_grctx* %58, i32 4294672, i32 -2147483648, i32 12, i32 %59)
  %61 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @mmio_refn(%struct.gf100_grctx* %61, i32 4298824, i32 268435456, i32 12, i32 %62)
  %64 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %65 = load i32, i32* %6, align 4
  %66 = shl i32 %65, 16
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @mmio_wr32(%struct.gf100_grctx* %64, i32 4216880, i32 %68)
  %70 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sdiv i32 %71, 4
  %73 = shl i32 %72, 16
  %74 = or i32 %73, 65535
  %75 = call i32 @mmio_wr32(%struct.gf100_grctx* %70, i32 4220100, i32 %74)
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %202, %1
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %79 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %205

82:                                               ; preds = %76
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %198, %82
  %84 = load i32, i32* %15, align 4
  %85 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %86 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %84, %91
  br i1 %92, label %93, label %201

93:                                               ; preds = %83
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %96 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %95, i32 0, i32 3
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %94, %105
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %109 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %108, i32 0, i32 3
  %110 = load i32**, i32*** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %107, %118
  store i32 %119, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @PPC_UNIT(i32 %120, i32 %121, i32 0)
  store i32 %122, i32* %19, align 4
  %123 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %124 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %15, align 4
  %131 = shl i32 1, %130
  %132 = and i32 %129, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %93
  br label %198

135:                                              ; preds = %93
  %136 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, 192
  %139 = load i32, i32* %17, align 4
  %140 = shl i32 %139, 16
  %141 = or i32 268435456, %140
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  %144 = or i32 %141, %143
  %145 = call i32 @mmio_skip(%struct.gf100_grctx* %136, i32 %138, i32 %144)
  %146 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %147 = load i32, i32* %19, align 4
  %148 = add nsw i32 %147, 192
  %149 = load i32, i32* %17, align 4
  %150 = shl i32 %149, 16
  %151 = or i32 268435456, %150
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %12, align 4
  %154 = or i32 %151, %153
  %155 = call i32 @mmio_wr32(%struct.gf100_grctx* %146, i32 %148, i32 %154)
  %156 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %157 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %160 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %159, i32 0, i32 3
  %161 = load i32**, i32*** %160, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 %158, %169
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %12, align 4
  %173 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %174 = load i32, i32* %19, align 4
  %175 = add nsw i32 %174, 228
  %176 = load i32, i32* %16, align 4
  %177 = shl i32 %176, 16
  %178 = load i32, i32* %13, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @mmio_wr32(%struct.gf100_grctx* %173, i32 %175, i32 %179)
  %181 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %182 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %185 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %184, i32 0, i32 3
  %186 = load i32**, i32*** %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %15, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %183, %194
  %196 = load i32, i32* %13, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %13, align 4
  br label %198

198:                                              ; preds = %135, %134
  %199 = load i32, i32* %15, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %15, align 4
  br label %83

201:                                              ; preds = %83
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %14, align 4
  br label %76

205:                                              ; preds = %76
  ret void
}

declare dso_local i32 @mmio_vram(%struct.gf100_grctx*, i32, i32, i32) #1

declare dso_local i32 @mmio_refn(%struct.gf100_grctx*, i32, i32, i32, i32) #1

declare dso_local i32 @mmio_wr32(%struct.gf100_grctx*, i32, i32) #1

declare dso_local i32 @PPC_UNIT(i32, i32, i32) #1

declare dso_local i32 @mmio_skip(%struct.gf100_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
