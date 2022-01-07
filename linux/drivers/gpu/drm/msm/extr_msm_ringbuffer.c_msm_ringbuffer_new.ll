; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_ringbuffer.c_msm_ringbuffer_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_ringbuffer.c_msm_ringbuffer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_ringbuffer = type { i32, i32, i32, i32, i32, i8*, i64, i64, i64, i64, i32, i32, %struct.msm_gpu* }
%struct.msm_gpu = type { i32, i32 }

@MSM_GPU_RINGBUFFER_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MSM_BO_WC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ring%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"gpu-ring-%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_ringbuffer* @msm_ringbuffer_new(%struct.msm_gpu* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.msm_ringbuffer*, align 8
  %6 = alloca %struct.msm_gpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.msm_ringbuffer*, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @MSM_GPU_RINGBUFFER_SZ, align 4
  %14 = call i32 @is_power_of_2(i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUILD_BUG_ON(i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.msm_ringbuffer* @kzalloc(i32 80, i32 %19)
  store %struct.msm_ringbuffer* %20, %struct.msm_ringbuffer** %10, align 8
  %21 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %22 = icmp ne %struct.msm_ringbuffer* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %12, align 4
  br label %110

26:                                               ; preds = %4
  %27 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %28 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %29 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %28, i32 0, i32 12
  store %struct.msm_gpu* %27, %struct.msm_gpu** %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %32 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %34 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MSM_GPU_RINGBUFFER_SZ, align 4
  %37 = load i32, i32* @MSM_BO_WC, align 4
  %38 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %39 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %42 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %41, i32 0, i32 10
  %43 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %44 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %43, i32 0, i32 11
  %45 = call i64 @msm_gem_kernel_new(i32 %35, i32 %36, i32 %37, i32 %40, i32* %42, i32* %44)
  %46 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %47 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %46, i32 0, i32 6
  store i64 %45, i64* %47, align 8
  %48 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %49 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @IS_ERR(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %26
  %54 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %55 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @PTR_ERR(i64 %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %59 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %58, i32 0, i32 6
  store i64 0, i64* %59, align 8
  br label %110

60:                                               ; preds = %26
  %61 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %62 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @msm_gem_object_set_name(i32 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %67 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @MSM_GPU_RINGBUFFER_SZ, align 4
  %70 = ashr i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %68, %71
  %73 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %74 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %73, i32 0, i32 9
  store i64 %72, i64* %74, align 8
  %75 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %76 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %79 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %78, i32 0, i32 8
  store i64 %77, i64* %79, align 8
  %80 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %81 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %84 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %83, i32 0, i32 7
  store i64 %82, i64* %84, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %87 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %90 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %92 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %91, i32 0, i32 3
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  %94 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %95 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %94, i32 0, i32 2
  %96 = call i32 @spin_lock_init(i32* %95)
  %97 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %98 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %99 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @snprintf(i8* %97, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %103 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %106 = call i32 @msm_fence_context_alloc(i32 %104, i8* %105)
  %107 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %108 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  store %struct.msm_ringbuffer* %109, %struct.msm_ringbuffer** %5, align 8
  br label %115

110:                                              ; preds = %53, %23
  %111 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %10, align 8
  %112 = call i32 @msm_ringbuffer_destroy(%struct.msm_ringbuffer* %111)
  %113 = load i32, i32* %12, align 4
  %114 = call %struct.msm_ringbuffer* @ERR_PTR(i32 %113)
  store %struct.msm_ringbuffer* %114, %struct.msm_ringbuffer** %5, align 8
  br label %115

115:                                              ; preds = %110, %60
  %116 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %5, align 8
  ret %struct.msm_ringbuffer* %116
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local %struct.msm_ringbuffer* @kzalloc(i32, i32) #1

declare dso_local i64 @msm_gem_kernel_new(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @msm_gem_object_set_name(i32, i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @msm_fence_context_alloc(i32, i8*) #1

declare dso_local i32 @msm_ringbuffer_destroy(%struct.msm_ringbuffer*) #1

declare dso_local %struct.msm_ringbuffer* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
