; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_job.c_amdgpu_job_alloc_with_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_job.c_amdgpu_job_alloc_with_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_job = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_job_alloc_with_ib(%struct.amdgpu_device* %0, i32 %1, %struct.amdgpu_job** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_job**, align 8
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.amdgpu_job** %2, %struct.amdgpu_job*** %7, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %10 = load %struct.amdgpu_job**, %struct.amdgpu_job*** %7, align 8
  %11 = call i32 @amdgpu_job_alloc(%struct.amdgpu_device* %9, i32 1, %struct.amdgpu_job** %10, i32* null)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %33

16:                                               ; preds = %3
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.amdgpu_job**, %struct.amdgpu_job*** %7, align 8
  %20 = load %struct.amdgpu_job*, %struct.amdgpu_job** %19, align 8
  %21 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = call i32 @amdgpu_ib_get(%struct.amdgpu_device* %17, i32* null, i32 %18, i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load %struct.amdgpu_job**, %struct.amdgpu_job*** %7, align 8
  %29 = load %struct.amdgpu_job*, %struct.amdgpu_job** %28, align 8
  %30 = call i32 @kfree(%struct.amdgpu_job* %29)
  br label %31

31:                                               ; preds = %27, %16
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @amdgpu_job_alloc(%struct.amdgpu_device*, i32, %struct.amdgpu_job**, i32*) #1

declare dso_local i32 @amdgpu_ib_get(%struct.amdgpu_device*, i32*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.amdgpu_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
