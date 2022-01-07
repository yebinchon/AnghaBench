; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nbio_v7_4.c_nbio_v7_4_vcn_doorbell_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nbio_v7_4.c_nbio_v7_4_vcn_doorbell_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@NBIO = common dso_local global i32 0, align 4
@mmBIF_MMSCH1_DOORBELL_RANGE = common dso_local global i32 0, align 4
@mmBIF_MMSCH0_DOORBELL_RANGE = common dso_local global i32 0, align 4
@BIF_MMSCH0_DOORBELL_RANGE = common dso_local global i32 0, align 4
@OFFSET = common dso_local global i32 0, align 4
@SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32, i32)* @nbio_v7_4_vcn_doorbell_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbio_v7_4_vcn_doorbell_range(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32, i32* @NBIO, align 4
  %15 = load i32, i32* @mmBIF_MMSCH1_DOORBELL_RANGE, align 4
  %16 = call i32 @SOC15_REG_OFFSET(i32 %14, i32 0, i32 %15)
  store i32 %16, i32* %9, align 4
  br label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @NBIO, align 4
  %19 = load i32, i32* @mmBIF_MMSCH0_DOORBELL_RANGE, align 4
  %20 = call i32 @SOC15_REG_OFFSET(i32 %18, i32 0, i32 %19)
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @RREG32(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @BIF_MMSCH0_DOORBELL_RANGE, align 4
  %29 = load i32, i32* @OFFSET, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @REG_SET_FIELD(i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @BIF_MMSCH0_DOORBELL_RANGE, align 4
  %34 = load i32, i32* @SIZE, align 4
  %35 = call i32 @REG_SET_FIELD(i32 %32, i32 %33, i32 %34, i32 8)
  store i32 %35, i32* %10, align 4
  br label %41

36:                                               ; preds = %21
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @BIF_MMSCH0_DOORBELL_RANGE, align 4
  %39 = load i32, i32* @SIZE, align 4
  %40 = call i32 @REG_SET_FIELD(i32 %37, i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %36, %26
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @WREG32(i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
