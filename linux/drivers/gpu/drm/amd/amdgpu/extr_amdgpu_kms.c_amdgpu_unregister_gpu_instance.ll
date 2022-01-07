; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_kms.c_amdgpu_unregister_gpu_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_kms.c_amdgpu_unregister_gpu_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.amdgpu_gpu_instance* }
%struct.amdgpu_gpu_instance = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@mgpu_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AMD_IS_APU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_unregister_gpu_instance(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_gpu_instance*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mgpu_info, i32 0, i32 1))
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %48, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mgpu_info, i32 0, i32 0), align 8
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load %struct.amdgpu_gpu_instance*, %struct.amdgpu_gpu_instance** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mgpu_info, i32 0, i32 4), align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.amdgpu_gpu_instance, %struct.amdgpu_gpu_instance* %11, i64 %13
  store %struct.amdgpu_gpu_instance* %14, %struct.amdgpu_gpu_instance** %3, align 8
  %15 = load %struct.amdgpu_gpu_instance*, %struct.amdgpu_gpu_instance** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_gpu_instance, %struct.amdgpu_gpu_instance* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %19 = icmp eq %struct.amdgpu_device* %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %10
  %21 = load %struct.amdgpu_gpu_instance*, %struct.amdgpu_gpu_instance** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mgpu_info, i32 0, i32 4), align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.amdgpu_gpu_instance, %struct.amdgpu_gpu_instance* %21, i64 %23
  %25 = load %struct.amdgpu_gpu_instance*, %struct.amdgpu_gpu_instance** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mgpu_info, i32 0, i32 4), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mgpu_info, i32 0, i32 0), align 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.amdgpu_gpu_instance, %struct.amdgpu_gpu_instance* %25, i64 %28
  %30 = bitcast %struct.amdgpu_gpu_instance* %24 to i8*
  %31 = bitcast %struct.amdgpu_gpu_instance* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mgpu_info, i32 0, i32 0), align 8
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mgpu_info, i32 0, i32 0), align 8
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AMD_IS_APU, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %20
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mgpu_info, i32 0, i32 3), align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mgpu_info, i32 0, i32 3), align 4
  br label %46

43:                                               ; preds = %20
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mgpu_info, i32 0, i32 2), align 8
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mgpu_info, i32 0, i32 2), align 8
  br label %46

46:                                               ; preds = %43, %40
  br label %51

47:                                               ; preds = %10
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %6

51:                                               ; preds = %46, %6
  %52 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mgpu_info, i32 0, i32 1))
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
