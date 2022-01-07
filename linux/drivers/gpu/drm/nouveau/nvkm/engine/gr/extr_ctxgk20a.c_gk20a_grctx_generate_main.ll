; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgk20a.c_gk20a_grctx_generate_main.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgk20a.c_gk20a_grctx_generate_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.gf100_grctx_func* }
%struct.gf100_grctx_func = type { i32 (%struct.gf100_grctx*)*, i32 (%struct.gf100_grctx.0*)*, i32 (%struct.gf100_gr.1*)*, i32 (%struct.gf100_grctx.2*)* }
%struct.gf100_grctx = type opaque
%struct.gf100_grctx.0 = type opaque
%struct.gf100_gr.1 = type opaque
%struct.gf100_grctx.2 = type opaque
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gf100_grctx.3 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_gr*, %struct.gf100_grctx.3*)* @gk20a_grctx_generate_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gk20a_grctx_generate_main(%struct.gf100_gr* %0, %struct.gf100_grctx.3* %1) #0 {
  %3 = alloca %struct.gf100_gr*, align 8
  %4 = alloca %struct.gf100_grctx.3*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca %struct.gf100_grctx_func*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %3, align 8
  store %struct.gf100_grctx.3* %1, %struct.gf100_grctx.3** %4, align 8
  %9 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %10 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %5, align 8
  %15 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %16 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %15, i32 0, i32 5
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %18, align 8
  store %struct.gf100_grctx_func* %19, %struct.gf100_grctx_func** %6, align 8
  %20 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %21 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %22 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @gf100_gr_mmio(%struct.gf100_gr* %20, i32 %23)
  %25 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %26 = call i32 @gf100_gr_wait_idle(%struct.gf100_gr* %25)
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %28 = call i32 @nvkm_mask(%struct.nvkm_device* %27, i32 4211028, i32 -1, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %6, align 8
  %30 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %29, i32 0, i32 3
  %31 = load i32 (%struct.gf100_grctx.2*)*, i32 (%struct.gf100_grctx.2*)** %30, align 8
  %32 = load %struct.gf100_grctx.3*, %struct.gf100_grctx.3** %4, align 8
  %33 = bitcast %struct.gf100_grctx.3* %32 to %struct.gf100_grctx.2*
  %34 = call i32 %31(%struct.gf100_grctx.2* %33)
  %35 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %6, align 8
  %36 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %35, i32 0, i32 2
  %37 = load i32 (%struct.gf100_gr.1*)*, i32 (%struct.gf100_gr.1*)** %36, align 8
  %38 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %39 = bitcast %struct.gf100_gr* %38 to %struct.gf100_gr.1*
  %40 = call i32 %37(%struct.gf100_gr.1* %39)
  %41 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %42 = call i32 @gf100_grctx_generate_floorsweep(%struct.gf100_gr* %41)
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %52, %2
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 8
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %48, 4
  %50 = add nsw i32 4220112, %49
  %51 = call i32 @nvkm_wr32(%struct.nvkm_device* %47, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %43

55:                                               ; preds = %43
  %56 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %57 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %58 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = shl i32 %59, 8
  %61 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %62 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %60, %63
  %65 = call i32 @nvkm_wr32(%struct.nvkm_device* %56, i32 4217600, i32 %64)
  %66 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %67 = call i32 @nvkm_mask(%struct.nvkm_device* %66, i32 5260464, i32 134217728, i32 134217728)
  %68 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %69 = call i32 @gf100_gr_wait_idle(%struct.gf100_gr* %68)
  %70 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @nvkm_wr32(%struct.nvkm_device* %70, i32 4211028, i32 %71)
  %73 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %74 = call i32 @gf100_gr_wait_idle(%struct.gf100_gr* %73)
  %75 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %76 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %77 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @gf100_gr_mthd(%struct.gf100_gr* %75, i32 %78)
  %80 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %81 = call i32 @gf100_gr_wait_idle(%struct.gf100_gr* %80)
  %82 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %83 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %84 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @gf100_gr_icmd(%struct.gf100_gr* %82, i32 %85)
  %87 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %6, align 8
  %88 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %87, i32 0, i32 1
  %89 = load i32 (%struct.gf100_grctx.0*)*, i32 (%struct.gf100_grctx.0*)** %88, align 8
  %90 = load %struct.gf100_grctx.3*, %struct.gf100_grctx.3** %4, align 8
  %91 = bitcast %struct.gf100_grctx.3* %90 to %struct.gf100_grctx.0*
  %92 = call i32 %89(%struct.gf100_grctx.0* %91)
  %93 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %6, align 8
  %94 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %93, i32 0, i32 0
  %95 = load i32 (%struct.gf100_grctx*)*, i32 (%struct.gf100_grctx*)** %94, align 8
  %96 = load %struct.gf100_grctx.3*, %struct.gf100_grctx.3** %4, align 8
  %97 = bitcast %struct.gf100_grctx.3* %96 to %struct.gf100_grctx*
  %98 = call i32 %95(%struct.gf100_grctx* %97)
  ret void
}

declare dso_local i32 @gf100_gr_mmio(%struct.gf100_gr*, i32) #1

declare dso_local i32 @gf100_gr_wait_idle(%struct.gf100_gr*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @gf100_grctx_generate_floorsweep(%struct.gf100_gr*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @gf100_gr_mthd(%struct.gf100_gr*, i32) #1

declare dso_local i32 @gf100_gr_icmd(%struct.gf100_gr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
