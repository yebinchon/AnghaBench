; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgp102.c_gp102_grctx_generate_attrib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgp102.c_gp102_grctx_generate_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_grctx = type { %struct.gf100_gr* }
%struct.gf100_gr = type { i32, i32, i32*, i32, i32**, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gf100_grctx_func* }
%struct.gf100_grctx_func = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gp102_grctx_generate_attrib(%struct.gf100_grctx* %0) #0 {
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
  %22 = alloca i32, align 4
  store %struct.gf100_grctx* %0, %struct.gf100_grctx** %2, align 8
  %23 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %24 = getelementptr inbounds %struct.gf100_grctx, %struct.gf100_grctx* %23, i32 0, i32 0
  %25 = load %struct.gf100_gr*, %struct.gf100_gr** %24, align 8
  store %struct.gf100_gr* %25, %struct.gf100_gr** %3, align 8
  %26 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %27 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %26, i32 0, i32 6
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %29, align 8
  store %struct.gf100_grctx_func* %30, %struct.gf100_grctx_func** %4, align 8
  %31 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %32 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %35 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %38 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  store i32 12, i32* %8, align 4
  store i32 65535, i32* %9, align 4
  %40 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %41 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %44 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %42, %45
  store i32 %46, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %74, %1
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %53 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %58 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %61 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %59, %66
  %68 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %69 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %67, %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %56
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %50

77:                                               ; preds = %50
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 %78, 32
  %80 = add nsw i32 %79, 128
  %81 = and i32 %80, -128
  store i32 %81, i32* %10, align 4
  %82 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @mmio_vram(%struct.gf100_grctx* %82, i32 %83, i32 4096, i32 0)
  store i32 %84, i32* %15, align 4
  %85 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @mmio_refn(%struct.gf100_grctx* %85, i32 4294672, i32 -2147483648, i32 12, i32 %86)
  %88 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @mmio_refn(%struct.gf100_grctx* %88, i32 4298824, i32 268435456, i32 12, i32 %89)
  %91 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @mmio_refn(%struct.gf100_grctx* %91, i32 4299820, i32 268435456, i32 12, i32 %92)
  %94 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @mmio_refn(%struct.gf100_grctx* %94, i32 4299520, i32 0, i32 12, i32 %95)
  %97 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %98 = load i32, i32* %10, align 4
  %99 = ashr i32 %98, 7
  %100 = or i32 -2147483648, %99
  %101 = call i32 @mmio_wr32(%struct.gf100_grctx* %97, i32 4299524, i32 %100)
  %102 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @mmio_wr32(%struct.gf100_grctx* %102, i32 4216880, i32 %103)
  %105 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @mmio_wr32(%struct.gf100_grctx* %105, i32 4216924, i32 %106)
  %108 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sdiv i32 %109, 4
  %111 = shl i32 %110, 16
  %112 = or i32 %111, 65535
  %113 = call i32 @mmio_wr32(%struct.gf100_grctx* %108, i32 4220100, i32 %112)
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %238, %77
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %117 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %241

120:                                              ; preds = %114
  store i32 0, i32* %14, align 4
  br label %121

121:                                              ; preds = %232, %120
  %122 = load i32, i32* %14, align 4
  %123 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %124 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %122, %129
  br i1 %130, label %131, label %237

131:                                              ; preds = %121
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %134 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %133, i32 0, i32 4
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %132, %143
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %147 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %145, %148
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %152 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = mul nsw i32 %150, %153
  store i32 %154, i32* %19, align 4
  %155 = load i32, i32* %16, align 4
  %156 = mul nsw i32 %155, 4
  %157 = add nsw i32 4296352, %156
  store i32 %157, i32* %20, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @PPC_UNIT(i32 %158, i32 %159, i32 0)
  store i32 %160, i32* %21, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %14, align 4
  %163 = mul nsw i32 %162, 4
  %164 = add nsw i32 3140, %163
  %165 = call i32 @GPC_UNIT(i32 %161, i32 %164)
  store i32 %165, i32* %22, align 4
  %166 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %167 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %14, align 4
  %174 = shl i32 1, %173
  %175 = and i32 %172, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %131
  br label %232

178:                                              ; preds = %131
  %179 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %180 = load i32, i32* %21, align 4
  %181 = add nsw i32 %180, 192
  %182 = load i32, i32* %19, align 4
  %183 = call i32 @mmio_wr32(%struct.gf100_grctx* %179, i32 %181, i32 %182)
  %184 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %185 = load i32, i32* %22, align 4
  %186 = load i32, i32* %18, align 4
  %187 = call i32 @mmio_wr32(%struct.gf100_grctx* %184, i32 %185, i32 %186)
  %188 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %189 = load i32, i32* %21, align 4
  %190 = add nsw i32 %189, 244
  %191 = load i32, i32* %12, align 4
  %192 = call i32 @mmio_wr32(%struct.gf100_grctx* %188, i32 %190, i32 %191)
  %193 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %194 = load i32, i32* %21, align 4
  %195 = add nsw i32 %194, 240
  %196 = load i32, i32* %18, align 4
  %197 = call i32 @mmio_wr32(%struct.gf100_grctx* %193, i32 %195, i32 %196)
  %198 = load i32, i32* %19, align 4
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %12, align 4
  %201 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %202 = load i32, i32* %21, align 4
  %203 = add nsw i32 %202, 228
  %204 = load i32, i32* %17, align 4
  %205 = call i32 @mmio_wr32(%struct.gf100_grctx* %201, i32 %203, i32 %204)
  %206 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %207 = load i32, i32* %21, align 4
  %208 = add nsw i32 %207, 248
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @mmio_wr32(%struct.gf100_grctx* %206, i32 %208, i32 %209)
  %211 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %212 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %215 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %214, i32 0, i32 4
  %216 = load i32**, i32*** %215, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32*, i32** %216, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %14, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = mul nsw i32 %213, %224
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %11, align 4
  %228 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %229 = load i32, i32* %20, align 4
  %230 = load i32, i32* %18, align 4
  %231 = call i32 @mmio_wr32(%struct.gf100_grctx* %228, i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %178, %177
  %233 = load i32, i32* %14, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %14, align 4
  %235 = load i32, i32* %16, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %16, align 4
  br label %121

237:                                              ; preds = %121
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %13, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %13, align 4
  br label %114

241:                                              ; preds = %114
  %242 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %243 = call i32 @mmio_wr32(%struct.gf100_grctx* %242, i32 4293092, i32 256)
  %244 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %245 = call i32 @mmio_wr32(%struct.gf100_grctx* %244, i32 4308732, i32 256)
  ret void
}

declare dso_local i32 @mmio_vram(%struct.gf100_grctx*, i32, i32, i32) #1

declare dso_local i32 @mmio_refn(%struct.gf100_grctx*, i32, i32, i32, i32) #1

declare dso_local i32 @mmio_wr32(%struct.gf100_grctx*, i32, i32) #1

declare dso_local i32 @PPC_UNIT(i32, i32, i32) #1

declare dso_local i32 @GPC_UNIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
