; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_private_object_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_private_object_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_gem_object = type { i64, i32, i32, i32*, i64, i32, i32*, %struct.drm_device* }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_private_object_init(%struct.drm_device* %0, %struct.drm_gem_object* %1, i64 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_gem_object* %1, %struct.drm_gem_object** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = and i64 %7, %10
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %17 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %16, i32 0, i32 7
  store %struct.drm_device* %15, %struct.drm_device** %17, align 8
  %18 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %19 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %18, i32 0, i32 6
  store i32* null, i32** %19, align 8
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %21 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %20, i32 0, i32 5
  %22 = call i32 @kref_init(i32* %21)
  %23 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %24 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %27 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %29 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %28, i32 0, i32 2
  %30 = call i32 @dma_resv_init(i32* %29)
  %31 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %32 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %3
  %36 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %37 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %36, i32 0, i32 2
  %38 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %39 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %38, i32 0, i32 3
  store i32* %37, i32** %39, align 8
  br label %40

40:                                               ; preds = %35, %3
  %41 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %42 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %41, i32 0, i32 1
  %43 = call i32 @drm_vma_node_reset(i32* %42)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @dma_resv_init(i32*) #1

declare dso_local i32 @drm_vma_node_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
