; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_as3935.c_calibrate_as3935.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_as3935.c_calibrate_as3935.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3935_state = type { i32, i32 }

@AS3935_DEFAULTS = common dso_local global i32 0, align 4
@AS3935_CALIBRATE = common dso_local global i32 0, align 4
@AS3935_TUNE_CAP = common dso_local global i32 0, align 4
@TUNE_CAP_DIV = common dso_local global i32 0, align 4
@AS3935_NFLWDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.as3935_state*)* @calibrate_as3935 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calibrate_as3935(%struct.as3935_state* %0) #0 {
  %2 = alloca %struct.as3935_state*, align 8
  store %struct.as3935_state* %0, %struct.as3935_state** %2, align 8
  %3 = load %struct.as3935_state*, %struct.as3935_state** %2, align 8
  %4 = load i32, i32* @AS3935_DEFAULTS, align 4
  %5 = call i32 @as3935_write(%struct.as3935_state* %3, i32 %4, i32 150)
  %6 = load %struct.as3935_state*, %struct.as3935_state** %2, align 8
  %7 = load i32, i32* @AS3935_CALIBRATE, align 4
  %8 = call i32 @as3935_write(%struct.as3935_state* %6, i32 %7, i32 150)
  %9 = load %struct.as3935_state*, %struct.as3935_state** %2, align 8
  %10 = load i32, i32* @AS3935_TUNE_CAP, align 4
  %11 = call i32 @BIT(i32 5)
  %12 = load %struct.as3935_state*, %struct.as3935_state** %2, align 8
  %13 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TUNE_CAP_DIV, align 4
  %16 = sdiv i32 %14, %15
  %17 = or i32 %11, %16
  %18 = call i32 @as3935_write(%struct.as3935_state* %9, i32 %10, i32 %17)
  %19 = call i32 @mdelay(i32 2)
  %20 = load %struct.as3935_state*, %struct.as3935_state** %2, align 8
  %21 = load i32, i32* @AS3935_TUNE_CAP, align 4
  %22 = load %struct.as3935_state*, %struct.as3935_state** %2, align 8
  %23 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TUNE_CAP_DIV, align 4
  %26 = sdiv i32 %24, %25
  %27 = call i32 @as3935_write(%struct.as3935_state* %20, i32 %21, i32 %26)
  %28 = load %struct.as3935_state*, %struct.as3935_state** %2, align 8
  %29 = load i32, i32* @AS3935_NFLWDTH, align 4
  %30 = load %struct.as3935_state*, %struct.as3935_state** %2, align 8
  %31 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @as3935_write(%struct.as3935_state* %28, i32 %29, i32 %32)
  ret void
}

declare dso_local i32 @as3935_write(%struct.as3935_state*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
