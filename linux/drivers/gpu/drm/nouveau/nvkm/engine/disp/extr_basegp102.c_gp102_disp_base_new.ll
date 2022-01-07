; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_basegp102.c_gp102_disp_base_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_basegp102.c_gp102_disp_base_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_oclass = type { i32 }
%struct.nv50_disp = type { i32 }
%struct.nvkm_object = type { i32 }

@gp102_disp_dmac_func = common dso_local global i32 0, align 4
@gf119_disp_base_mthd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gp102_disp_base_new(%struct.nvkm_oclass* %0, i8* %1, i32 %2, %struct.nv50_disp* %3, %struct.nvkm_object** %4) #0 {
  %6 = alloca %struct.nvkm_oclass*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nv50_disp*, align 8
  %10 = alloca %struct.nvkm_object**, align 8
  store %struct.nvkm_oclass* %0, %struct.nvkm_oclass** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nv50_disp* %3, %struct.nv50_disp** %9, align 8
  store %struct.nvkm_object** %4, %struct.nvkm_object*** %10, align 8
  %11 = load %struct.nv50_disp*, %struct.nv50_disp** %9, align 8
  %12 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.nvkm_object**, %struct.nvkm_object*** %10, align 8
  %16 = call i32 @nv50_disp_base_new_(i32* @gp102_disp_dmac_func, i32* @gf119_disp_base_mthd, %struct.nv50_disp* %11, i32 1, %struct.nvkm_oclass* %12, i8* %13, i32 %14, %struct.nvkm_object** %15)
  ret i32 %16
}

declare dso_local i32 @nv50_disp_base_new_(i32*, i32*, %struct.nv50_disp*, i32, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
