; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_gem_prime_fd_to_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_gem_prime_fd_to_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_gem_object* (%struct.drm_device*, %struct.drm_gem_object*)* }
%struct.drm_gem_object = type { %struct.drm_gem_object* }
%struct.drm_file = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dma_buf = type { %struct.dma_buf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_prime_fd_to_handle(%struct.drm_device* %0, %struct.drm_file* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dma_buf*, align 8
  %11 = alloca %struct.drm_gem_object*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_file* %1, %struct.drm_file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.drm_gem_object* @dma_buf_get(i32 %13)
  %15 = bitcast %struct.drm_gem_object* %14 to %struct.dma_buf*
  store %struct.dma_buf* %15, %struct.dma_buf** %10, align 8
  %16 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %17 = bitcast %struct.dma_buf* %16 to %struct.drm_gem_object*
  %18 = call i64 @IS_ERR(%struct.drm_gem_object* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %22 = bitcast %struct.dma_buf* %21 to %struct.drm_gem_object*
  %23 = call i32 @PTR_ERR(%struct.drm_gem_object* %22)
  store i32 %23, i32* %5, align 4
  br label %143

24:                                               ; preds = %4
  %25 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %26 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %30 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %29, i32 0, i32 0
  %31 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %32 = bitcast %struct.dma_buf* %31 to %struct.drm_gem_object*
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @drm_prime_lookup_buf_handle(%struct.TYPE_5__* %30, %struct.drm_gem_object* %32, i32* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %134

38:                                               ; preds = %24
  %39 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.drm_gem_object* (%struct.drm_device*, %struct.drm_gem_object*)*, %struct.drm_gem_object* (%struct.drm_device*, %struct.drm_gem_object*)** %45, align 8
  %47 = icmp ne %struct.drm_gem_object* (%struct.drm_device*, %struct.drm_gem_object*)* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %38
  %49 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.drm_gem_object* (%struct.drm_device*, %struct.drm_gem_object*)*, %struct.drm_gem_object* (%struct.drm_device*, %struct.drm_gem_object*)** %52, align 8
  %54 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %55 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %56 = bitcast %struct.dma_buf* %55 to %struct.drm_gem_object*
  %57 = call %struct.drm_gem_object* %53(%struct.drm_device* %54, %struct.drm_gem_object* %56)
  store %struct.drm_gem_object* %57, %struct.drm_gem_object** %11, align 8
  br label %63

58:                                               ; preds = %38
  %59 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %60 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %61 = bitcast %struct.dma_buf* %60 to %struct.drm_gem_object*
  %62 = call %struct.drm_gem_object* @drm_gem_prime_import(%struct.drm_device* %59, %struct.drm_gem_object* %61)
  store %struct.drm_gem_object* %62, %struct.drm_gem_object** %11, align 8
  br label %63

63:                                               ; preds = %58, %48
  %64 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %65 = call i64 @IS_ERR(%struct.drm_gem_object* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %69 = call i32 @PTR_ERR(%struct.drm_gem_object* %68)
  store i32 %69, i32* %12, align 4
  br label %130

70:                                               ; preds = %63
  %71 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %72 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %71, i32 0, i32 0
  %73 = load %struct.drm_gem_object*, %struct.drm_gem_object** %72, align 8
  %74 = icmp ne %struct.drm_gem_object* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %77 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %76, i32 0, i32 0
  %78 = load %struct.drm_gem_object*, %struct.drm_gem_object** %77, align 8
  %79 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %80 = bitcast %struct.dma_buf* %79 to %struct.drm_gem_object*
  %81 = icmp ne %struct.drm_gem_object* %78, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @WARN_ON(i32 %82)
  br label %92

84:                                               ; preds = %70
  %85 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %86 = bitcast %struct.dma_buf* %85 to %struct.drm_gem_object*
  %87 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %88 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %87, i32 0, i32 0
  store %struct.drm_gem_object* %86, %struct.drm_gem_object** %88, align 8
  %89 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %90 = bitcast %struct.dma_buf* %89 to %struct.drm_gem_object*
  %91 = call i32 @get_dma_buf(%struct.drm_gem_object* %90)
  br label %92

92:                                               ; preds = %84, %75
  %93 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %94 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @drm_gem_handle_create_tail(%struct.drm_file* %93, %struct.drm_gem_object* %94, i32* %95)
  store i32 %96, i32* %12, align 4
  %97 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %98 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %97)
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %134

102:                                              ; preds = %92
  %103 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %104 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %103, i32 0, i32 0
  %105 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %106 = bitcast %struct.dma_buf* %105 to %struct.drm_gem_object*
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @drm_prime_add_buf_handle(%struct.TYPE_5__* %104, %struct.drm_gem_object* %106, i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %111 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %102
  br label %121

117:                                              ; preds = %102
  %118 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %119 = bitcast %struct.dma_buf* %118 to %struct.drm_gem_object*
  %120 = call i32 @dma_buf_put(%struct.drm_gem_object* %119)
  store i32 0, i32* %5, align 4
  br label %143

121:                                              ; preds = %116
  %122 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @drm_gem_handle_delete(%struct.drm_file* %122, i32 %124)
  %126 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %127 = bitcast %struct.dma_buf* %126 to %struct.drm_gem_object*
  %128 = call i32 @dma_buf_put(%struct.drm_gem_object* %127)
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %5, align 4
  br label %143

130:                                              ; preds = %67
  %131 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %132 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  br label %134

134:                                              ; preds = %130, %101, %37
  %135 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %136 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %140 = bitcast %struct.dma_buf* %139 to %struct.drm_gem_object*
  %141 = call i32 @dma_buf_put(%struct.drm_gem_object* %140)
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %134, %121, %117, %20
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local %struct.drm_gem_object* @dma_buf_get(i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_prime_lookup_buf_handle(%struct.TYPE_5__*, %struct.drm_gem_object*, i32*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_prime_import(%struct.drm_device*, %struct.drm_gem_object*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @get_dma_buf(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_handle_create_tail(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_prime_add_buf_handle(%struct.TYPE_5__*, %struct.drm_gem_object*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_buf_put(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_handle_delete(%struct.drm_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
