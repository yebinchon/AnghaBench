; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_send_upll_ctlreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_send_upll_ctlreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@UPLL_CTLREQ_MASK = common dso_local global i32 0, align 4
@UPLL_CTLACK_MASK = common dso_local global i32 0, align 4
@UPLL_CTLACK2_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Timeout setting UVD clocks!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_uvd_send_upll_ctlreq(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @UPLL_CTLREQ_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = call i32 @WREG32_P(i32 %8, i32 0, i32 %10)
  %12 = call i32 @mdelay(i32 10)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @UPLL_CTLREQ_MASK, align 4
  %15 = load i32, i32* @UPLL_CTLREQ_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = call i32 @WREG32_P(i32 %13, i32 %14, i32 %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %34, %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %19, 100
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load i32, i32* @UPLL_CTLACK_MASK, align 4
  %23 = load i32, i32* @UPLL_CTLACK2_MASK, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @RREG32(i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %37

32:                                               ; preds = %21
  %33 = call i32 @mdelay(i32 10)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %18

37:                                               ; preds = %31, %18
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @UPLL_CTLREQ_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = call i32 @WREG32_P(i32 %38, i32 0, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 100
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
