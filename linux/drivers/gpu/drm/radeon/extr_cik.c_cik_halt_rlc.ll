; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_halt_rlc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_halt_rlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RLC_CNTL = common dso_local global i32 0, align 4
@RLC_ENABLE = common dso_local global i32 0, align 4
@RLC_GPM_STAT = common dso_local global i32 0, align 4
@RLC_GPM_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cik_halt_rlc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_halt_rlc(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load i32, i32* @RLC_CNTL, align 4
  %7 = call i32 @RREG32(i32 %6)
  store i32 %7, i32* %3, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @RLC_ENABLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %1
  %13 = load i32, i32* @RLC_ENABLE, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @RLC_CNTL, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @WREG32(i32 %17, i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %35, %12
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load i32, i32* @RLC_GPM_STAT, align 4
  %28 = call i32 @RREG32(i32 %27)
  %29 = load i32, i32* @RLC_GPM_BUSY, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %38

33:                                               ; preds = %26
  %34 = call i32 @udelay(i32 1)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %20

38:                                               ; preds = %32, %20
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = call i32 @cik_wait_for_rlc_serdes(%struct.radeon_device* %39)
  br label %41

41:                                               ; preds = %38, %1
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cik_wait_for_rlc_serdes(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
