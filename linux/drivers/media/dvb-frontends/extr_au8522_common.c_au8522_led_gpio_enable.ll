; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_au8522_common.c_au8522_led_gpio_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_au8522_common.c_au8522_led_gpio_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au8522_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.au8522_led_config* }
%struct.au8522_led_config = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au8522_state*, i32)* @au8522_led_gpio_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au8522_led_gpio_enable(%struct.au8522_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.au8522_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.au8522_led_config*, align 8
  %7 = alloca i32, align 4
  store %struct.au8522_state* %0, %struct.au8522_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.au8522_state*, %struct.au8522_state** %4, align 8
  %9 = getelementptr inbounds %struct.au8522_state, %struct.au8522_state* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.au8522_led_config*, %struct.au8522_led_config** %10, align 8
  store %struct.au8522_led_config* %11, %struct.au8522_led_config** %6, align 8
  %12 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %13 = icmp ne %struct.au8522_led_config* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %16 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %21 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %26 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %19, %14, %2
  store i32 0, i32* %3, align 4
  br label %79

30:                                               ; preds = %24
  %31 = load %struct.au8522_state*, %struct.au8522_state** %4, align 8
  %32 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %33 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, -49153
  %36 = or i32 16384, %35
  %37 = call i32 @au8522_readreg(%struct.au8522_state* %31, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %30
  %41 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %42 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 8
  %45 = and i32 %44, 255
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %50 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 255
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %70

55:                                               ; preds = %30
  %56 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %57 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 255
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %65 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 255
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %55, %40
  %71 = load %struct.au8522_state*, %struct.au8522_state** %4, align 8
  %72 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %73 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, -49153
  %76 = or i32 32768, %75
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @au8522_writereg(%struct.au8522_state* %71, i32 %76, i32 %77)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %70, %29
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @au8522_readreg(%struct.au8522_state*, i32) #1

declare dso_local i32 @au8522_writereg(%struct.au8522_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
