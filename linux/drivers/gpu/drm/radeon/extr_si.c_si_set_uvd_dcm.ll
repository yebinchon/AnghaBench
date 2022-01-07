; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_set_uvd_dcm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_set_uvd_dcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@UVD_CGC_CTRL = common dso_local global i32 0, align 4
@CLK_OD_MASK = common dso_local global i32 0, align 4
@CG_DT_MASK = common dso_local global i32 0, align 4
@DCM = common dso_local global i32 0, align 4
@DYN_OR_EN = common dso_local global i32 0, align 4
@DYN_RR_EN = common dso_local global i32 0, align 4
@UVD_CGC_CTRL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @si_set_uvd_dcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_set_uvd_dcm(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @UVD_CGC_CTRL, align 4
  %8 = call i32 @RREG32(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @CLK_OD_MASK, align 4
  %10 = load i32, i32* @CG_DT_MASK, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @DCM, align 4
  %16 = call i32 @CG_DT(i32 1)
  %17 = or i32 %15, %16
  %18 = call i32 @CLK_OD(i32 4)
  %19 = or i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, -2147481601
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @DYN_OR_EN, align 4
  %28 = load i32, i32* @DYN_RR_EN, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @G_DIV_ID(i32 7)
  %31 = or i32 %29, %30
  store i32 %31, i32* %6, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, 2147481600
  store i32 %34, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %24
  %36 = load i32, i32* @UVD_CGC_CTRL, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @WREG32(i32 %36, i32 %37)
  %39 = load i32, i32* @UVD_CGC_CTRL2, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @WREG32_UVD_CTX(i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @CG_DT(i32) #1

declare dso_local i32 @CLK_OD(i32) #1

declare dso_local i32 @G_DIV_ID(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_UVD_CTX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
