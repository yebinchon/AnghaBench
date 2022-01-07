; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_rootnv50.c_nv50_disp_root_child_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_rootnv50.c_nv50_disp_root_child_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_oclass = type { %struct.nv50_disp_user*, i32 }
%struct.nv50_disp_user = type { i32 (%struct.nvkm_oclass*, i8*, i32, %struct.nv50_disp*, %struct.nvkm_object**)* }
%struct.nv50_disp = type opaque
%struct.nvkm_object = type { i32 }
%struct.nv50_disp.0 = type { i32 }
%struct.TYPE_2__ = type { %struct.nv50_disp.0* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**)* @nv50_disp_root_child_new_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_disp_root_child_new_(%struct.nvkm_oclass* %0, i8* %1, i32 %2, %struct.nvkm_object** %3) #0 {
  %5 = alloca %struct.nvkm_oclass*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_object**, align 8
  %9 = alloca %struct.nv50_disp.0*, align 8
  %10 = alloca %struct.nv50_disp_user*, align 8
  store %struct.nvkm_oclass* %0, %struct.nvkm_oclass** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_object** %3, %struct.nvkm_object*** %8, align 8
  %11 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_2__* @nv50_disp_root(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.nv50_disp.0*, %struct.nv50_disp.0** %15, align 8
  store %struct.nv50_disp.0* %16, %struct.nv50_disp.0** %9, align 8
  %17 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %17, i32 0, i32 0
  %19 = load %struct.nv50_disp_user*, %struct.nv50_disp_user** %18, align 8
  store %struct.nv50_disp_user* %19, %struct.nv50_disp_user** %10, align 8
  %20 = load %struct.nv50_disp_user*, %struct.nv50_disp_user** %10, align 8
  %21 = getelementptr inbounds %struct.nv50_disp_user, %struct.nv50_disp_user* %20, i32 0, i32 0
  %22 = load i32 (%struct.nvkm_oclass*, i8*, i32, %struct.nv50_disp*, %struct.nvkm_object**)*, i32 (%struct.nvkm_oclass*, i8*, i32, %struct.nv50_disp*, %struct.nvkm_object**)** %21, align 8
  %23 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.nv50_disp.0*, %struct.nv50_disp.0** %9, align 8
  %27 = bitcast %struct.nv50_disp.0* %26 to %struct.nv50_disp*
  %28 = load %struct.nvkm_object**, %struct.nvkm_object*** %8, align 8
  %29 = call i32 %22(%struct.nvkm_oclass* %23, i8* %24, i32 %25, %struct.nv50_disp* %27, %struct.nvkm_object** %28)
  ret i32 %29
}

declare dso_local %struct.TYPE_2__* @nv50_disp_root(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
