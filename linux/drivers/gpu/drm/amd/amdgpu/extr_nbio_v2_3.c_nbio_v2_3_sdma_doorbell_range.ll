; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nbio_v2_3.c_nbio_v2_3_sdma_doorbell_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nbio_v2_3.c_nbio_v2_3_sdma_doorbell_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@NBIO = common dso_local global i32 0, align 4
@mmBIF_SDMA0_DOORBELL_RANGE = common dso_local global i32 0, align 4
@mmBIF_SDMA1_DOORBELL_RANGE = common dso_local global i32 0, align 4
@BIF_SDMA0_DOORBELL_RANGE = common dso_local global i32 0, align 4
@OFFSET = common dso_local global i32 0, align 4
@SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32, i32, i32)* @nbio_v2_3_sdma_doorbell_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbio_v2_3_sdma_doorbell_range(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i32, i32* @NBIO, align 4
  %17 = load i32, i32* @mmBIF_SDMA0_DOORBELL_RANGE, align 4
  %18 = call i32 @SOC15_REG_OFFSET(i32 %16, i32 0, i32 %17)
  br label %23

19:                                               ; preds = %5
  %20 = load i32, i32* @NBIO, align 4
  %21 = load i32, i32* @mmBIF_SDMA1_DOORBELL_RANGE, align 4
  %22 = call i32 @SOC15_REG_OFFSET(i32 %20, i32 0, i32 %21)
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i32 [ %18, %15 ], [ %22, %19 ]
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @RREG32(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @BIF_SDMA0_DOORBELL_RANGE, align 4
  %32 = load i32, i32* @OFFSET, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @REG_SET_FIELD(i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @BIF_SDMA0_DOORBELL_RANGE, align 4
  %37 = load i32, i32* @SIZE, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @REG_SET_FIELD(i32 %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %12, align 4
  br label %45

40:                                               ; preds = %23
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @BIF_SDMA0_DOORBELL_RANGE, align 4
  %43 = load i32, i32* @SIZE, align 4
  %44 = call i32 @REG_SET_FIELD(i32 %41, i32 %42, i32 %43, i32 0)
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %40, %29
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @WREG32(i32 %46, i32 %47)
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
