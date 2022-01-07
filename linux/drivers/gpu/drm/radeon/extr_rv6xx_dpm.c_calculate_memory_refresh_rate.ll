; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_calculate_memory_refresh_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_calculate_memory_refresh_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RAMCFG = common dso_local global i32 0, align 4
@NOOFROWS_MASK = common dso_local global i32 0, align 4
@NOOFROWS_SHIFT = common dso_local global i32 0, align 4
@MC_SEQ_RESERVE_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32)* @calculate_memory_refresh_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_memory_refresh_rate(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @RAMCFG, align 4
  %9 = call i32 @RREG32(i32 %8)
  %10 = load i32, i32* @NOOFROWS_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @NOOFROWS_SHIFT, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 10
  %16 = shl i32 1, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @MC_SEQ_RESERVE_M, align 4
  %18 = call i32 @RREG32(i32 %17)
  %19 = and i32 %18, 3
  %20 = add nsw i32 %19, 3
  %21 = shl i32 1, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 %22, 10
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = sdiv i32 %25, %26
  %28 = sub nsw i32 %27, 32
  %29 = sdiv i32 %28, 64
  ret i32 %29
}

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
