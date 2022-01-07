; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_kms.c_virtio_gpu_get_capsets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_kms.c_virtio_gpu_get_capsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_gpu_device = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to allocate cap sets\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"timed out waiting for cap set %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"cap set %d: id %d, max-version %d, max-size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_gpu_device*, i32)* @virtio_gpu_get_capsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_gpu_get_capsets(%struct.virtio_gpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.virtio_gpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.virtio_gpu_device* %0, %struct.virtio_gpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.TYPE_3__* @kcalloc(i32 %7, i32 4, i32 %8)
  %10 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %10, i32 0, i32 1
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %11, align 8
  %12 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %88

18:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %81, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %84

23:                                               ; preds = %19
  %24 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @virtio_gpu_cmd_get_capset_info(%struct.virtio_gpu_device* %24, i32 %25)
  %27 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %28 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %31 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* @HZ, align 4
  %41 = mul nsw i32 5, %40
  %42 = call i32 @wait_event_timeout(i32 %29, i32 %39, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %23
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %49 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = call i32 @kfree(%struct.TYPE_3__* %50)
  %52 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %53 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %52, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %53, align 8
  br label %88

54:                                               ; preds = %23
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %57 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %65 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %73 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %55, i64 %63, i32 %71, i32 %79)
  br label %81

81:                                               ; preds = %54
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %19

84:                                               ; preds = %19
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %3, align 8
  %87 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %45, %16
  ret void
}

declare dso_local %struct.TYPE_3__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @virtio_gpu_cmd_get_capset_info(%struct.virtio_gpu_device*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
