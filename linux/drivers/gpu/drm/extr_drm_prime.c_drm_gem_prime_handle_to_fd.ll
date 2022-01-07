; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_gem_prime_handle_to_fd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_gem_prime_handle_to_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_gem_object = type { %struct.dma_buf*, %struct.TYPE_4__* }
%struct.dma_buf = type { i32 }
%struct.TYPE_4__ = type { %struct.dma_buf* }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_prime_handle_to_fd(%struct.drm_device* %0, %struct.drm_file* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.drm_gem_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dma_buf*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_file* %1, %struct.drm_file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %15 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %18, i32 %19)
  store %struct.drm_gem_object* %20, %struct.drm_gem_object** %11, align 8
  %21 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %22 = icmp ne %struct.drm_gem_object* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %12, align 4
  br label %110

26:                                               ; preds = %5
  %27 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %28 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %27, i32 0, i32 0
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.dma_buf* @drm_prime_lookup_buf_by_handle(%struct.TYPE_5__* %28, i32 %29)
  store %struct.dma_buf* %30, %struct.dma_buf** %13, align 8
  %31 = load %struct.dma_buf*, %struct.dma_buf** %13, align 8
  %32 = icmp ne %struct.dma_buf* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.dma_buf*, %struct.dma_buf** %13, align 8
  %35 = call i32 @get_dma_buf(%struct.dma_buf* %34)
  br label %93

36:                                               ; preds = %26
  %37 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %41 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %46 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.dma_buf*, %struct.dma_buf** %48, align 8
  store %struct.dma_buf* %49, %struct.dma_buf** %13, align 8
  %50 = load %struct.dma_buf*, %struct.dma_buf** %13, align 8
  %51 = call i32 @get_dma_buf(%struct.dma_buf* %50)
  br label %80

52:                                               ; preds = %36
  %53 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %54 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %53, i32 0, i32 0
  %55 = load %struct.dma_buf*, %struct.dma_buf** %54, align 8
  %56 = icmp ne %struct.dma_buf* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %59 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %58, i32 0, i32 0
  %60 = load %struct.dma_buf*, %struct.dma_buf** %59, align 8
  %61 = call i32 @get_dma_buf(%struct.dma_buf* %60)
  %62 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %63 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %62, i32 0, i32 0
  %64 = load %struct.dma_buf*, %struct.dma_buf** %63, align 8
  store %struct.dma_buf* %64, %struct.dma_buf** %13, align 8
  br label %80

65:                                               ; preds = %52
  %66 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %67 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call %struct.dma_buf* @export_and_register_object(%struct.drm_device* %66, %struct.drm_gem_object* %67, i32 %68)
  store %struct.dma_buf* %69, %struct.dma_buf** %13, align 8
  %70 = load %struct.dma_buf*, %struct.dma_buf** %13, align 8
  %71 = call i64 @IS_ERR(%struct.dma_buf* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load %struct.dma_buf*, %struct.dma_buf** %13, align 8
  %75 = call i32 @PTR_ERR(%struct.dma_buf* %74)
  store i32 %75, i32* %12, align 4
  %76 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %77 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  br label %107

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %57, %44
  %81 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %82 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %81, i32 0, i32 0
  %83 = load %struct.dma_buf*, %struct.dma_buf** %13, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @drm_prime_add_buf_handle(%struct.TYPE_5__* %82, %struct.dma_buf* %83, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %87 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %104

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92, %33
  %94 = load %struct.dma_buf*, %struct.dma_buf** %13, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @dma_buf_fd(%struct.dma_buf* %94, i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %104

100:                                              ; preds = %93
  %101 = load i32, i32* %12, align 4
  %102 = load i32*, i32** %10, align 8
  store i32 %101, i32* %102, align 4
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %100
  br label %107

104:                                              ; preds = %99, %91
  %105 = load %struct.dma_buf*, %struct.dma_buf** %13, align 8
  %106 = call i32 @dma_buf_put(%struct.dma_buf* %105)
  br label %107

107:                                              ; preds = %104, %103, %73
  %108 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %109 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %108)
  br label %110

110:                                              ; preds = %107, %23
  %111 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %112 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %12, align 4
  ret i32 %115
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.dma_buf* @drm_prime_lookup_buf_by_handle(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @get_dma_buf(%struct.dma_buf*) #1

declare dso_local %struct.dma_buf* @export_and_register_object(%struct.drm_device*, %struct.drm_gem_object*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_buf*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_buf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_prime_add_buf_handle(%struct.TYPE_5__*, %struct.dma_buf*, i32) #1

declare dso_local i32 @dma_buf_fd(%struct.dma_buf*, i32) #1

declare dso_local i32 @dma_buf_put(%struct.dma_buf*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
