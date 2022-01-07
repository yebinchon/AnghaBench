; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_mqd_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_mqd_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64 }
%struct.vi_mqd = type { i64, i64, i64, i64 }

@CP_PQ_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@mmCP_HQD_VMID = common dso_local global i64 0, align 8
@mmCP_HQD_EOP_CONTROL = common dso_local global i64 0, align 8
@mmCP_MQD_BASE_ADDR = common dso_local global i64 0, align 8
@CHIP_TONGA = common dso_local global i64 0, align 8
@mmCP_HQD_EOP_RPTR = common dso_local global i64 0, align 8
@mmCP_HQD_EOP_WPTR = common dso_local global i64 0, align 8
@mmCP_HQD_EOP_WPTR_MEM = common dso_local global i64 0, align 8
@mmCP_HQD_EOP_EVENTS = common dso_local global i64 0, align 8
@mmCP_HQD_ERROR = common dso_local global i64 0, align 8
@mmCP_HQD_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfx_v8_0_mqd_commit(%struct.amdgpu_device* %0, %struct.vi_mqd* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.vi_mqd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.vi_mqd* %1, %struct.vi_mqd** %4, align 8
  %7 = load %struct.vi_mqd*, %struct.vi_mqd** %4, align 8
  %8 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %7, i32 0, i32 0
  store i64* %8, i64** %6, align 8
  %9 = load i32, i32* @CP_PQ_WPTR_POLL_CNTL, align 4
  %10 = load i32, i32* @EN, align 4
  %11 = call i32 @WREG32_FIELD(i32 %9, i32 %10, i32 0)
  %12 = load i64, i64* @mmCP_HQD_VMID, align 8
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %26, %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @mmCP_HQD_EOP_CONTROL, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @mmCP_MQD_BASE_ADDR, align 8
  %22 = sub nsw i64 %20, %21
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @WREG32(i64 %18, i64 %24)
  br label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %5, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %13

29:                                               ; preds = %13
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CHIP_TONGA, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load i64, i64* @mmCP_HQD_EOP_RPTR, align 8
  %37 = load %struct.vi_mqd*, %struct.vi_mqd** %4, align 8
  %38 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @WREG32(i64 %36, i64 %39)
  %41 = load i64, i64* @mmCP_HQD_EOP_WPTR, align 8
  %42 = load %struct.vi_mqd*, %struct.vi_mqd** %4, align 8
  %43 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @WREG32(i64 %41, i64 %44)
  %46 = load i64, i64* @mmCP_HQD_EOP_WPTR_MEM, align 8
  %47 = load %struct.vi_mqd*, %struct.vi_mqd** %4, align 8
  %48 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @WREG32(i64 %46, i64 %49)
  br label %51

51:                                               ; preds = %35, %29
  %52 = load i64, i64* @mmCP_HQD_EOP_EVENTS, align 8
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %66, %51
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @mmCP_HQD_ERROR, align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i64, i64* %5, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @mmCP_MQD_BASE_ADDR, align 8
  %62 = sub nsw i64 %60, %61
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @WREG32(i64 %58, i64 %64)
  br label %66

66:                                               ; preds = %57
  %67 = load i64, i64* %5, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %5, align 8
  br label %53

69:                                               ; preds = %53
  %70 = load i64, i64* @mmCP_MQD_BASE_ADDR, align 8
  store i64 %70, i64* %5, align 8
  br label %71

71:                                               ; preds = %84, %69
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* @mmCP_HQD_ACTIVE, align 8
  %74 = icmp sle i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i64, i64* %5, align 8
  %77 = load i64*, i64** %6, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @mmCP_MQD_BASE_ADDR, align 8
  %80 = sub nsw i64 %78, %79
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @WREG32(i64 %76, i64 %82)
  br label %84

84:                                               ; preds = %75
  %85 = load i64, i64* %5, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %5, align 8
  br label %71

87:                                               ; preds = %71
  ret i32 0
}

declare dso_local i32 @WREG32_FIELD(i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
