; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_mqd_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_mqd_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.cik_mqd = type { i64 }

@mmCP_PQ_WPTR_POLL_CNTL = common dso_local global i64 0, align 8
@CP_PQ_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@mmCP_HQD_VMID = common dso_local global i64 0, align 8
@mmCP_MQD_CONTROL = common dso_local global i64 0, align 8
@mmCP_MQD_BASE_ADDR = common dso_local global i64 0, align 8
@mmCP_HQD_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfx_v7_0_mqd_commit(%struct.amdgpu_device* %0, %struct.cik_mqd* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.cik_mqd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.cik_mqd* %1, %struct.cik_mqd** %4, align 8
  %8 = load %struct.cik_mqd*, %struct.cik_mqd** %4, align 8
  %9 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %8, i32 0, i32 0
  store i64* %9, i64** %7, align 8
  %10 = load i64, i64* @mmCP_PQ_WPTR_POLL_CNTL, align 8
  %11 = call i64 @RREG32(i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i32, i32* @CP_PQ_WPTR_POLL_CNTL, align 4
  %14 = load i32, i32* @EN, align 4
  %15 = call i64 @REG_SET_FIELD(i64 %12, i32 %13, i32 %14, i32 0)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* @mmCP_PQ_WPTR_POLL_CNTL, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @WREG32(i64 %16, i64 %17)
  %19 = load i64, i64* @mmCP_HQD_VMID, align 8
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %33, %2
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @mmCP_MQD_CONTROL, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @mmCP_MQD_BASE_ADDR, align 8
  %29 = sub nsw i64 %27, %28
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @WREG32(i64 %25, i64 %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %6, align 8
  br label %20

36:                                               ; preds = %20
  %37 = load i64, i64* @mmCP_MQD_BASE_ADDR, align 8
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %51, %36
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @mmCP_HQD_ACTIVE, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i64, i64* %6, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @mmCP_MQD_BASE_ADDR, align 8
  %47 = sub nsw i64 %45, %46
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @WREG32(i64 %43, i64 %49)
  br label %51

51:                                               ; preds = %42
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %38

54:                                               ; preds = %38
  ret i32 0
}

declare dso_local i64 @RREG32(i64) #1

declare dso_local i64 @REG_SET_FIELD(i64, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
