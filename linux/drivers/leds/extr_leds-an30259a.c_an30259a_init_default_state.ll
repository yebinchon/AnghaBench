; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-an30259a.c_an30259a_init_default_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-an30259a.c_an30259a_init_default_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an30259a_led = type { i32, %struct.TYPE_2__, i32, %struct.an30259a* }
%struct.TYPE_2__ = type { i32 }
%struct.an30259a = type { i32 }

@LED_FULL = common dso_local global i32 0, align 4
@AN30259A_REG_LED_ON = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.an30259a_led*)* @an30259a_init_default_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an30259a_init_default_state(%struct.an30259a_led* %0) #0 {
  %2 = alloca %struct.an30259a_led*, align 8
  %3 = alloca %struct.an30259a*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.an30259a_led* %0, %struct.an30259a_led** %2, align 8
  %6 = load %struct.an30259a_led*, %struct.an30259a_led** %2, align 8
  %7 = getelementptr inbounds %struct.an30259a_led, %struct.an30259a_led* %6, i32 0, i32 3
  %8 = load %struct.an30259a*, %struct.an30259a** %7, align 8
  store %struct.an30259a* %8, %struct.an30259a** %3, align 8
  %9 = load %struct.an30259a_led*, %struct.an30259a_led** %2, align 8
  %10 = getelementptr inbounds %struct.an30259a_led, %struct.an30259a_led* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %52 [
    i32 128, label %12
    i32 129, label %17
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @LED_FULL, align 4
  %14 = load %struct.an30259a_led*, %struct.an30259a_led** %2, align 8
  %15 = getelementptr inbounds %struct.an30259a_led, %struct.an30259a_led* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  br label %58

17:                                               ; preds = %1
  %18 = load %struct.an30259a*, %struct.an30259a** %3, align 8
  %19 = getelementptr inbounds %struct.an30259a, %struct.an30259a* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AN30259A_REG_LED_ON, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %58

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.an30259a_led*, %struct.an30259a_led** %2, align 8
  %29 = getelementptr inbounds %struct.an30259a_led, %struct.an30259a_led* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @AN30259A_LED_EN(i32 %30)
  %32 = and i32 %27, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %26
  %35 = load i8*, i8** @LED_OFF, align 8
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.an30259a_led*, %struct.an30259a_led** %2, align 8
  %38 = getelementptr inbounds %struct.an30259a_led, %struct.an30259a_led* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  br label %58

40:                                               ; preds = %26
  %41 = load %struct.an30259a*, %struct.an30259a** %3, align 8
  %42 = getelementptr inbounds %struct.an30259a, %struct.an30259a* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.an30259a_led*, %struct.an30259a_led** %2, align 8
  %45 = getelementptr inbounds %struct.an30259a_led, %struct.an30259a_led* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @AN30259A_REG_LEDCC(i32 %46)
  %48 = load %struct.an30259a_led*, %struct.an30259a_led** %2, align 8
  %49 = getelementptr inbounds %struct.an30259a_led, %struct.an30259a_led* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @regmap_read(i32 %43, i32 %47, i32* %50)
  br label %58

52:                                               ; preds = %1
  %53 = load i8*, i8** @LED_OFF, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.an30259a_led*, %struct.an30259a_led** %2, align 8
  %56 = getelementptr inbounds %struct.an30259a_led, %struct.an30259a_led* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %52, %40, %34, %25, %12
  %59 = load %struct.an30259a_led*, %struct.an30259a_led** %2, align 8
  %60 = getelementptr inbounds %struct.an30259a_led, %struct.an30259a_led* %59, i32 0, i32 1
  %61 = load %struct.an30259a_led*, %struct.an30259a_led** %2, align 8
  %62 = getelementptr inbounds %struct.an30259a_led, %struct.an30259a_led* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @an30259a_brightness_set(%struct.TYPE_2__* %60, i32 %64)
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @AN30259A_LED_EN(i32) #1

declare dso_local i32 @AN30259A_REG_LEDCC(i32) #1

declare dso_local i32 @an30259a_brightness_set(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
