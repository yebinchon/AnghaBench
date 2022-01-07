; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_gf100.c_gf100_fb_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_gf100.c_gf100_fb_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { i32 }
%struct.gf100_fb = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"MmuDebugBufferSize\00", align 1
@NVKM_MEM_TARGET_INST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_fb_oneinit(%struct.nvkm_fb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_fb*, align 8
  %4 = alloca %struct.gf100_fb*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %3, align 8
  %8 = load %struct.nvkm_fb*, %struct.nvkm_fb** %3, align 8
  %9 = call %struct.gf100_fb* @gf100_fb(%struct.nvkm_fb* %8)
  store %struct.gf100_fb* %9, %struct.gf100_fb** %4, align 8
  %10 = load %struct.gf100_fb*, %struct.gf100_fb** %4, align 8
  %11 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %5, align 8
  %15 = load %struct.gf100_fb*, %struct.gf100_fb** %4, align 8
  %16 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.gf100_fb*, %struct.gf100_fb** %4, align 8
  %22 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  br label %26

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi i32 [ %24, %20 ], [ 17, %25 ]
  %28 = shl i32 1, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %30 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @nvkm_longopt(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @max(i32 %34, i32 4096)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %37 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.gf100_fb*, %struct.gf100_fb** %4, align 8
  %40 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = call i32 @nvkm_memory_new(%struct.nvkm_device* %36, i32 %37, i32 %38, i32 4096, i32 1, i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %26
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %95

47:                                               ; preds = %26
  %48 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %49 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.gf100_fb*, %struct.gf100_fb** %4, align 8
  %52 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = call i32 @nvkm_memory_new(%struct.nvkm_device* %48, i32 %49, i32 %50, i32 4096, i32 1, i32* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %95

59:                                               ; preds = %47
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = load i32, i32* @__GFP_ZERO, align 4
  %62 = or i32 %60, %61
  %63 = call i64 @alloc_page(i32 %62)
  %64 = load %struct.gf100_fb*, %struct.gf100_fb** %4, align 8
  %65 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.gf100_fb*, %struct.gf100_fb** %4, align 8
  %67 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %59
  %71 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %72 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.gf100_fb*, %struct.gf100_fb** %4, align 8
  %75 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %79 = call i32 @dma_map_page(i32 %73, i64 %76, i32 0, i32 %77, i32 %78)
  %80 = load %struct.gf100_fb*, %struct.gf100_fb** %4, align 8
  %81 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %83 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.gf100_fb*, %struct.gf100_fb** %4, align 8
  %86 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @dma_mapping_error(i32 %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %70
  %91 = load i32, i32* @EFAULT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %95

93:                                               ; preds = %70
  br label %94

94:                                               ; preds = %93, %59
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %90, %57, %45
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.gf100_fb* @gf100_fb(%struct.nvkm_fb*) #1

declare dso_local i32 @nvkm_longopt(i32, i8*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @nvkm_memory_new(%struct.nvkm_device*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @alloc_page(i32) #1

declare dso_local i32 @dma_map_page(i32, i64, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
