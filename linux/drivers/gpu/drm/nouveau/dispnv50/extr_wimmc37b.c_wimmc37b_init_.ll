; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wimmc37b.c_wimmc37b_init_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wimmc37b.c_wimmc37b_init_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wimm_func = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nv50_wndw = type { i32, %struct.nv50_wimm_func*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nvc37b_window_imm_channel_dma_v0 = type { i32, i32 }
%struct.nv50_disp = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"wimm%04x allocation failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_wimm_func*, %struct.nouveau_drm*, i32, %struct.nv50_wndw*)* @wimmc37b_init_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wimmc37b_init_(%struct.nv50_wimm_func* %0, %struct.nouveau_drm* %1, i32 %2, %struct.nv50_wndw* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv50_wimm_func*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nv50_wndw*, align 8
  %10 = alloca %struct.nvc37b_window_imm_channel_dma_v0, align 4
  %11 = alloca %struct.nv50_disp*, align 8
  %12 = alloca i32, align 4
  store %struct.nv50_wimm_func* %0, %struct.nv50_wimm_func** %6, align 8
  store %struct.nouveau_drm* %1, %struct.nouveau_drm** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nv50_wndw* %3, %struct.nv50_wndw** %9, align 8
  %13 = getelementptr inbounds %struct.nvc37b_window_imm_channel_dma_v0, %struct.nvc37b_window_imm_channel_dma_v0* %10, i32 0, i32 0
  %14 = load %struct.nv50_wndw*, %struct.nv50_wndw** %9, align 8
  %15 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 -1342145792, %16
  store i32 %17, i32* %13, align 4
  %18 = getelementptr inbounds %struct.nvc37b_window_imm_channel_dma_v0, %struct.nvc37b_window_imm_channel_dma_v0* %10, i32 0, i32 1
  %19 = load %struct.nv50_wndw*, %struct.nv50_wndw** %9, align 8
  %20 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %18, align 4
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %23 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.nv50_disp* @nv50_disp(i32 %24)
  store %struct.nv50_disp* %25, %struct.nv50_disp** %11, align 8
  %26 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %27 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.nv50_disp*, %struct.nv50_disp** %11, align 8
  %30 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.nv50_wndw*, %struct.nv50_wndw** %9, align 8
  %34 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %33, i32 0, i32 3
  %35 = call i32 @nv50_dmac_create(i32* %28, i32* %32, i32* %8, i32 0, %struct.nvc37b_window_imm_channel_dma_v0* %10, i32 8, i32 0, i32* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %4
  %39 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @NV_ERROR(%struct.nouveau_drm* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %55

44:                                               ; preds = %4
  %45 = load %struct.nv50_wndw*, %struct.nv50_wndw** %9, align 8
  %46 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nv50_wndw*, %struct.nv50_wndw** %9, align 8
  %50 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.nv50_wimm_func*, %struct.nv50_wimm_func** %6, align 8
  %53 = load %struct.nv50_wndw*, %struct.nv50_wndw** %9, align 8
  %54 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %53, i32 0, i32 1
  store %struct.nv50_wimm_func* %52, %struct.nv50_wimm_func** %54, align 8
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %44, %38
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.nv50_disp* @nv50_disp(i32) #1

declare dso_local i32 @nv50_dmac_create(i32*, i32*, i32*, i32, %struct.nvc37b_window_imm_channel_dma_v0*, i32, i32, i32*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
