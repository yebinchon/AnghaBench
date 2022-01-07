; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@SDMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@SDMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@SDMA0_ME_CNTL = common dso_local global i64 0, align 8
@SDMA_HALT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cik_sdma_enable(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @cik_sdma_gfx_stop(%struct.radeon_device* %11)
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = call i32 @cik_sdma_rlc_stop(%struct.radeon_device* %13)
  br label %15

15:                                               ; preds = %10, %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %48, %15
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %51

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  store i64 %23, i64* %6, align 8
  br label %26

24:                                               ; preds = %19
  %25 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i64, i64* @SDMA0_ME_CNTL, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @RREG32(i64 %29)
  store i64 %30, i64* %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i64, i64* @SDMA_HALT, align 8
  %35 = xor i64 %34, -1
  %36 = load i64, i64* %5, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %5, align 8
  br label %42

38:                                               ; preds = %26
  %39 = load i64, i64* @SDMA_HALT, align 8
  %40 = load i64, i64* %5, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i64, i64* @SDMA0_ME_CNTL, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @WREG32(i64 %45, i64 %46)
  br label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %16

51:                                               ; preds = %16
  %52 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @cik_sdma_ctx_switch_enable(%struct.radeon_device* %52, i32 %53)
  ret void
}

declare dso_local i32 @cik_sdma_gfx_stop(%struct.radeon_device*) #1

declare dso_local i32 @cik_sdma_rlc_stop(%struct.radeon_device*) #1

declare dso_local i64 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i64) #1

declare dso_local i32 @cik_sdma_ctx_switch_enable(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
