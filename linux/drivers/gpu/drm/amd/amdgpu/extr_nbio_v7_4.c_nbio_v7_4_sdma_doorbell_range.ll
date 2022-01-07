; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nbio_v7_4.c_nbio_v7_4_sdma_doorbell_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nbio_v7_4.c_nbio_v7_4_sdma_doorbell_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@NBIO = common dso_local global i32 0, align 4
@mmBIF_SDMA0_DOORBELL_RANGE = common dso_local global i32 0, align 4
@BIF_SDMA0_DOORBELL_RANGE = common dso_local global i32 0, align 4
@OFFSET = common dso_local global i32 0, align 4
@SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32, i32, i32)* @nbio_v7_4_sdma_doorbell_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbio_v7_4_sdma_doorbell_range(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = load i32, i32* @NBIO, align 4
  %19 = load i32, i32* @mmBIF_SDMA0_DOORBELL_RANGE, align 4
  %20 = call i64 @SOC15_REG_OFFSET(i32 %18, i32 0, i32 %19)
  %21 = add nsw i64 %17, %20
  store i64 %21, i64* %11, align 8
  br label %30

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* @NBIO, align 4
  %27 = load i32, i32* @mmBIF_SDMA0_DOORBELL_RANGE, align 4
  %28 = call i64 @SOC15_REG_OFFSET(i32 %26, i32 0, i32 %27)
  %29 = add nsw i64 %25, %28
  store i64 %29, i64* %11, align 8
  br label %30

30:                                               ; preds = %22, %15
  %31 = load i64, i64* %11, align 8
  %32 = call i64 @RREG32(i64 %31)
  store i64 %32, i64* %12, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i64, i64* %12, align 8
  %37 = load i32, i32* @BIF_SDMA0_DOORBELL_RANGE, align 4
  %38 = load i32, i32* @OFFSET, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @REG_SET_FIELD(i64 %36, i32 %37, i32 %38, i32 %39)
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i32, i32* @BIF_SDMA0_DOORBELL_RANGE, align 4
  %43 = load i32, i32* @SIZE, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @REG_SET_FIELD(i64 %41, i32 %42, i32 %43, i32 %44)
  store i64 %45, i64* %12, align 8
  br label %51

46:                                               ; preds = %30
  %47 = load i64, i64* %12, align 8
  %48 = load i32, i32* @BIF_SDMA0_DOORBELL_RANGE, align 4
  %49 = load i32, i32* @SIZE, align 4
  %50 = call i64 @REG_SET_FIELD(i64 %47, i32 %48, i32 %49, i32 0)
  store i64 %50, i64* %12, align 8
  br label %51

51:                                               ; preds = %46, %35
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @WREG32(i64 %52, i64 %53)
  ret void
}

declare dso_local i64 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i64 @RREG32(i64) #1

declare dso_local i64 @REG_SET_FIELD(i64, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
