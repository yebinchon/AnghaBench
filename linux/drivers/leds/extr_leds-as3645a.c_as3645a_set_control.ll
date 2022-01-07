; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_set_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_set_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3645a = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AS_CONTROL_COIL_PEAK_SHIFT = common dso_local global i32 0, align 4
@AS_CONTROL_OUT_ON = common dso_local global i32 0, align 4
@AS_MODE_FLASH = common dso_local global i32 0, align 4
@V4L2_FLASH_STROBE_SOURCE_EXTERNAL = common dso_local global i64 0, align 8
@AS_CONTROL_STROBE_TYPE_LEVEL = common dso_local global i32 0, align 4
@AS_CONTROL_STROBE_ON = common dso_local global i32 0, align 4
@AS_CONTROL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as3645a*, i32, i32)* @as3645a_set_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3645a_set_control(%struct.as3645a* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.as3645a*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.as3645a* %0, %struct.as3645a** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.as3645a*, %struct.as3645a** %4, align 8
  %9 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @AS_CONTROL_COIL_PEAK_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @AS_CONTROL_OUT_ON, align 4
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = or i32 %13, %20
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @AS_MODE_FLASH, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %19
  %28 = load %struct.as3645a*, %struct.as3645a** %4, align 8
  %29 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_FLASH_STROBE_SOURCE_EXTERNAL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i32, i32* @AS_CONTROL_STROBE_TYPE_LEVEL, align 4
  %35 = load i32, i32* @AS_CONTROL_STROBE_ON, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %33, %27, %19
  %40 = load %struct.as3645a*, %struct.as3645a** %4, align 8
  %41 = load i32, i32* @AS_CONTROL_REG, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @as3645a_write(%struct.as3645a* %40, i32 %41, i32 %42)
  ret i32 %43
}

declare dso_local i32 @as3645a_write(%struct.as3645a*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
