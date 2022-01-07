; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_lvds_i2c.c_get_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_lvds_i2c.c_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_intel_i2c_chan = type { i32 }

@RGIO = common dso_local global i32 0, align 4
@GPIO_DATA = common dso_local global i32 0, align 4
@RGLVL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_data(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.psb_intel_i2c_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.psb_intel_i2c_chan*
  store %struct.psb_intel_i2c_chan* %7, %struct.psb_intel_i2c_chan** %3, align 8
  %8 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %3, align 8
  %9 = load i32, i32* @RGIO, align 4
  %10 = call i32 @LPC_READ_REG(%struct.psb_intel_i2c_chan* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @GPIO_DATA, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %3, align 8
  %15 = load i32, i32* @RGIO, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @LPC_WRITE_REG(%struct.psb_intel_i2c_chan* %14, i32 %15, i32 %16)
  %18 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %3, align 8
  %19 = load i32, i32* @RGLVL, align 4
  %20 = call i32 @LPC_READ_REG(%struct.psb_intel_i2c_chan* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.psb_intel_i2c_chan*, %struct.psb_intel_i2c_chan** %3, align 8
  %22 = load i32, i32* @RGLVL, align 4
  %23 = call i32 @LPC_READ_REG(%struct.psb_intel_i2c_chan* %21, i32 %22)
  %24 = load i32, i32* @GPIO_DATA, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @LPC_READ_REG(%struct.psb_intel_i2c_chan*, i32) #1

declare dso_local i32 @LPC_WRITE_REG(%struct.psb_intel_i2c_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
