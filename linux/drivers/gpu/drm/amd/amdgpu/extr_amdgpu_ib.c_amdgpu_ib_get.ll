; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ib.c_amdgpu_ib_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ib.c_amdgpu_ib_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32 }
%struct.amdgpu_vm = type { i32 }
%struct.amdgpu_ib = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to get a new IB (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ib_get(%struct.amdgpu_device* %0, %struct.amdgpu_vm* %1, i32 %2, %struct.amdgpu_ib* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_vm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_ib*, align 8
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_vm* %1, %struct.amdgpu_vm** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.amdgpu_ib* %3, %struct.amdgpu_ib** %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 1
  %16 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %9, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %16, i32 0, i32 0
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @amdgpu_sa_bo_new(i32* %15, i32* %17, i32 %18, i32 256)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %47

29:                                               ; preds = %13
  %30 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %9, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @amdgpu_sa_bo_cpu_addr(i32 %32)
  %34 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %9, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %37 = icmp ne %struct.amdgpu_vm* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %29
  %39 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %9, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @amdgpu_sa_bo_gpu_addr(i32 %41)
  %43 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %9, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %38, %29
  br label %46

46:                                               ; preds = %45, %4
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @amdgpu_sa_bo_new(i32*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @amdgpu_sa_bo_cpu_addr(i32) #1

declare dso_local i32 @amdgpu_sa_bo_gpu_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
