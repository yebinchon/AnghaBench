; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem_dmabuf.c_omap_gem_prime_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem_dmabuf.c_omap_gem_prime_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.drm_gem_object*, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.dma_buf = type { i32, %struct.sg_table*, i32* }
%struct.sg_table = type { %struct.sg_table*, %struct.drm_device* }
%struct.dma_buf_attachment = type { %struct.dma_buf_attachment*, %struct.drm_device* }

@omap_dmabuf_ops = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @omap_gem_prime_import(%struct.drm_device* %0, %struct.dma_buf* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.dma_buf*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.drm_gem_object*, align 8
  %8 = alloca %struct.sg_table*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.dma_buf* %1, %struct.dma_buf** %5, align 8
  %10 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %11 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, @omap_dmabuf_ops
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %16 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %15, i32 0, i32 1
  %17 = load %struct.sg_table*, %struct.sg_table** %16, align 8
  %18 = bitcast %struct.sg_table* %17 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %18, %struct.drm_gem_object** %7, align 8
  %19 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %20 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %19, i32 0, i32 1
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = icmp eq %struct.drm_device* %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %26 = bitcast %struct.drm_gem_object* %25 to %struct.sg_table*
  %27 = call i32 @drm_gem_object_get(%struct.sg_table* %26)
  %28 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  store %struct.drm_gem_object* %28, %struct.drm_gem_object** %3, align 8
  br label %97

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.sg_table* @dma_buf_attach(%struct.dma_buf* %31, i32 %34)
  %36 = bitcast %struct.sg_table* %35 to %struct.dma_buf_attachment*
  store %struct.dma_buf_attachment* %36, %struct.dma_buf_attachment** %6, align 8
  %37 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %38 = bitcast %struct.dma_buf_attachment* %37 to %struct.sg_table*
  %39 = call i64 @IS_ERR(%struct.sg_table* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %43 = bitcast %struct.dma_buf_attachment* %42 to %struct.sg_table*
  %44 = call %struct.sg_table* @ERR_CAST(%struct.sg_table* %43)
  %45 = bitcast %struct.sg_table* %44 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %45, %struct.drm_gem_object** %3, align 8
  br label %97

46:                                               ; preds = %30
  %47 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %48 = call i32 @get_dma_buf(%struct.dma_buf* %47)
  %49 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %50 = bitcast %struct.dma_buf_attachment* %49 to %struct.sg_table*
  %51 = load i32, i32* @DMA_TO_DEVICE, align 4
  %52 = call %struct.sg_table* @dma_buf_map_attachment(%struct.sg_table* %50, i32 %51)
  store %struct.sg_table* %52, %struct.sg_table** %8, align 8
  %53 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %54 = call i64 @IS_ERR(%struct.sg_table* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %58 = call i32 @PTR_ERR(%struct.sg_table* %57)
  store i32 %58, i32* %9, align 4
  br label %87

59:                                               ; preds = %46
  %60 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %61 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %62 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %65 = call %struct.sg_table* @omap_gem_new_dmabuf(%struct.drm_device* %60, i32 %63, %struct.sg_table* %64)
  %66 = bitcast %struct.sg_table* %65 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %66, %struct.drm_gem_object** %7, align 8
  %67 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %68 = bitcast %struct.drm_gem_object* %67 to %struct.sg_table*
  %69 = call i64 @IS_ERR(%struct.sg_table* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %59
  %72 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %73 = bitcast %struct.drm_gem_object* %72 to %struct.sg_table*
  %74 = call i32 @PTR_ERR(%struct.sg_table* %73)
  store i32 %74, i32* %9, align 4
  br label %81

75:                                               ; preds = %59
  %76 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %77 = bitcast %struct.dma_buf_attachment* %76 to %struct.drm_gem_object*
  %78 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %79 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %78, i32 0, i32 0
  store %struct.drm_gem_object* %77, %struct.drm_gem_object** %79, align 8
  %80 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  store %struct.drm_gem_object* %80, %struct.drm_gem_object** %3, align 8
  br label %97

81:                                               ; preds = %71
  %82 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %83 = bitcast %struct.dma_buf_attachment* %82 to %struct.sg_table*
  %84 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %85 = load i32, i32* @DMA_TO_DEVICE, align 4
  %86 = call i32 @dma_buf_unmap_attachment(%struct.sg_table* %83, %struct.sg_table* %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %56
  %88 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %89 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %90 = bitcast %struct.dma_buf_attachment* %89 to %struct.sg_table*
  %91 = call i32 @dma_buf_detach(%struct.dma_buf* %88, %struct.sg_table* %90)
  %92 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %93 = call i32 @dma_buf_put(%struct.dma_buf* %92)
  %94 = load i32, i32* %9, align 4
  %95 = call %struct.sg_table* @ERR_PTR(i32 %94)
  %96 = bitcast %struct.sg_table* %95 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %96, %struct.drm_gem_object** %3, align 8
  br label %97

97:                                               ; preds = %87, %75, %41, %24
  %98 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  ret %struct.drm_gem_object* %98
}

declare dso_local i32 @drm_gem_object_get(%struct.sg_table*) #1

declare dso_local %struct.sg_table* @dma_buf_attach(%struct.dma_buf*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sg_table*) #1

declare dso_local %struct.sg_table* @ERR_CAST(%struct.sg_table*) #1

declare dso_local i32 @get_dma_buf(%struct.dma_buf*) #1

declare dso_local %struct.sg_table* @dma_buf_map_attachment(%struct.sg_table*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.sg_table*) #1

declare dso_local %struct.sg_table* @omap_gem_new_dmabuf(%struct.drm_device*, i32, %struct.sg_table*) #1

declare dso_local i32 @dma_buf_unmap_attachment(%struct.sg_table*, %struct.sg_table*, i32) #1

declare dso_local i32 @dma_buf_detach(%struct.dma_buf*, %struct.sg_table*) #1

declare dso_local i32 @dma_buf_put(%struct.dma_buf*) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
