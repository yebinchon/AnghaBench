; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_rootnv04.c_nv04_disp_root_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_rootnv04.c_nv04_disp_root_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_disp = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nv04_disp_root = type { %struct.nvkm_object, %struct.nvkm_disp* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv04_disp_root = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_disp*, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**)* @nv04_disp_root_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_disp_root_new(%struct.nvkm_disp* %0, %struct.nvkm_oclass* %1, i8* %2, i32 %3, %struct.nvkm_object** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_disp*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_object**, align 8
  %12 = alloca %struct.nv04_disp_root*, align 8
  store %struct.nvkm_disp* %0, %struct.nvkm_disp** %7, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_object** %4, %struct.nvkm_object*** %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.nv04_disp_root* @kzalloc(i32 16, i32 %13)
  store %struct.nv04_disp_root* %14, %struct.nv04_disp_root** %12, align 8
  %15 = icmp ne %struct.nv04_disp_root* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %30

19:                                               ; preds = %5
  %20 = load %struct.nvkm_disp*, %struct.nvkm_disp** %7, align 8
  %21 = load %struct.nv04_disp_root*, %struct.nv04_disp_root** %12, align 8
  %22 = getelementptr inbounds %struct.nv04_disp_root, %struct.nv04_disp_root* %21, i32 0, i32 1
  store %struct.nvkm_disp* %20, %struct.nvkm_disp** %22, align 8
  %23 = load %struct.nv04_disp_root*, %struct.nv04_disp_root** %12, align 8
  %24 = getelementptr inbounds %struct.nv04_disp_root, %struct.nv04_disp_root* %23, i32 0, i32 0
  %25 = load %struct.nvkm_object**, %struct.nvkm_object*** %11, align 8
  store %struct.nvkm_object* %24, %struct.nvkm_object** %25, align 8
  %26 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %27 = load %struct.nv04_disp_root*, %struct.nv04_disp_root** %12, align 8
  %28 = getelementptr inbounds %struct.nv04_disp_root, %struct.nv04_disp_root* %27, i32 0, i32 0
  %29 = call i32 @nvkm_object_ctor(i32* @nv04_disp_root, %struct.nvkm_oclass* %26, %struct.nvkm_object* %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %19, %16
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local %struct.nv04_disp_root* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_object_ctor(i32*, %struct.nvkm_oclass*, %struct.nvkm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
