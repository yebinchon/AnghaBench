; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_lm87_sensor.c_wf_lm87_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_lm87_sensor.c_wf_lm87_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_sensor = type { %struct.wf_lm87_sensor* }
%struct.wf_lm87_sensor = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@LM87_INT_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wf_sensor*, i32*)* @wf_lm87_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_lm87_get(%struct.wf_sensor* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wf_sensor*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wf_lm87_sensor*, align 8
  %7 = alloca i32, align 4
  store %struct.wf_sensor* %0, %struct.wf_sensor** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.wf_sensor*, %struct.wf_sensor** %4, align 8
  %9 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %8, i32 0, i32 0
  %10 = load %struct.wf_lm87_sensor*, %struct.wf_lm87_sensor** %9, align 8
  store %struct.wf_lm87_sensor* %10, %struct.wf_lm87_sensor** %6, align 8
  %11 = load %struct.wf_lm87_sensor*, %struct.wf_lm87_sensor** %6, align 8
  %12 = getelementptr inbounds %struct.wf_lm87_sensor, %struct.wf_lm87_sensor* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %31

18:                                               ; preds = %2
  %19 = load %struct.wf_lm87_sensor*, %struct.wf_lm87_sensor** %6, align 8
  %20 = getelementptr inbounds %struct.wf_lm87_sensor, %struct.wf_lm87_sensor* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @wf_lm87_read_reg(i32* %21, i32 39)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 %28, 16
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %25, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @wf_lm87_read_reg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
