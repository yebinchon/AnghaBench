; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_gem_dmabuf_vmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_gem_dmabuf_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @drm_gem_dmabuf_vmap(%struct.dma_buf* %0) #0 {
  %2 = alloca %struct.dma_buf*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca i8*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %2, align 8
  %5 = load %struct.dma_buf*, %struct.dma_buf** %2, align 8
  %6 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %5, i32 0, i32 0
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  store %struct.drm_gem_object* %7, %struct.drm_gem_object** %3, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %9 = call i8* @drm_gem_vmap(%struct.drm_gem_object* %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @IS_ERR(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* null, i8** %4, align 8
  br label %14

14:                                               ; preds = %13, %1
  %15 = load i8*, i8** %4, align 8
  ret i8* %15
}

declare dso_local i8* @drm_gem_vmap(%struct.drm_gem_object*) #1

declare dso_local i64 @IS_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
