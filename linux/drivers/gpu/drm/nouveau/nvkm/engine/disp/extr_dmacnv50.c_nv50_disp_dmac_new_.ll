; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dmacnv50.c_nv50_disp_dmac_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dmacnv50.c_nv50_disp_dmac_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp_chan_func = type { i32 }
%struct.nv50_disp_chan_mthd = type { i32 }
%struct.nv50_disp = type { i32 }
%struct.nvkm_oclass = type { %struct.nvkm_client* }
%struct.nvkm_client = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nv50_disp_chan = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_disp_dmac_new_(%struct.nv50_disp_chan_func* %0, %struct.nv50_disp_chan_mthd* %1, %struct.nv50_disp* %2, i32 %3, i32 %4, i32 %5, %struct.nvkm_oclass* %6, %struct.nvkm_object** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nv50_disp_chan_func*, align 8
  %11 = alloca %struct.nv50_disp_chan_mthd*, align 8
  %12 = alloca %struct.nv50_disp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nvkm_oclass*, align 8
  %17 = alloca %struct.nvkm_object**, align 8
  %18 = alloca %struct.nvkm_client*, align 8
  %19 = alloca %struct.nv50_disp_chan*, align 8
  %20 = alloca i32, align 4
  store %struct.nv50_disp_chan_func* %0, %struct.nv50_disp_chan_func** %10, align 8
  store %struct.nv50_disp_chan_mthd* %1, %struct.nv50_disp_chan_mthd** %11, align 8
  store %struct.nv50_disp* %2, %struct.nv50_disp** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.nvkm_oclass* %6, %struct.nvkm_oclass** %16, align 8
  store %struct.nvkm_object** %7, %struct.nvkm_object*** %17, align 8
  %21 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %16, align 8
  %22 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %21, i32 0, i32 0
  %23 = load %struct.nvkm_client*, %struct.nvkm_client** %22, align 8
  store %struct.nvkm_client* %23, %struct.nvkm_client** %18, align 8
  %24 = load %struct.nv50_disp_chan_func*, %struct.nv50_disp_chan_func** %10, align 8
  %25 = load %struct.nv50_disp_chan_mthd*, %struct.nv50_disp_chan_mthd** %11, align 8
  %26 = load %struct.nv50_disp*, %struct.nv50_disp** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %16, align 8
  %31 = load %struct.nvkm_object**, %struct.nvkm_object*** %17, align 8
  %32 = call i32 @nv50_disp_chan_new_(%struct.nv50_disp_chan_func* %24, %struct.nv50_disp_chan_mthd* %25, %struct.nv50_disp* %26, i32 %27, i32 %28, i32 %29, %struct.nvkm_oclass* %30, %struct.nvkm_object** %31)
  store i32 %32, i32* %20, align 4
  %33 = load %struct.nvkm_object**, %struct.nvkm_object*** %17, align 8
  %34 = load %struct.nvkm_object*, %struct.nvkm_object** %33, align 8
  %35 = call %struct.nv50_disp_chan* @nv50_disp_chan(%struct.nvkm_object* %34)
  store %struct.nv50_disp_chan* %35, %struct.nv50_disp_chan** %19, align 8
  %36 = load i32, i32* %20, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %8
  %39 = load i32, i32* %20, align 4
  store i32 %39, i32* %9, align 4
  br label %92

40:                                               ; preds = %8
  %41 = load %struct.nvkm_client*, %struct.nvkm_client** %18, align 8
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @nvkm_umem_search(%struct.nvkm_client* %41, i32 %42)
  %44 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %19, align 8
  %45 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %19, align 8
  %47 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %19, align 8
  %53 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @PTR_ERR(i32 %54)
  store i32 %55, i32* %9, align 4
  br label %92

56:                                               ; preds = %40
  %57 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %19, align 8
  %58 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @nvkm_memory_size(i32 %59)
  %61 = icmp slt i32 %60, 4096
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %9, align 4
  br label %92

65:                                               ; preds = %56
  %66 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %19, align 8
  %67 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @nvkm_memory_target(i32 %68)
  switch i32 %69, label %79 [
    i32 128, label %70
    i32 129, label %73
    i32 130, label %76
  ]

70:                                               ; preds = %65
  %71 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %19, align 8
  %72 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  br label %82

73:                                               ; preds = %65
  %74 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %19, align 8
  %75 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %74, i32 0, i32 0
  store i32 2, i32* %75, align 4
  br label %82

76:                                               ; preds = %65
  %77 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %19, align 8
  %78 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %77, i32 0, i32 0
  store i32 3, i32* %78, align 4
  br label %82

79:                                               ; preds = %65
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %9, align 4
  br label %92

82:                                               ; preds = %76, %73, %70
  %83 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %19, align 8
  %84 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @nvkm_memory_addr(i32 %85)
  %87 = ashr i32 %86, 8
  %88 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %19, align 8
  %89 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %82, %79, %62, %51, %38
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local i32 @nv50_disp_chan_new_(%struct.nv50_disp_chan_func*, %struct.nv50_disp_chan_mthd*, %struct.nv50_disp*, i32, i32, i32, %struct.nvkm_oclass*, %struct.nvkm_object**) #1

declare dso_local %struct.nv50_disp_chan* @nv50_disp_chan(%struct.nvkm_object*) #1

declare dso_local i32 @nvkm_umem_search(%struct.nvkm_client*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @nvkm_memory_size(i32) #1

declare dso_local i32 @nvkm_memory_target(i32) #1

declare dso_local i32 @nvkm_memory_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
