; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgm20b.c_gm20b_grctx_generate_main.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgm20b.c_gm20b_grctx_generate_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i32, i32, i32*, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
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

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_gr*, %struct.gf100_grctx.3*)* @gm20b_grctx_generate_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gm20b_grctx_generate_main(%struct.gf100_gr* %0, %struct.gf100_grctx.3* %1) #0 {
  %3 = alloca %struct.gf100_gr*, align 8
  %4 = alloca %struct.gf100_grctx.3*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca %struct.gf100_grctx_func*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %3, align 8
  store %struct.gf100_grctx.3* %1, %struct.gf100_grctx.3** %4, align 8
  %10 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %11 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %5, align 8
  %16 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %17 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %16, i32 0, i32 6
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %19, align 8
  store %struct.gf100_grctx_func* %20, %struct.gf100_grctx_func** %6, align 8
  %21 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %22 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %23 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @gf100_gr_mmio(%struct.gf100_gr* %21, i32 %24)
  %26 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %27 = call i32 @gf100_gr_wait_idle(%struct.gf100_gr* %26)
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %29 = call i32 @nvkm_mask(%struct.nvkm_device* %28, i32 4211028, i32 -1, i32 0)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %6, align 8
  %31 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %30, i32 0, i32 3
  %32 = load i32 (%struct.gf100_grctx.2*)*, i32 (%struct.gf100_grctx.2*)** %31, align 8
  %33 = load %struct.gf100_grctx.3*, %struct.gf100_grctx.3** %4, align 8
  %34 = bitcast %struct.gf100_grctx.3* %33 to %struct.gf100_grctx.2*
  %35 = call i32 %32(%struct.gf100_grctx.2* %34)
  %36 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %6, align 8
  %37 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %36, i32 0, i32 2
  %38 = load i32 (%struct.gf100_gr.1*)*, i32 (%struct.gf100_gr.1*)** %37, align 8
  %39 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %40 = bitcast %struct.gf100_gr* %39 to %struct.gf100_gr.1*
  %41 = call i32 %38(%struct.gf100_gr.1* %40)
  %42 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %43 = call i32 @gf100_grctx_generate_floorsweep(%struct.gf100_gr* %42)
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %53, %2
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %49, 4
  %51 = add nsw i32 4220112, %50
  %52 = call i32 @nvkm_wr32(%struct.nvkm_device* %48, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %44

56:                                               ; preds = %44
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %58 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %59 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %60, 8
  %62 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %63 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %61, %64
  %66 = call i32 @nvkm_wr32(%struct.nvkm_device* %57, i32 4217600, i32 %65)
  %67 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %68 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %69 = call i32 @nvkm_rd32(%struct.nvkm_device* %68, i32 4260104)
  %70 = or i32 %69, -2147483648
  %71 = call i32 @nvkm_wr32(%struct.nvkm_device* %67, i32 4229384, i32 %70)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %93, %56
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %75 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %72
  %79 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %80 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 1, %85
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %8, align 4
  %89 = mul nsw i32 %88, 4
  %90 = shl i32 %87, %89
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %78
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %72

96:                                               ; preds = %72
  %97 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @nvkm_wr32(%struct.nvkm_device* %97, i32 4211140, i32 %98)
  %100 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %101 = call i32 @gm200_grctx_generate_smid_config(%struct.gf100_gr* %100)
  %102 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %103 = call i32 @gf100_gr_wait_idle(%struct.gf100_gr* %102)
  %104 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @nvkm_wr32(%struct.nvkm_device* %104, i32 4211028, i32 %105)
  %107 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %108 = call i32 @gf100_gr_wait_idle(%struct.gf100_gr* %107)
  %109 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %110 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %111 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @gf100_gr_mthd(%struct.gf100_gr* %109, i32 %112)
  %114 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %115 = call i32 @gf100_gr_wait_idle(%struct.gf100_gr* %114)
  %116 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %117 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %118 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @gf100_gr_icmd(%struct.gf100_gr* %116, i32 %119)
  %121 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %6, align 8
  %122 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %121, i32 0, i32 1
  %123 = load i32 (%struct.gf100_grctx.0*)*, i32 (%struct.gf100_grctx.0*)** %122, align 8
  %124 = load %struct.gf100_grctx.3*, %struct.gf100_grctx.3** %4, align 8
  %125 = bitcast %struct.gf100_grctx.3* %124 to %struct.gf100_grctx.0*
  %126 = call i32 %123(%struct.gf100_grctx.0* %125)
  %127 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %6, align 8
  %128 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %127, i32 0, i32 0
  %129 = load i32 (%struct.gf100_grctx*)*, i32 (%struct.gf100_grctx*)** %128, align 8
  %130 = load %struct.gf100_grctx.3*, %struct.gf100_grctx.3** %4, align 8
  %131 = bitcast %struct.gf100_grctx.3* %130 to %struct.gf100_grctx*
  %132 = call i32 %129(%struct.gf100_grctx* %131)
  ret void
}

declare dso_local i32 @gf100_gr_mmio(%struct.gf100_gr*, i32) #1

declare dso_local i32 @gf100_gr_wait_idle(%struct.gf100_gr*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @gf100_grctx_generate_floorsweep(%struct.gf100_gr*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @gm200_grctx_generate_smid_config(%struct.gf100_gr*) #1

declare dso_local i32 @gf100_gr_mthd(%struct.gf100_gr*, i32) #1

declare dso_local i32 @gf100_gr_icmd(%struct.gf100_gr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
