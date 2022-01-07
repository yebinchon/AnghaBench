; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_dmabuf.c_udl_gem_prime_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_dmabuf.c_udl_gem_prime_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.sg_table* }
%struct.sg_table = type { i32 }
%struct.drm_device = type { i32 }
%struct.dma_buf = type { i32 }
%struct.dma_buf_attachment = type opaque
%struct.udl_gem_object = type { %struct.drm_gem_object, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@UDL_BO_WC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @udl_gem_prime_import(%struct.drm_device* %0, %struct.dma_buf* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.dma_buf*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.udl_gem_object*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.dma_buf* %1, %struct.dma_buf** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @get_device(i32 %12)
  %14 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.sg_table* @dma_buf_attach(%struct.dma_buf* %14, i32 %17)
  %19 = bitcast %struct.sg_table* %18 to %struct.dma_buf_attachment*
  store %struct.dma_buf_attachment* %19, %struct.dma_buf_attachment** %6, align 8
  %20 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %21 = bitcast %struct.dma_buf_attachment* %20 to %struct.sg_table*
  %22 = call i64 @IS_ERR(%struct.sg_table* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @put_device(i32 %27)
  %29 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %30 = bitcast %struct.dma_buf_attachment* %29 to %struct.sg_table*
  %31 = call %struct.drm_gem_object* @ERR_CAST(%struct.sg_table* %30)
  store %struct.drm_gem_object* %31, %struct.drm_gem_object** %3, align 8
  br label %85

32:                                               ; preds = %2
  %33 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %34 = call i32 @get_dma_buf(%struct.dma_buf* %33)
  %35 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %36 = bitcast %struct.dma_buf_attachment* %35 to %struct.sg_table*
  %37 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %38 = call %struct.sg_table* @dma_buf_map_attachment(%struct.sg_table* %36, i32 %37)
  store %struct.sg_table* %38, %struct.sg_table** %7, align 8
  %39 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %40 = call i64 @IS_ERR(%struct.sg_table* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %44 = call i32 @PTR_ERR(%struct.sg_table* %43)
  store i32 %44, i32* %9, align 4
  br label %72

45:                                               ; preds = %32
  %46 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %47 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %48 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %51 = call i32 @udl_prime_create(%struct.drm_device* %46, i32 %49, %struct.sg_table* %50, %struct.udl_gem_object** %8)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %66

55:                                               ; preds = %45
  %56 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %57 = bitcast %struct.dma_buf_attachment* %56 to %struct.sg_table*
  %58 = load %struct.udl_gem_object*, %struct.udl_gem_object** %8, align 8
  %59 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %59, i32 0, i32 0
  store %struct.sg_table* %57, %struct.sg_table** %60, align 8
  %61 = load i32, i32* @UDL_BO_WC, align 4
  %62 = load %struct.udl_gem_object*, %struct.udl_gem_object** %8, align 8
  %63 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.udl_gem_object*, %struct.udl_gem_object** %8, align 8
  %65 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %64, i32 0, i32 0
  store %struct.drm_gem_object* %65, %struct.drm_gem_object** %3, align 8
  br label %85

66:                                               ; preds = %54
  %67 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %68 = bitcast %struct.dma_buf_attachment* %67 to %struct.sg_table*
  %69 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %70 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %71 = call i32 @dma_buf_unmap_attachment(%struct.sg_table* %68, %struct.sg_table* %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %42
  %73 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %74 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %75 = bitcast %struct.dma_buf_attachment* %74 to %struct.sg_table*
  %76 = call i32 @dma_buf_detach(%struct.dma_buf* %73, %struct.sg_table* %75)
  %77 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %78 = call i32 @dma_buf_put(%struct.dma_buf* %77)
  %79 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %80 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @put_device(i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = call %struct.drm_gem_object* @ERR_PTR(i32 %83)
  store %struct.drm_gem_object* %84, %struct.drm_gem_object** %3, align 8
  br label %85

85:                                               ; preds = %72, %55, %24
  %86 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  ret %struct.drm_gem_object* %86
}

declare dso_local i32 @get_device(i32) #1

declare dso_local %struct.sg_table* @dma_buf_attach(%struct.dma_buf*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sg_table*) #1

declare dso_local i32 @put_device(i32) #1

declare dso_local %struct.drm_gem_object* @ERR_CAST(%struct.sg_table*) #1

declare dso_local i32 @get_dma_buf(%struct.dma_buf*) #1

declare dso_local %struct.sg_table* @dma_buf_map_attachment(%struct.sg_table*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.sg_table*) #1

declare dso_local i32 @udl_prime_create(%struct.drm_device*, i32, %struct.sg_table*, %struct.udl_gem_object**) #1

declare dso_local i32 @dma_buf_unmap_attachment(%struct.sg_table*, %struct.sg_table*, i32) #1

declare dso_local i32 @dma_buf_detach(%struct.dma_buf*, %struct.sg_table*) #1

declare dso_local i32 @dma_buf_put(%struct.dma_buf*) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
