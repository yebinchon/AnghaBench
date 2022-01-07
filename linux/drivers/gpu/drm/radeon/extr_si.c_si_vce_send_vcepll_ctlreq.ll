; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_vce_send_vcepll_ctlreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_vce_send_vcepll_ctlreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@CG_VCEPLL_FUNC_CNTL = common dso_local global i32 0, align 4
@UPLL_CTLREQ_MASK = common dso_local global i32 0, align 4
@UPLL_CTLACK_MASK = common dso_local global i32 0, align 4
@UPLL_CTLACK2_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Timeout setting UVD clocks!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_vce_send_vcepll_ctlreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_vce_send_vcepll_ctlreq(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load i32, i32* @CG_VCEPLL_FUNC_CNTL, align 4
  %7 = load i32, i32* @UPLL_CTLREQ_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = call i32 @WREG32_SMC_P(i32 %6, i32 0, i32 %8)
  %10 = call i32 @mdelay(i32 10)
  %11 = load i32, i32* @CG_VCEPLL_FUNC_CNTL, align 4
  %12 = load i32, i32* @UPLL_CTLREQ_MASK, align 4
  %13 = load i32, i32* @UPLL_CTLREQ_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = call i32 @WREG32_SMC_P(i32 %11, i32 %12, i32 %14)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %32, %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp ult i32 %17, 100
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i32, i32* @UPLL_CTLACK_MASK, align 4
  %21 = load i32, i32* @UPLL_CTLACK2_MASK, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @CG_VCEPLL_FUNC_CNTL, align 4
  %24 = call i32 @RREG32_SMC(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %35

30:                                               ; preds = %19
  %31 = call i32 @mdelay(i32 10)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %16

35:                                               ; preds = %29, %16
  %36 = load i32, i32* @CG_VCEPLL_FUNC_CNTL, align 4
  %37 = load i32, i32* @UPLL_CTLREQ_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = call i32 @WREG32_SMC_P(i32 %36, i32 0, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 100
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ETIMEDOUT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @WREG32_SMC_P(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
