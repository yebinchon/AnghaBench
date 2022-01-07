; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_ctx_switch_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_ctx_switch_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@SDMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@SDMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@SDMA0_CNTL = common dso_local global i64 0, align 8
@AUTO_CTXSW_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @cik_sdma_ctx_switch_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_sdma_ctx_switch_enable(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %40, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %43

11:                                               ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  store i64 %15, i64* %5, align 8
  br label %18

16:                                               ; preds = %11
  %17 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i64, i64* @SDMA0_CNTL, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @RREG32(i64 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i64, i64* @AUTO_CTXSW_ENABLE, align 8
  %27 = load i64, i64* %6, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %6, align 8
  br label %34

29:                                               ; preds = %18
  %30 = load i64, i64* @AUTO_CTXSW_ENABLE, align 8
  %31 = xor i64 %30, -1
  %32 = load i64, i64* %6, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i64, i64* @SDMA0_CNTL, align 8
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @WREG32(i64 %37, i64 %38)
  br label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %8

43:                                               ; preds = %8
  ret void
}

declare dso_local i64 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
