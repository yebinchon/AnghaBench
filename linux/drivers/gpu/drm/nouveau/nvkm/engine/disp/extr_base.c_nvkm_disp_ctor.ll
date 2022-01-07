; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_base.c_nvkm_disp_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_base.c_nvkm_disp_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_disp_func = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_disp = type { i32, i32, i32, i32, i32, %struct.nvkm_disp_func* }

@nvkm_disp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_disp_ctor(%struct.nvkm_disp_func* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_disp* %3) #0 {
  %5 = alloca %struct.nvkm_disp_func*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_disp*, align 8
  store %struct.nvkm_disp_func* %0, %struct.nvkm_disp_func** %5, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_disp* %3, %struct.nvkm_disp** %8, align 8
  %9 = load %struct.nvkm_disp_func*, %struct.nvkm_disp_func** %5, align 8
  %10 = load %struct.nvkm_disp*, %struct.nvkm_disp** %8, align 8
  %11 = getelementptr inbounds %struct.nvkm_disp, %struct.nvkm_disp* %10, i32 0, i32 5
  store %struct.nvkm_disp_func* %9, %struct.nvkm_disp_func** %11, align 8
  %12 = load %struct.nvkm_disp*, %struct.nvkm_disp** %8, align 8
  %13 = getelementptr inbounds %struct.nvkm_disp, %struct.nvkm_disp* %12, i32 0, i32 4
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.nvkm_disp*, %struct.nvkm_disp** %8, align 8
  %16 = getelementptr inbounds %struct.nvkm_disp, %struct.nvkm_disp* %15, i32 0, i32 3
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.nvkm_disp*, %struct.nvkm_disp** %8, align 8
  %19 = getelementptr inbounds %struct.nvkm_disp, %struct.nvkm_disp* %18, i32 0, i32 2
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.nvkm_disp*, %struct.nvkm_disp** %8, align 8
  %22 = getelementptr inbounds %struct.nvkm_disp, %struct.nvkm_disp* %21, i32 0, i32 1
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.nvkm_disp*, %struct.nvkm_disp** %8, align 8
  %27 = getelementptr inbounds %struct.nvkm_disp, %struct.nvkm_disp* %26, i32 0, i32 0
  %28 = call i32 @nvkm_engine_ctor(i32* @nvkm_disp, %struct.nvkm_device* %24, i32 %25, i32 1, i32* %27)
  ret i32 %28
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nvkm_engine_ctor(i32*, %struct.nvkm_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
