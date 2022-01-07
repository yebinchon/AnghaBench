; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgv100.c_gv100_grctx_generate_attrib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgv100.c_gv100_grctx_generate_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_grctx = type { %struct.gf100_gr* }
%struct.gf100_gr = type { i32, i32, i32*, i32**, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gf100_grctx_func* }
%struct.gf100_grctx_func = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_grctx*)* @gv100_grctx_generate_attrib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv100_grctx_generate_attrib(%struct.gf100_grctx* %0) #0 {
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.gf100_grctx* %0, %struct.gf100_grctx** %2, align 8
  %22 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %23 = getelementptr inbounds %struct.gf100_grctx, %struct.gf100_grctx* %22, i32 0, i32 0
  %24 = load %struct.gf100_gr*, %struct.gf100_gr** %23, align 8
  store %struct.gf100_gr* %24, %struct.gf100_gr** %3, align 8
  %25 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %26 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %25, i32 0, i32 5
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %28, align 8
  store %struct.gf100_grctx_func* %29, %struct.gf100_grctx_func** %4, align 8
  %30 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %31 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %34 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %37 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  store i32 12, i32* %8, align 4
  store i32 65535, i32* %9, align 4
  %39 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %40 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %43 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %41, %44
  store i32 %45, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %49 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %50 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %53 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %51, %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = mul nsw i32 %58, 32
  %60 = add nsw i32 %59, 128
  %61 = and i32 %60, -128
  store i32 %61, i32* %10, align 4
  %62 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @mmio_vram(%struct.gf100_grctx* %62, i32 %63, i32 4096, i32 0)
  store i32 %64, i32* %15, align 4
  %65 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @mmio_refn(%struct.gf100_grctx* %65, i32 4294672, i32 -2147483648, i32 12, i32 %66)
  %68 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @mmio_refn(%struct.gf100_grctx* %68, i32 4298824, i32 268435456, i32 12, i32 %69)
  %71 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @mmio_refn(%struct.gf100_grctx* %71, i32 4299820, i32 268435456, i32 12, i32 %72)
  %74 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @mmio_refn(%struct.gf100_grctx* %74, i32 4300288, i32 0, i32 12, i32 %75)
  %77 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %78 = load i32, i32* %10, align 4
  %79 = ashr i32 %78, 7
  %80 = or i32 -2147483648, %79
  %81 = call i32 @mmio_wr32(%struct.gf100_grctx* %77, i32 4300292, i32 %80)
  %82 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @mmio_wr32(%struct.gf100_grctx* %82, i32 4216880, i32 %83)
  %85 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @mmio_wr32(%struct.gf100_grctx* %85, i32 4216924, i32 %86)
  %88 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sdiv i32 %89, 4
  %91 = shl i32 %90, 16
  %92 = or i32 %91, 65535
  %93 = call i32 @mmio_wr32(%struct.gf100_grctx* %88, i32 4220100, i32 %92)
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %225, %1
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %97 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %228

100:                                              ; preds = %94
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %219, %100
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %104 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %102, %109
  br i1 %110, label %111, label %224

111:                                              ; preds = %101
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %114 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %113, i32 0, i32 3
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %112, %123
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %127 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %126, i32 0, i32 3
  %128 = load i32**, i32*** %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %125, %136
  store i32 %137, i32* %18, align 4
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %140 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %139, i32 0, i32 3
  %141 = load i32**, i32*** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %138, %149
  store i32 %150, i32* %19, align 4
  %151 = load i32, i32* %16, align 4
  %152 = mul nsw i32 %151, 4
  %153 = add nsw i32 4296352, %152
  store i32 %153, i32* %20, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @PPC_UNIT(i32 %154, i32 %155, i32 0)
  store i32 %156, i32* %21, align 4
  %157 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %158 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %14, align 4
  %165 = shl i32 1, %164
  %166 = and i32 %163, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %111
  br label %219

169:                                              ; preds = %111
  %170 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %171 = load i32, i32* %21, align 4
  %172 = add nsw i32 %171, 192
  %173 = load i32, i32* %19, align 4
  %174 = call i32 @mmio_wr32(%struct.gf100_grctx* %170, i32 %172, i32 %173)
  %175 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %176 = load i32, i32* %21, align 4
  %177 = add nsw i32 %176, 244
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @mmio_wr32(%struct.gf100_grctx* %175, i32 %177, i32 %178)
  %180 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %181 = load i32, i32* %21, align 4
  %182 = add nsw i32 %181, 240
  %183 = load i32, i32* %18, align 4
  %184 = call i32 @mmio_wr32(%struct.gf100_grctx* %180, i32 %182, i32 %183)
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %12, align 4
  %188 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %189 = load i32, i32* %21, align 4
  %190 = add nsw i32 %189, 228
  %191 = load i32, i32* %17, align 4
  %192 = call i32 @mmio_wr32(%struct.gf100_grctx* %188, i32 %190, i32 %191)
  %193 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %194 = load i32, i32* %21, align 4
  %195 = add nsw i32 %194, 248
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @mmio_wr32(%struct.gf100_grctx* %193, i32 %195, i32 %196)
  %198 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %199 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %202 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %201, i32 0, i32 3
  %203 = load i32**, i32*** %202, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32*, i32** %203, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %14, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %200, %211
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %11, align 4
  %215 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %216 = load i32, i32* %20, align 4
  %217 = load i32, i32* %18, align 4
  %218 = call i32 @mmio_wr32(%struct.gf100_grctx* %215, i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %169, %168
  %220 = load i32, i32* %14, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* %16, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %16, align 4
  br label %101

224:                                              ; preds = %101
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %13, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %13, align 4
  br label %94

228:                                              ; preds = %94
  %229 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %230 = call i32 @mmio_wr32(%struct.gf100_grctx* %229, i32 4293092, i32 256)
  %231 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %232 = call i32 @mmio_wr32(%struct.gf100_grctx* %231, i32 4308732, i32 256)
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
