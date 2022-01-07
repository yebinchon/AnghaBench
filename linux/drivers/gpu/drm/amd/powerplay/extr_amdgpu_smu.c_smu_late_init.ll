; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_late_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_late_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.smu_context }
%struct.smu_context = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@AMD_PP_TASK_COMPLETE_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @smu_late_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_late_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.smu_context*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %4, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  store %struct.smu_context* %9, %struct.smu_context** %5, align 8
  %10 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %11 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %17 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %22 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AMD_PP_TASK_COMPLETE_INIT, align 4
  %26 = call i32 @smu_handle_task(%struct.smu_context* %20, i32 %24, i32 %25)
  %27 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %28 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %15, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smu_handle_task(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
