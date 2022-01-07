; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_get_xclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_get_xclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AMD_IS_APU = common dso_local global i32 0, align 4
@ixCG_CLKPIN_CNTL_2 = common dso_local global i32 0, align 4
@CG_CLKPIN_CNTL_2 = common dso_local global i32 0, align 4
@MUX_TCLK_TO_XCLK = common dso_local global i32 0, align 4
@ixCG_CLKPIN_CNTL = common dso_local global i32 0, align 4
@CG_CLKPIN_CNTL = common dso_local global i32 0, align 4
@XTALIN_DIVIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vi_get_xclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vi_get_xclk(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AMD_IS_APU, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %41

19:                                               ; preds = %1
  %20 = load i32, i32* @ixCG_CLKPIN_CNTL_2, align 4
  %21 = call i32 @RREG32_SMC(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @CG_CLKPIN_CNTL_2, align 4
  %24 = load i32, i32* @MUX_TCLK_TO_XCLK, align 4
  %25 = call i64 @REG_GET_FIELD(i32 %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1000, i32* %2, align 4
  br label %41

28:                                               ; preds = %19
  %29 = load i32, i32* @ixCG_CLKPIN_CNTL, align 4
  %30 = call i32 @RREG32_SMC(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @CG_CLKPIN_CNTL, align 4
  %33 = load i32, i32* @XTALIN_DIVIDE, align 4
  %34 = call i64 @REG_GET_FIELD(i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = sdiv i32 %37, 4
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %36, %27, %17
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i64 @REG_GET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
