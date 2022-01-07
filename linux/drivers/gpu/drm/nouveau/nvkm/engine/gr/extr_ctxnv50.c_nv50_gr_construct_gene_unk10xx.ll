; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_gene_unk10xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_gene_unk10xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*)* @nv50_gr_construct_gene_unk10xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_gr_construct_gene_unk10xx(%struct.nvkm_grctx* %0) #0 {
  %2 = alloca %struct.nvkm_grctx*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_grctx* %0, %struct.nvkm_grctx** %2, align 8
  %5 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %6 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %5, i32 0, i32 0
  %7 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  store %struct.nvkm_device* %7, %struct.nvkm_device** %3, align 8
  %8 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %9 = call i32 @xf_emit(%struct.nvkm_grctx* %8, i32 1, i32 4)
  %10 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %11 = call i32 @xf_emit(%struct.nvkm_grctx* %10, i32 1, i32 4)
  %12 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %13 = call i32 @xf_emit(%struct.nvkm_grctx* %12, i32 1, i32 0)
  %14 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %15 = call i32 @xf_emit(%struct.nvkm_grctx* %14, i32 1, i32 128)
  %16 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %17 = call i32 @xf_emit(%struct.nvkm_grctx* %16, i32 1, i32 4)
  %18 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %19 = call i32 @xf_emit(%struct.nvkm_grctx* %18, i32 1, i32 527380)
  %20 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %21 = call i32 @xf_emit(%struct.nvkm_grctx* %20, i32 1, i32 0)
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %23 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 80
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %28 = call i32 @xf_emit(%struct.nvkm_grctx* %27, i32 1, i32 1023)
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %31 = call i32 @xf_emit(%struct.nvkm_grctx* %30, i32 1, i32 2047)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %34 = call i32 @xf_emit(%struct.nvkm_grctx* %33, i32 1, i32 0)
  %35 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %36 = call i32 @xf_emit(%struct.nvkm_grctx* %35, i32 1, i32 0)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %61, %32
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 8
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %42 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %56 [
    i32 80, label %44
    i32 134, label %44
    i32 152, label %44
    i32 170, label %44
    i32 172, label %44
    i32 132, label %47
    i32 146, label %47
    i32 148, label %47
    i32 150, label %47
    i32 165, label %50
    i32 168, label %50
    i32 160, label %53
    i32 163, label %53
    i32 175, label %53
  ]

44:                                               ; preds = %40, %40, %40, %40, %40
  %45 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %46 = call i32 @xf_emit(%struct.nvkm_grctx* %45, i32 160, i32 0)
  br label %56

47:                                               ; preds = %40, %40, %40, %40
  %48 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %49 = call i32 @xf_emit(%struct.nvkm_grctx* %48, i32 288, i32 0)
  br label %56

50:                                               ; preds = %40, %40
  %51 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %52 = call i32 @xf_emit(%struct.nvkm_grctx* %51, i32 256, i32 0)
  br label %56

53:                                               ; preds = %40, %40, %40
  %54 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %55 = call i32 @xf_emit(%struct.nvkm_grctx* %54, i32 1024, i32 0)
  br label %56

56:                                               ; preds = %40, %53, %50, %47, %44
  %57 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %58 = call i32 @xf_emit(%struct.nvkm_grctx* %57, i32 4, i32 0)
  %59 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %60 = call i32 @xf_emit(%struct.nvkm_grctx* %59, i32 4, i32 0)
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %37

64:                                               ; preds = %37
  %65 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %66 = call i32 @xf_emit(%struct.nvkm_grctx* %65, i32 1, i32 4)
  %67 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %68 = call i32 @xf_emit(%struct.nvkm_grctx* %67, i32 1, i32 4)
  %69 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %70 = call i32 @xf_emit(%struct.nvkm_grctx* %69, i32 1, i32 0)
  %71 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %72 = call i32 @xf_emit(%struct.nvkm_grctx* %71, i32 1, i32 128)
  %73 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %74 = call i32 @xf_emit(%struct.nvkm_grctx* %73, i32 1, i32 4)
  %75 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %76 = call i32 @xf_emit(%struct.nvkm_grctx* %75, i32 1, i32 1)
  %77 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %78 = call i32 @xf_emit(%struct.nvkm_grctx* %77, i32 1, i32 0)
  %79 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %80 = call i32 @xf_emit(%struct.nvkm_grctx* %79, i32 1, i32 39)
  %81 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %82 = call i32 @xf_emit(%struct.nvkm_grctx* %81, i32 1, i32 0)
  %83 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %84 = call i32 @xf_emit(%struct.nvkm_grctx* %83, i32 1, i32 38)
  %85 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %86 = call i32 @xf_emit(%struct.nvkm_grctx* %85, i32 1, i32 0)
  ret void
}

declare dso_local i32 @xf_emit(%struct.nvkm_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
