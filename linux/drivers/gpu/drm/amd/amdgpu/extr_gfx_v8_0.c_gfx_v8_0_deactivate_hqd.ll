; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_deactivate_hqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_deactivate_hqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmCP_HQD_ACTIVE = common dso_local global i32 0, align 4
@CP_HQD_ACTIVE__ACTIVE_MASK = common dso_local global i32 0, align 4
@CP_HQD_DEQUEUE_REQUEST = common dso_local global i32 0, align 4
@DEQUEUE_REQ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@mmCP_HQD_DEQUEUE_REQUEST = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_RPTR = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_WPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @gfx_v8_0_deactivate_hqd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_deactivate_hqd(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @mmCP_HQD_ACTIVE, align 4
  %8 = call i32 @RREG32(i32 %7)
  %9 = load i32, i32* @CP_HQD_ACTIVE__ACTIVE_MASK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = load i32, i32* @CP_HQD_DEQUEUE_REQUEST, align 4
  %14 = load i32, i32* @DEQUEUE_REQ, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @WREG32_FIELD(i32 %13, i32 %14, i32 %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %32, %12
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load i32, i32* @mmCP_HQD_ACTIVE, align 4
  %25 = call i32 @RREG32(i32 %24)
  %26 = load i32, i32* @CP_HQD_ACTIVE__ACTIVE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %35

30:                                               ; preds = %23
  %31 = call i32 @udelay(i32 1)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %17

35:                                               ; preds = %29, %17
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %35
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i32, i32* @mmCP_HQD_DEQUEUE_REQUEST, align 4
  %47 = call i32 @WREG32(i32 %46, i32 0)
  %48 = load i32, i32* @mmCP_HQD_PQ_RPTR, align 4
  %49 = call i32 @WREG32(i32 %48, i32 0)
  %50 = load i32, i32* @mmCP_HQD_PQ_WPTR, align 4
  %51 = call i32 @WREG32(i32 %50, i32 0)
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32_FIELD(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
