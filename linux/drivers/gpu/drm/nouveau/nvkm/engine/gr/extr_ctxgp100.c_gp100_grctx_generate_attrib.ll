; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgp100.c_gp100_grctx_generate_attrib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgp100.c_gp100_grctx_generate_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_grctx = type { %struct.gf100_gr* }
%struct.gf100_gr = type { i32, i32, i32*, i32, i32**, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gf100_grctx_func* }
%struct.gf100_grctx_func = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_grctx*)* @gp100_grctx_generate_attrib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gp100_grctx_generate_attrib(%struct.gf100_grctx* %0) #0 {
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
  %24 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %23, i32 0, i32 6
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
  store i32 12, i32* %7, align 4
  store i32 65535, i32* %8, align 4
  %34 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %35 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %38 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %36, %39
  store i32 %40, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %68, %1
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %47 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %44
  %51 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %52 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %55 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %53, %60
  %62 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %63 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %61, %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %50
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %44

71:                                               ; preds = %44
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %72, 32
  %74 = add nsw i32 %73, 128
  %75 = and i32 %74, -128
  store i32 %75, i32* %9, align 4
  %76 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @mmio_vram(%struct.gf100_grctx* %76, i32 %77, i32 4096, i32 0)
  store i32 %78, i32* %14, align 4
  %79 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @mmio_refn(%struct.gf100_grctx* %79, i32 4294672, i32 -2147483648, i32 12, i32 %80)
  %82 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @mmio_refn(%struct.gf100_grctx* %82, i32 4298824, i32 268435456, i32 12, i32 %83)
  %85 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @mmio_refn(%struct.gf100_grctx* %85, i32 4299820, i32 268435456, i32 12, i32 %86)
  %88 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @mmio_refn(%struct.gf100_grctx* %88, i32 4299520, i32 0, i32 12, i32 %89)
  %91 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %92 = load i32, i32* %9, align 4
  %93 = ashr i32 %92, 7
  %94 = or i32 -2147483648, %93
  %95 = call i32 @mmio_wr32(%struct.gf100_grctx* %91, i32 4299524, i32 %94)
  %96 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @mmio_wr32(%struct.gf100_grctx* %96, i32 4216880, i32 %97)
  %99 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @mmio_wr32(%struct.gf100_grctx* %99, i32 4216924, i32 %100)
  %102 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sdiv i32 %103, 4
  %105 = shl i32 %104, 16
  %106 = or i32 %105, 65535
  %107 = call i32 @mmio_wr32(%struct.gf100_grctx* %102, i32 4220100, i32 %106)
  store i32 0, i32* %12, align 4
  br label %108

108:                                              ; preds = %224, %71
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %111 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %227

114:                                              ; preds = %108
  store i32 0, i32* %13, align 4
  br label %115

115:                                              ; preds = %218, %114
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %118 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %116, %123
  br i1 %124, label %125, label %223

125:                                              ; preds = %115
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %128 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %127, i32 0, i32 4
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %126, %137
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %141 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %139, %142
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %15, align 4
  %145 = mul nsw i32 %144, 4
  %146 = add nsw i32 4296352, %145
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @PPC_UNIT(i32 %147, i32 %148, i32 0)
  store i32 %149, i32* %19, align 4
  %150 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %151 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %150, i32 0, i32 5
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %13, align 4
  %158 = shl i32 1, %157
  %159 = and i32 %156, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %125
  br label %218

162:                                              ; preds = %125
  %163 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %164 = load i32, i32* %19, align 4
  %165 = add nsw i32 %164, 192
  %166 = load i32, i32* %17, align 4
  %167 = call i32 @mmio_wr32(%struct.gf100_grctx* %163, i32 %165, i32 %166)
  %168 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %169 = load i32, i32* %19, align 4
  %170 = add nsw i32 %169, 244
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @mmio_wr32(%struct.gf100_grctx* %168, i32 %170, i32 %171)
  %173 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %174 = load i32, i32* %19, align 4
  %175 = add nsw i32 %174, 240
  %176 = load i32, i32* %17, align 4
  %177 = call i32 @mmio_wr32(%struct.gf100_grctx* %173, i32 %175, i32 %176)
  %178 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %179 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %182 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = mul nsw i32 %180, %183
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %11, align 4
  %187 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %188 = load i32, i32* %19, align 4
  %189 = add nsw i32 %188, 228
  %190 = load i32, i32* %16, align 4
  %191 = call i32 @mmio_wr32(%struct.gf100_grctx* %187, i32 %189, i32 %190)
  %192 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %193 = load i32, i32* %19, align 4
  %194 = add nsw i32 %193, 248
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @mmio_wr32(%struct.gf100_grctx* %192, i32 %194, i32 %195)
  %197 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %198 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %201 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %200, i32 0, i32 4
  %202 = load i32**, i32*** %201, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32*, i32** %202, i64 %204
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = mul nsw i32 %199, %210
  %212 = load i32, i32* %10, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %10, align 4
  %214 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %215 = load i32, i32* %18, align 4
  %216 = load i32, i32* %17, align 4
  %217 = call i32 @mmio_wr32(%struct.gf100_grctx* %214, i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %162, %161
  %219 = load i32, i32* %13, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %13, align 4
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %15, align 4
  br label %115

223:                                              ; preds = %115
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %12, align 4
  br label %108

227:                                              ; preds = %108
  %228 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %229 = call i32 @mmio_wr32(%struct.gf100_grctx* %228, i32 4296428, i32 0)
  %230 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %231 = call i32 @mmio_wr32(%struct.gf100_grctx* %230, i32 4308732, i32 0)
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
