; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_lvds_i2c.c_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_lvds_i2c.c_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_intel_i2c_chan = type { i32 }

@RGIO = common dso_local global i32 0, align 4
@GPIO_CLOCK = common dso_local global i32 0, align 4
@RGLVL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_clock(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.psb_intel_i2c_chan*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.psb_intel_i2c_chan*
  store %struct.psb_intel_i2c_chan* %8, %struct.psb_intel_i2c_chan** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %5, align 8
  %13 = load i32, i32* @RGIO, align 4
  %14 = call i32 @LPC_READ_REG(%struct.psb_intel_i2c_chan* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @GPIO_CLOCK, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %5, align 8
  %19 = load i32, i32* @RGIO, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @LPC_WRITE_REG(%struct.psb_intel_i2c_chan* %18, i32 %19, i32 %20)
  br label %45

22:                                               ; preds = %2
  %23 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %5, align 8
  %24 = load i32, i32* @RGIO, align 4
  %25 = call i32 @LPC_READ_REG(%struct.psb_intel_i2c_chan* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @GPIO_CLOCK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %5, align 8
  %31 = load i32, i32* @RGIO, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @LPC_WRITE_REG(%struct.psb_intel_i2c_chan* %30, i32 %31, i32 %32)
  %34 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %5, align 8
  %35 = load i32, i32* @RGLVL, align 4
  %36 = call i32 @LPC_READ_REG(%struct.psb_intel_i2c_chan* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @GPIO_CLOCK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %5, align 8
  %42 = load i32, i32* @RGLVL, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @LPC_WRITE_REG(%struct.psb_intel_i2c_chan* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %22, %11
  ret void
}

declare dso_local i32 @LPC_READ_REG(%struct.psb_intel_i2c_chan*, i32) #1

declare dso_local i32 @LPC_WRITE_REG(%struct.psb_intel_i2c_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
