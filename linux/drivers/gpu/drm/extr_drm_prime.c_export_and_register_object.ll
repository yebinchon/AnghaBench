; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_export_and_register_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_export_and_register_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32 }
%struct.drm_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dma_buf* (%struct.drm_gem_object*, i32)* }
%struct.drm_gem_object = type { i64, %struct.dma_buf*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_buf* (%struct.drm_device*, %struct.drm_gem_object*, i32)* @export_and_register_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_buf* @export_and_register_object(%struct.drm_device* %0, %struct.drm_gem_object* %1, i32 %2) #0 {
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_buf*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_gem_object* %1, %struct.drm_gem_object** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %10 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.dma_buf* @ERR_PTR(i32 %15)
  store %struct.dma_buf* %16, %struct.dma_buf** %8, align 8
  %17 = load %struct.dma_buf*, %struct.dma_buf** %8, align 8
  store %struct.dma_buf* %17, %struct.dma_buf** %4, align 8
  br label %77

18:                                               ; preds = %3
  %19 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %20 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %25 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to %struct.dma_buf* (%struct.drm_gem_object*, i32)**
  %29 = load %struct.dma_buf* (%struct.drm_gem_object*, i32)*, %struct.dma_buf* (%struct.drm_gem_object*, i32)** %28, align 8
  %30 = icmp ne %struct.dma_buf* (%struct.drm_gem_object*, i32)* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %33 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to %struct.dma_buf* (%struct.drm_gem_object*, i32)**
  %37 = load %struct.dma_buf* (%struct.drm_gem_object*, i32)*, %struct.dma_buf* (%struct.drm_gem_object*, i32)** %36, align 8
  %38 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.dma_buf* %37(%struct.drm_gem_object* %38, i32 %39)
  store %struct.dma_buf* %40, %struct.dma_buf** %8, align 8
  br label %62

41:                                               ; preds = %23, %18
  %42 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.dma_buf* (%struct.drm_gem_object*, i32)*, %struct.dma_buf* (%struct.drm_gem_object*, i32)** %45, align 8
  %47 = icmp ne %struct.dma_buf* (%struct.drm_gem_object*, i32)* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %struct.dma_buf* (%struct.drm_gem_object*, i32)*, %struct.dma_buf* (%struct.drm_gem_object*, i32)** %52, align 8
  %54 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call %struct.dma_buf* %53(%struct.drm_gem_object* %54, i32 %55)
  store %struct.dma_buf* %56, %struct.dma_buf** %8, align 8
  br label %61

57:                                               ; preds = %41
  %58 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call %struct.dma_buf* @drm_gem_prime_export(%struct.drm_gem_object* %58, i32 %59)
  store %struct.dma_buf* %60, %struct.dma_buf** %8, align 8
  br label %61

61:                                               ; preds = %57, %48
  br label %62

62:                                               ; preds = %61, %31
  %63 = load %struct.dma_buf*, %struct.dma_buf** %8, align 8
  %64 = call i64 @IS_ERR(%struct.dma_buf* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load %struct.dma_buf*, %struct.dma_buf** %8, align 8
  store %struct.dma_buf* %67, %struct.dma_buf** %4, align 8
  br label %77

68:                                               ; preds = %62
  %69 = load %struct.dma_buf*, %struct.dma_buf** %8, align 8
  %70 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %71 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %70, i32 0, i32 1
  store %struct.dma_buf* %69, %struct.dma_buf** %71, align 8
  %72 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %73 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %72, i32 0, i32 1
  %74 = load %struct.dma_buf*, %struct.dma_buf** %73, align 8
  %75 = call i32 @get_dma_buf(%struct.dma_buf* %74)
  %76 = load %struct.dma_buf*, %struct.dma_buf** %8, align 8
  store %struct.dma_buf* %76, %struct.dma_buf** %4, align 8
  br label %77

77:                                               ; preds = %68, %66, %13
  %78 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  ret %struct.dma_buf* %78
}

declare dso_local %struct.dma_buf* @ERR_PTR(i32) #1

declare dso_local %struct.dma_buf* @drm_gem_prime_export(%struct.drm_gem_object*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_buf*) #1

declare dso_local i32 @get_dma_buf(%struct.dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
