; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_mqd_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_mqd_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmCP_HQD_ACTIVE = common dso_local global i32 0, align 4
@mmCP_HQD_DEQUEUE_REQUEST = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_RPTR = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_WPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v7_0_mqd_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v7_0_mqd_deactivate(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %5 = load i32, i32* @mmCP_HQD_ACTIVE, align 4
  %6 = call i32 @RREG32(i32 %5)
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  %10 = load i32, i32* @mmCP_HQD_DEQUEUE_REQUEST, align 4
  %11 = call i32 @WREG32(i32 %10, i32 1)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %26, %9
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load i32, i32* @mmCP_HQD_ACTIVE, align 4
  %20 = call i32 @RREG32(i32 %19)
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %29

24:                                               ; preds = %18
  %25 = call i32 @udelay(i32 1)
  br label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %12

29:                                               ; preds = %23, %12
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %46

38:                                               ; preds = %29
  %39 = load i32, i32* @mmCP_HQD_DEQUEUE_REQUEST, align 4
  %40 = call i32 @WREG32(i32 %39, i32 0)
  %41 = load i32, i32* @mmCP_HQD_PQ_RPTR, align 4
  %42 = call i32 @WREG32(i32 %41, i32 0)
  %43 = load i32, i32* @mmCP_HQD_PQ_WPTR, align 4
  %44 = call i32 @WREG32(i32 %43, i32 0)
  br label %45

45:                                               ; preds = %38, %1
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
