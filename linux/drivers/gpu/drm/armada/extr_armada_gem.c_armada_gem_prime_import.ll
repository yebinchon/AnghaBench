; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_prime_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_prime_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.dma_buf_attachment*, %struct.drm_device* }
%struct.dma_buf_attachment = type { i32 }
%struct.drm_device = type { i32 }
%struct.dma_buf = type { i32, %struct.drm_gem_object*, i32* }
%struct.armada_gem_object = type { %struct.drm_gem_object }

@armada_gem_prime_dmabuf_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @armada_gem_prime_import(%struct.drm_device* %0, %struct.dma_buf* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.dma_buf*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.armada_gem_object*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.dma_buf* %1, %struct.dma_buf** %5, align 8
  %9 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %10 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, @armada_gem_prime_dmabuf_ops
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %15 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %14, i32 0, i32 1
  %16 = load %struct.drm_gem_object*, %struct.drm_gem_object** %15, align 8
  store %struct.drm_gem_object* %16, %struct.drm_gem_object** %8, align 8
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %18 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %17, i32 0, i32 1
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = icmp eq %struct.drm_device* %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %24 = call i32 @drm_gem_object_get(%struct.drm_gem_object* %23)
  %25 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  store %struct.drm_gem_object* %25, %struct.drm_gem_object** %3, align 8
  br label %63

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.dma_buf_attachment* @dma_buf_attach(%struct.dma_buf* %28, i32 %31)
  store %struct.dma_buf_attachment* %32, %struct.dma_buf_attachment** %6, align 8
  %33 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %34 = call i64 @IS_ERR(%struct.dma_buf_attachment* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %38 = call %struct.drm_gem_object* @ERR_CAST(%struct.dma_buf_attachment* %37)
  store %struct.drm_gem_object* %38, %struct.drm_gem_object** %3, align 8
  br label %63

39:                                               ; preds = %27
  %40 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %41 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %42 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.armada_gem_object* @armada_gem_alloc_private_object(%struct.drm_device* %40, i32 %43)
  store %struct.armada_gem_object* %44, %struct.armada_gem_object** %7, align 8
  %45 = load %struct.armada_gem_object*, %struct.armada_gem_object** %7, align 8
  %46 = icmp ne %struct.armada_gem_object* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %39
  %48 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %49 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %50 = call i32 @dma_buf_detach(%struct.dma_buf* %48, %struct.dma_buf_attachment* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.drm_gem_object* @ERR_PTR(i32 %52)
  store %struct.drm_gem_object* %53, %struct.drm_gem_object** %3, align 8
  br label %63

54:                                               ; preds = %39
  %55 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %56 = load %struct.armada_gem_object*, %struct.armada_gem_object** %7, align 8
  %57 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %57, i32 0, i32 0
  store %struct.dma_buf_attachment* %55, %struct.dma_buf_attachment** %58, align 8
  %59 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %60 = call i32 @get_dma_buf(%struct.dma_buf* %59)
  %61 = load %struct.armada_gem_object*, %struct.armada_gem_object** %7, align 8
  %62 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %61, i32 0, i32 0
  store %struct.drm_gem_object* %62, %struct.drm_gem_object** %3, align 8
  br label %63

63:                                               ; preds = %54, %47, %36, %22
  %64 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  ret %struct.drm_gem_object* %64
}

declare dso_local i32 @drm_gem_object_get(%struct.drm_gem_object*) #1

declare dso_local %struct.dma_buf_attachment* @dma_buf_attach(%struct.dma_buf*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_buf_attachment*) #1

declare dso_local %struct.drm_gem_object* @ERR_CAST(%struct.dma_buf_attachment*) #1

declare dso_local %struct.armada_gem_object* @armada_gem_alloc_private_object(%struct.drm_device*, i32) #1

declare dso_local i32 @dma_buf_detach(%struct.dma_buf*, %struct.dma_buf_attachment*) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

declare dso_local i32 @get_dma_buf(%struct.dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
