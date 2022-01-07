; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_smc.c_sumo_set_tdp_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_smc.c_sumo_set_tdp_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RCU_SclkDpmTdpLimit01 = common dso_local global i32 0, align 4
@RCU_SclkDpmTdpLimit23 = common dso_local global i32 0, align 4
@RCU_SclkDpmTdpLimit47 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sumo_set_tdp_limit(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 4095, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %24 [
    i32 0, label %12
    i32 1, label %14
    i32 2, label %16
    i32 3, label %18
    i32 4, label %20
    i32 7, label %22
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @RCU_SclkDpmTdpLimit01, align 4
  store i32 %13, i32* %7, align 4
  store i32 16, i32* %8, align 4
  br label %25

14:                                               ; preds = %3
  %15 = load i32, i32* @RCU_SclkDpmTdpLimit01, align 4
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %25

16:                                               ; preds = %3
  %17 = load i32, i32* @RCU_SclkDpmTdpLimit23, align 4
  store i32 %17, i32* %7, align 4
  store i32 16, i32* %8, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load i32, i32* @RCU_SclkDpmTdpLimit23, align 4
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @RCU_SclkDpmTdpLimit47, align 4
  store i32 %21, i32* %7, align 4
  store i32 16, i32* %8, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @RCU_SclkDpmTdpLimit47, align 4
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %22, %20, %18, %16, %14, %12
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @RREG32_RCU(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = shl i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @WREG32_RCU(i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @RREG32_RCU(i32) #1

declare dso_local i32 @WREG32_RCU(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
