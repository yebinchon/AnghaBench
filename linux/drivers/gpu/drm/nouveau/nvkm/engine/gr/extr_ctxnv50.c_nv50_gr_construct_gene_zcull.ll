; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_gene_zcull.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_gene_zcull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*)* @nv50_gr_construct_gene_zcull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_gr_construct_gene_zcull(%struct.nvkm_grctx* %0) #0 {
  %2 = alloca %struct.nvkm_grctx*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_grctx* %0, %struct.nvkm_grctx** %2, align 8
  %4 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %4, i32 0, i32 0
  %6 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  store %struct.nvkm_device* %6, %struct.nvkm_device** %3, align 8
  %7 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %8 = call i32 @xf_emit(%struct.nvkm_grctx* %7, i32 1, i32 63)
  %9 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %10 = call i32 @xf_emit(%struct.nvkm_grctx* %9, i32 1, i32 0)
  %11 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %12 = call i32 @xf_emit(%struct.nvkm_grctx* %11, i32 1, i32 0)
  %13 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %14 = call i32 @xf_emit(%struct.nvkm_grctx* %13, i32 1, i32 0)
  %15 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %16 = call i32 @xf_emit(%struct.nvkm_grctx* %15, i32 1, i32 0)
  %17 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %18 = call i32 @xf_emit(%struct.nvkm_grctx* %17, i32 1, i32 0)
  %19 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %20 = call i32 @xf_emit(%struct.nvkm_grctx* %19, i32 1, i32 0)
  %21 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %22 = call i32 @xf_emit(%struct.nvkm_grctx* %21, i32 1, i32 0)
  %23 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %24 = call i32 @xf_emit(%struct.nvkm_grctx* %23, i32 3, i32 0)
  %25 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %26 = call i32 @xf_emit(%struct.nvkm_grctx* %25, i32 1, i32 2)
  %27 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %28 = call i32 @xf_emit(%struct.nvkm_grctx* %27, i32 2, i32 67108864)
  %29 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %30 = call i32 @xf_emit(%struct.nvkm_grctx* %29, i32 1, i32 0)
  %31 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %32 = call i32 @xf_emit(%struct.nvkm_grctx* %31, i32 1, i32 0)
  %33 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %34 = call i32 @xf_emit(%struct.nvkm_grctx* %33, i32 2, i32 0)
  %35 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %36 = call i32 @xf_emit(%struct.nvkm_grctx* %35, i32 1, i32 0)
  %37 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %38 = call i32 @xf_emit(%struct.nvkm_grctx* %37, i32 1, i32 0)
  %39 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %40 = call i32 @xf_emit(%struct.nvkm_grctx* %39, i32 1, i32 0)
  %41 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %42 = call i32 @xf_emit(%struct.nvkm_grctx* %41, i32 1, i32 0)
  %43 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %44 = call i32 @xf_emit(%struct.nvkm_grctx* %43, i32 1, i32 4)
  %45 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %46 = call i32 @xf_emit(%struct.nvkm_grctx* %45, i32 1, i32 0)
  %47 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %48 = call i32 @xf_emit(%struct.nvkm_grctx* %47, i32 1, i32 0)
  %49 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %50 = call i32 @xf_emit(%struct.nvkm_grctx* %49, i32 1, i32 0)
  %51 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %52 = call i32 @xf_emit(%struct.nvkm_grctx* %51, i32 1, i32 4)
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
  %64 = call i32 @xf_emit(%struct.nvkm_grctx* %63, i32 1, i32 0)
  %65 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %66 = call i32 @xf_emit(%struct.nvkm_grctx* %65, i32 1, i32 0)
  %67 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %68 = call i32 @xf_emit(%struct.nvkm_grctx* %67, i32 3, i32 0)
  %69 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %70 = call i32 @xf_emit(%struct.nvkm_grctx* %69, i32 1, i32 0)
  %71 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %72 = call i32 @xf_emit(%struct.nvkm_grctx* %71, i32 1, i32 0)
  %73 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %74 = call i32 @xf_emit(%struct.nvkm_grctx* %73, i32 1, i32 0)
  %75 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %76 = call i32 @xf_emit(%struct.nvkm_grctx* %75, i32 1, i32 0)
  %77 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %78 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 80
  br i1 %80, label %81, label %84

81:                                               ; preds = %1
  %82 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %83 = call i32 @xf_emit(%struct.nvkm_grctx* %82, i32 1, i32 0)
  br label %84

84:                                               ; preds = %81, %1
  %85 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %86 = call i32 @xf_emit(%struct.nvkm_grctx* %85, i32 1, i32 0)
  %87 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %88 = call i32 @xf_emit(%struct.nvkm_grctx* %87, i32 1, i32 0)
  %89 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %90 = call i32 @xf_emit(%struct.nvkm_grctx* %89, i32 1, i32 1)
  %91 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %92 = call i32 @xf_emit(%struct.nvkm_grctx* %91, i32 1, i32 4097)
  %93 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %94 = call i32 @xf_emit(%struct.nvkm_grctx* %93, i32 4, i32 65535)
  %95 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %96 = call i32 @xf_emit(%struct.nvkm_grctx* %95, i32 16, i32 0)
  %97 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %98 = call i32 @xf_emit(%struct.nvkm_grctx* %97, i32 16, i32 0)
  %99 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %100 = call i32 @xf_emit(%struct.nvkm_grctx* %99, i32 16, i32 1065353216)
  %101 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %102 = call i32 @xf_emit(%struct.nvkm_grctx* %101, i32 1, i32 16)
  %103 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %104 = call i32 @xf_emit(%struct.nvkm_grctx* %103, i32 1, i32 0)
  %105 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %106 = call i32 @xf_emit(%struct.nvkm_grctx* %105, i32 1, i32 3)
  %107 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %108 = call i32 @xf_emit(%struct.nvkm_grctx* %107, i32 1, i32 0)
  %109 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %110 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 80
  br i1 %112, label %113, label %116

113:                                              ; preds = %84
  %114 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %115 = call i32 @xf_emit(%struct.nvkm_grctx* %114, i32 1, i32 0)
  br label %116

116:                                              ; preds = %113, %84
  %117 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %118 = call i32 @xf_emit(%struct.nvkm_grctx* %117, i32 1, i32 0)
  ret void
}

declare dso_local i32 @xf_emit(%struct.nvkm_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
