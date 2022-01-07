; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_rootnv50.c_nv50_disp_root_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_rootnv50.c_nv50_disp_root_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp_root_func = type { i32 }
%struct.nvkm_disp = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nv50_disp = type { i32 }
%struct.nv50_disp_root = type { %struct.nv50_disp*, %struct.nv50_disp_root_func*, %struct.nvkm_object }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv50_disp_root_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_disp_root_new_(%struct.nv50_disp_root_func* %0, %struct.nvkm_disp* %1, %struct.nvkm_oclass* %2, i8* %3, i32 %4, %struct.nvkm_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nv50_disp_root_func*, align 8
  %9 = alloca %struct.nvkm_disp*, align 8
  %10 = alloca %struct.nvkm_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvkm_object**, align 8
  %14 = alloca %struct.nv50_disp*, align 8
  %15 = alloca %struct.nv50_disp_root*, align 8
  store %struct.nv50_disp_root_func* %0, %struct.nv50_disp_root_func** %8, align 8
  store %struct.nvkm_disp* %1, %struct.nvkm_disp** %9, align 8
  store %struct.nvkm_oclass* %2, %struct.nvkm_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nvkm_object** %5, %struct.nvkm_object*** %13, align 8
  %16 = load %struct.nvkm_disp*, %struct.nvkm_disp** %9, align 8
  %17 = call %struct.nv50_disp* @nv50_disp(%struct.nvkm_disp* %16)
  store %struct.nv50_disp* %17, %struct.nv50_disp** %14, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.nv50_disp_root* @kzalloc(i32 24, i32 %18)
  store %struct.nv50_disp_root* %19, %struct.nv50_disp_root** %15, align 8
  %20 = icmp ne %struct.nv50_disp_root* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %38

24:                                               ; preds = %6
  %25 = load %struct.nv50_disp_root*, %struct.nv50_disp_root** %15, align 8
  %26 = getelementptr inbounds %struct.nv50_disp_root, %struct.nv50_disp_root* %25, i32 0, i32 2
  %27 = load %struct.nvkm_object**, %struct.nvkm_object*** %13, align 8
  store %struct.nvkm_object* %26, %struct.nvkm_object** %27, align 8
  %28 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %10, align 8
  %29 = load %struct.nv50_disp_root*, %struct.nv50_disp_root** %15, align 8
  %30 = getelementptr inbounds %struct.nv50_disp_root, %struct.nv50_disp_root* %29, i32 0, i32 2
  %31 = call i32 @nvkm_object_ctor(i32* @nv50_disp_root_, %struct.nvkm_oclass* %28, %struct.nvkm_object* %30)
  %32 = load %struct.nv50_disp_root_func*, %struct.nv50_disp_root_func** %8, align 8
  %33 = load %struct.nv50_disp_root*, %struct.nv50_disp_root** %15, align 8
  %34 = getelementptr inbounds %struct.nv50_disp_root, %struct.nv50_disp_root* %33, i32 0, i32 1
  store %struct.nv50_disp_root_func* %32, %struct.nv50_disp_root_func** %34, align 8
  %35 = load %struct.nv50_disp*, %struct.nv50_disp** %14, align 8
  %36 = load %struct.nv50_disp_root*, %struct.nv50_disp_root** %15, align 8
  %37 = getelementptr inbounds %struct.nv50_disp_root, %struct.nv50_disp_root* %36, i32 0, i32 0
  store %struct.nv50_disp* %35, %struct.nv50_disp** %37, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %24, %21
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local %struct.nv50_disp* @nv50_disp(%struct.nvkm_disp*) #1

declare dso_local %struct.nv50_disp_root* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_object_ctor(i32*, %struct.nvkm_oclass*, %struct.nvkm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
