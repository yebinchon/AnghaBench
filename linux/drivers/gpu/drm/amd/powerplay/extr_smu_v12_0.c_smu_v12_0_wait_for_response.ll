; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v12_0.c_smu_v12_0_wait_for_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v12_0.c_smu_v12_0_wait_for_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i64 }

@MP1 = common dso_local global i32 0, align 4
@mmMP1_SMN_C2PMSG_90 = common dso_local global i32 0, align 4
@MP1_C2PMSG_90__CONTENT_MASK = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v12_0_wait_for_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v12_0_wait_for_response(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %7 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %8 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %7, i32 0, i32 0
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %4, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %28, %1
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = load i32, i32* @MP1, align 4
  %18 = load i32, i32* @mmMP1_SMN_C2PMSG_90, align 4
  %19 = call i32 @RREG32_SOC15(i32 %17, i32 0, i32 %18)
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @MP1_C2PMSG_90__CONTENT_MASK, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %31

26:                                               ; preds = %16
  %27 = call i32 @udelay(i32 1)
  br label %28

28:                                               ; preds = %26
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %10

31:                                               ; preds = %25, %10
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @ETIME, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %51

40:                                               ; preds = %31
  %41 = load i32, i32* @MP1, align 4
  %42 = load i32, i32* @mmMP1_SMN_C2PMSG_90, align 4
  %43 = call i32 @RREG32_SOC15(i32 %41, i32 0, i32 %42)
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  br label %49

49:                                               ; preds = %46, %45
  %50 = phi i32 [ 0, %45 ], [ %48, %46 ]
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %37
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
