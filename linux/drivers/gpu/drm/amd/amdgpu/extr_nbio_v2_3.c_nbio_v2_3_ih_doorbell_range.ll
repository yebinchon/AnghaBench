; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nbio_v2_3.c_nbio_v2_3_ih_doorbell_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nbio_v2_3.c_nbio_v2_3_ih_doorbell_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@NBIO = common dso_local global i32 0, align 4
@mmBIF_IH_DOORBELL_RANGE = common dso_local global i32 0, align 4
@BIF_IH_DOORBELL_RANGE = common dso_local global i32 0, align 4
@OFFSET = common dso_local global i32 0, align 4
@SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32)* @nbio_v2_3_ih_doorbell_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbio_v2_3_ih_doorbell_range(%struct.amdgpu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @NBIO, align 4
  %9 = load i32, i32* @mmBIF_IH_DOORBELL_RANGE, align 4
  %10 = call i32 @RREG32_SOC15(i32 %8, i32 0, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @BIF_IH_DOORBELL_RANGE, align 4
  %16 = load i32, i32* @OFFSET, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @REG_SET_FIELD(i32 %14, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @BIF_IH_DOORBELL_RANGE, align 4
  %21 = load i32, i32* @SIZE, align 4
  %22 = call i32 @REG_SET_FIELD(i32 %19, i32 %20, i32 %21, i32 2)
  store i32 %22, i32* %7, align 4
  br label %28

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @BIF_IH_DOORBELL_RANGE, align 4
  %26 = load i32, i32* @SIZE, align 4
  %27 = call i32 @REG_SET_FIELD(i32 %24, i32 %25, i32 %26, i32 0)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %23, %13
  %29 = load i32, i32* @NBIO, align 4
  %30 = load i32, i32* @mmBIF_IH_DOORBELL_RANGE, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @WREG32_SOC15(i32 %29, i32 0, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
