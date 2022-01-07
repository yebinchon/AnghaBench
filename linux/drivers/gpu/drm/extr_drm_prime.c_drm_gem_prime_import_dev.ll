; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_gem_prime_import_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_gem_prime_import_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, %struct.drm_gem_object*, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sg_table* (%struct.drm_device*, %struct.sg_table*, %struct.sg_table*)* }
%struct.sg_table = type { i32, %struct.sg_table*, %struct.drm_device* }
%struct.dma_buf = type { i32, %struct.sg_table*, i32* }
%struct.device = type { i32 }
%struct.dma_buf_attachment = type { i32, %struct.dma_buf_attachment*, %struct.drm_device* }

@drm_gem_prime_dmabuf_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @drm_gem_prime_import_dev(%struct.drm_device* %0, %struct.dma_buf* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.dma_buf*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.dma_buf_attachment*, align 8
  %9 = alloca %struct.sg_table*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.dma_buf* %1, %struct.dma_buf** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %12 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %13 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, @drm_gem_prime_dmabuf_ops
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %18 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %17, i32 0, i32 1
  %19 = load %struct.sg_table*, %struct.sg_table** %18, align 8
  %20 = bitcast %struct.sg_table* %19 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %20, %struct.drm_gem_object** %10, align 8
  %21 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %22 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %21, i32 0, i32 2
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %25 = icmp eq %struct.drm_device* %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %28 = bitcast %struct.drm_gem_object* %27 to %struct.sg_table*
  %29 = call i32 @drm_gem_object_get(%struct.sg_table* %28)
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  store %struct.drm_gem_object* %30, %struct.drm_gem_object** %4, align 8
  br label %118

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.sg_table* (%struct.drm_device*, %struct.sg_table*, %struct.sg_table*)*, %struct.sg_table* (%struct.drm_device*, %struct.sg_table*, %struct.sg_table*)** %36, align 8
  %38 = icmp ne %struct.sg_table* (%struct.drm_device*, %struct.sg_table*, %struct.sg_table*)* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.sg_table* @ERR_PTR(i32 %41)
  %43 = bitcast %struct.sg_table* %42 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %43, %struct.drm_gem_object** %4, align 8
  br label %118

44:                                               ; preds = %32
  %45 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = call %struct.sg_table* @dma_buf_attach(%struct.dma_buf* %45, %struct.device* %46)
  %48 = bitcast %struct.sg_table* %47 to %struct.dma_buf_attachment*
  store %struct.dma_buf_attachment* %48, %struct.dma_buf_attachment** %8, align 8
  %49 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %8, align 8
  %50 = bitcast %struct.dma_buf_attachment* %49 to %struct.sg_table*
  %51 = call i64 @IS_ERR(%struct.sg_table* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %8, align 8
  %55 = bitcast %struct.dma_buf_attachment* %54 to %struct.sg_table*
  %56 = call %struct.sg_table* @ERR_CAST(%struct.sg_table* %55)
  %57 = bitcast %struct.sg_table* %56 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %57, %struct.drm_gem_object** %4, align 8
  br label %118

58:                                               ; preds = %44
  %59 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %60 = call i32 @get_dma_buf(%struct.dma_buf* %59)
  %61 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %8, align 8
  %62 = bitcast %struct.dma_buf_attachment* %61 to %struct.sg_table*
  %63 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %64 = call %struct.sg_table* @dma_buf_map_attachment(%struct.sg_table* %62, i32 %63)
  store %struct.sg_table* %64, %struct.sg_table** %9, align 8
  %65 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %66 = call i64 @IS_ERR(%struct.sg_table* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %70 = call i32 @PTR_ERR(%struct.sg_table* %69)
  store i32 %70, i32* %11, align 4
  br label %108

71:                                               ; preds = %58
  %72 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %73 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.sg_table* (%struct.drm_device*, %struct.sg_table*, %struct.sg_table*)*, %struct.sg_table* (%struct.drm_device*, %struct.sg_table*, %struct.sg_table*)** %75, align 8
  %77 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %78 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %8, align 8
  %79 = bitcast %struct.dma_buf_attachment* %78 to %struct.sg_table*
  %80 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %81 = call %struct.sg_table* %76(%struct.drm_device* %77, %struct.sg_table* %79, %struct.sg_table* %80)
  %82 = bitcast %struct.sg_table* %81 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %82, %struct.drm_gem_object** %10, align 8
  %83 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %84 = bitcast %struct.drm_gem_object* %83 to %struct.sg_table*
  %85 = call i64 @IS_ERR(%struct.sg_table* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %71
  %88 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %89 = bitcast %struct.drm_gem_object* %88 to %struct.sg_table*
  %90 = call i32 @PTR_ERR(%struct.sg_table* %89)
  store i32 %90, i32* %11, align 4
  br label %102

91:                                               ; preds = %71
  %92 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %8, align 8
  %93 = bitcast %struct.dma_buf_attachment* %92 to %struct.drm_gem_object*
  %94 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %95 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %94, i32 0, i32 1
  store %struct.drm_gem_object* %93, %struct.drm_gem_object** %95, align 8
  %96 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %97 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %100 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  store %struct.drm_gem_object* %101, %struct.drm_gem_object** %4, align 8
  br label %118

102:                                              ; preds = %87
  %103 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %8, align 8
  %104 = bitcast %struct.dma_buf_attachment* %103 to %struct.sg_table*
  %105 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %106 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %107 = call i32 @dma_buf_unmap_attachment(%struct.sg_table* %104, %struct.sg_table* %105, i32 %106)
  br label %108

108:                                              ; preds = %102, %68
  %109 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %110 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %8, align 8
  %111 = bitcast %struct.dma_buf_attachment* %110 to %struct.sg_table*
  %112 = call i32 @dma_buf_detach(%struct.dma_buf* %109, %struct.sg_table* %111)
  %113 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %114 = call i32 @dma_buf_put(%struct.dma_buf* %113)
  %115 = load i32, i32* %11, align 4
  %116 = call %struct.sg_table* @ERR_PTR(i32 %115)
  %117 = bitcast %struct.sg_table* %116 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %117, %struct.drm_gem_object** %4, align 8
  br label %118

118:                                              ; preds = %108, %91, %53, %39, %26
  %119 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  ret %struct.drm_gem_object* %119
}

declare dso_local i32 @drm_gem_object_get(%struct.sg_table*) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local %struct.sg_table* @dma_buf_attach(%struct.dma_buf*, %struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.sg_table*) #1

declare dso_local %struct.sg_table* @ERR_CAST(%struct.sg_table*) #1

declare dso_local i32 @get_dma_buf(%struct.dma_buf*) #1

declare dso_local %struct.sg_table* @dma_buf_map_attachment(%struct.sg_table*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.sg_table*) #1

declare dso_local i32 @dma_buf_unmap_attachment(%struct.sg_table*, %struct.sg_table*, i32) #1

declare dso_local i32 @dma_buf_detach(%struct.dma_buf*, %struct.sg_table*) #1

declare dso_local i32 @dma_buf_put(%struct.dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
