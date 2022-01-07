; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_gene_ccache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_gene_ccache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*)* @nv50_gr_construct_gene_ccache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_gr_construct_gene_ccache(%struct.nvkm_grctx* %0) #0 {
  %2 = alloca %struct.nvkm_grctx*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_grctx* %0, %struct.nvkm_grctx** %2, align 8
  %4 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %4, i32 0, i32 0
  %6 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  store %struct.nvkm_device* %6, %struct.nvkm_device** %3, align 8
  %7 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %8 = call i32 @xf_emit(%struct.nvkm_grctx* %7, i32 2, i32 0)
  %9 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %10 = call i32 @xf_emit(%struct.nvkm_grctx* %9, i32 2048, i32 0)
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %26 [
    i32 80, label %14
    i32 146, label %14
    i32 160, label %14
    i32 132, label %17
    i32 148, label %20
    i32 150, label %20
    i32 163, label %20
    i32 134, label %23
    i32 152, label %23
    i32 165, label %23
    i32 168, label %23
    i32 170, label %23
    i32 172, label %23
    i32 175, label %23
  ]

14:                                               ; preds = %1, %1, %1
  %15 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %16 = call i32 @xf_emit(%struct.nvkm_grctx* %15, i32 43, i32 0)
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %19 = call i32 @xf_emit(%struct.nvkm_grctx* %18, i32 41, i32 0)
  br label %26

20:                                               ; preds = %1, %1, %1
  %21 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %22 = call i32 @xf_emit(%struct.nvkm_grctx* %21, i32 39, i32 0)
  br label %26

23:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %24 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %25 = call i32 @xf_emit(%struct.nvkm_grctx* %24, i32 37, i32 0)
  br label %26

26:                                               ; preds = %1, %23, %20, %17, %14
  %27 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %28 = call i32 @xf_emit(%struct.nvkm_grctx* %27, i32 256, i32 0)
  %29 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %30 = call i32 @xf_emit(%struct.nvkm_grctx* %29, i32 1, i32 0)
  %31 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %32 = call i32 @xf_emit(%struct.nvkm_grctx* %31, i32 1, i32 0)
  %33 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %34 = call i32 @xf_emit(%struct.nvkm_grctx* %33, i32 48, i32 0)
  %35 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %36 = call i32 @xf_emit(%struct.nvkm_grctx* %35, i32 1, i32 0)
  %37 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %38 = call i32 @xf_emit(%struct.nvkm_grctx* %37, i32 4, i32 0)
  %39 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %40 = call i32 @xf_emit(%struct.nvkm_grctx* %39, i32 256, i32 0)
  %41 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %42 = call i32 @xf_emit(%struct.nvkm_grctx* %41, i32 8, i32 0)
  %43 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %44 = call i32 @xf_emit(%struct.nvkm_grctx* %43, i32 8, i32 0)
  %45 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %46 = call i32 @xf_emit(%struct.nvkm_grctx* %45, i32 4, i32 0)
  %47 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %48 = call i32 @xf_emit(%struct.nvkm_grctx* %47, i32 1, i32 0)
  %49 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %50 = call i32 @xf_emit(%struct.nvkm_grctx* %49, i32 1, i32 0)
  %51 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %52 = call i32 @xf_emit(%struct.nvkm_grctx* %51, i32 1, i32 0)
  %53 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %54 = call i32 @xf_emit(%struct.nvkm_grctx* %53, i32 1, i32 0)
  %55 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %56 = call i32 @xf_emit(%struct.nvkm_grctx* %55, i32 1, i32 0)
  %57 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %58 = call i32 @xf_emit(%struct.nvkm_grctx* %57, i32 1, i32 0)
  %59 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %60 = call i32 @xf_emit(%struct.nvkm_grctx* %59, i32 1, i32 0)
  %61 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %62 = call i32 @xf_emit(%struct.nvkm_grctx* %61, i32 1, i32 0)
  %63 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %64 = call i32 @xf_emit(%struct.nvkm_grctx* %63, i32 1, i32 4194303)
  %65 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %66 = call i32 @xf_emit(%struct.nvkm_grctx* %65, i32 1, i32 0)
  %67 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %68 = call i32 @xf_emit(%struct.nvkm_grctx* %67, i32 1, i32 0)
  %69 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %70 = call i32 @xf_emit(%struct.nvkm_grctx* %69, i32 1, i32 8191)
  %71 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %72 = call i32 @xf_emit(%struct.nvkm_grctx* %71, i32 1, i32 0)
  %73 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %74 = call i32 @xf_emit(%struct.nvkm_grctx* %73, i32 1, i32 0)
  %75 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %76 = call i32 @xf_emit(%struct.nvkm_grctx* %75, i32 1, i32 0)
  %77 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %78 = call i32 @xf_emit(%struct.nvkm_grctx* %77, i32 1, i32 0)
  %79 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %80 = call i32 @xf_emit(%struct.nvkm_grctx* %79, i32 1, i32 0)
  %81 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %82 = call i32 @xf_emit(%struct.nvkm_grctx* %81, i32 1, i32 0)
  %83 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %84 = call i32 @xf_emit(%struct.nvkm_grctx* %83, i32 1, i32 0)
  %85 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %86 = call i32 @xf_emit(%struct.nvkm_grctx* %85, i32 1, i32 0)
  %87 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %88 = call i32 @xf_emit(%struct.nvkm_grctx* %87, i32 1, i32 0)
  %89 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %90 = call i32 @xf_emit(%struct.nvkm_grctx* %89, i32 1, i32 0)
  %91 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %92 = call i32 @xf_emit(%struct.nvkm_grctx* %91, i32 1, i32 0)
  %93 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %94 = call i32 @xf_emit(%struct.nvkm_grctx* %93, i32 1, i32 0)
  ret void
}

declare dso_local i32 @xf_emit(%struct.nvkm_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
