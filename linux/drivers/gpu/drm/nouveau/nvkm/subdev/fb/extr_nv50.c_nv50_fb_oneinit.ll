; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_nv50.c_nv50_fb_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_nv50.c_nv50_fb_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { i32 }
%struct.nv50_fb = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fb*)* @nv50_fb_oneinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_fb_oneinit(%struct.nvkm_fb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_fb*, align 8
  %4 = alloca %struct.nv50_fb*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %3, align 8
  %6 = load %struct.nvkm_fb*, %struct.nvkm_fb** %3, align 8
  %7 = call %struct.nv50_fb* @nv50_fb(%struct.nvkm_fb* %6)
  store %struct.nv50_fb* %7, %struct.nv50_fb** %4, align 8
  %8 = load %struct.nv50_fb*, %struct.nv50_fb** %4, align 8
  %9 = getelementptr inbounds %struct.nv50_fb, %struct.nv50_fb* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load i32, i32* @__GFP_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call i64 @alloc_page(i32 %15)
  %17 = load %struct.nv50_fb*, %struct.nv50_fb** %4, align 8
  %18 = getelementptr inbounds %struct.nv50_fb, %struct.nv50_fb* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load %struct.nv50_fb*, %struct.nv50_fb** %4, align 8
  %20 = getelementptr inbounds %struct.nv50_fb, %struct.nv50_fb* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %1
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %25 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nv50_fb*, %struct.nv50_fb** %4, align 8
  %28 = getelementptr inbounds %struct.nv50_fb, %struct.nv50_fb* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %32 = call i32 @dma_map_page(i32 %26, i64 %29, i32 0, i32 %30, i32 %31)
  %33 = load %struct.nv50_fb*, %struct.nv50_fb** %4, align 8
  %34 = getelementptr inbounds %struct.nv50_fb, %struct.nv50_fb* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %36 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nv50_fb*, %struct.nv50_fb** %4, align 8
  %39 = getelementptr inbounds %struct.nv50_fb, %struct.nv50_fb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @dma_mapping_error(i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load i32, i32* @EFAULT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %48

46:                                               ; preds = %23
  br label %47

47:                                               ; preds = %46, %1
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.nv50_fb* @nv50_fb(%struct.nvkm_fb*) #1

declare dso_local i64 @alloc_page(i32) #1

declare dso_local i32 @dma_map_page(i32, i64, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
