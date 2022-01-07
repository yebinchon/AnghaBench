; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp8788.c_lp8788_led_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp8788.c_lp8788_led_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8788_led_config = type { i32, i32, i32 }
%struct.lp8788_led = type { i32, i32 }
%struct.lp8788_led_platform_data = type { i32, i32, i32 }

@default_led_config = common dso_local global %struct.lp8788_led_config zeroinitializer, align 4
@LP8788_ISINK_CTRL = common dso_local global i32 0, align 4
@LP8788_ISINK_SCALE_OFFSET = common dso_local global i32 0, align 4
@lp8788_iout_addr = common dso_local global i32* null, align 8
@lp8788_iout_mask = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp8788_led*, %struct.lp8788_led_platform_data*)* @lp8788_led_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_led_init_device(%struct.lp8788_led* %0, %struct.lp8788_led_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lp8788_led*, align 8
  %5 = alloca %struct.lp8788_led_platform_data*, align 8
  %6 = alloca %struct.lp8788_led_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lp8788_led* %0, %struct.lp8788_led** %4, align 8
  store %struct.lp8788_led_platform_data* %1, %struct.lp8788_led_platform_data** %5, align 8
  store %struct.lp8788_led_config* @default_led_config, %struct.lp8788_led_config** %6, align 8
  %11 = load %struct.lp8788_led_platform_data*, %struct.lp8788_led_platform_data** %5, align 8
  %12 = icmp ne %struct.lp8788_led_platform_data* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.lp8788_led_platform_data*, %struct.lp8788_led_platform_data** %5, align 8
  %15 = getelementptr inbounds %struct.lp8788_led_platform_data, %struct.lp8788_led_platform_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.lp8788_led_config*, %struct.lp8788_led_config** %6, align 8
  %18 = getelementptr inbounds %struct.lp8788_led_config, %struct.lp8788_led_config* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.lp8788_led_platform_data*, %struct.lp8788_led_platform_data** %5, align 8
  %20 = getelementptr inbounds %struct.lp8788_led_platform_data, %struct.lp8788_led_platform_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.lp8788_led_config*, %struct.lp8788_led_config** %6, align 8
  %23 = getelementptr inbounds %struct.lp8788_led_config, %struct.lp8788_led_config* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.lp8788_led_platform_data*, %struct.lp8788_led_platform_data** %5, align 8
  %25 = getelementptr inbounds %struct.lp8788_led_platform_data, %struct.lp8788_led_platform_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.lp8788_led_config*, %struct.lp8788_led_config** %6, align 8
  %28 = getelementptr inbounds %struct.lp8788_led_config, %struct.lp8788_led_config* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %13, %2
  %30 = load %struct.lp8788_led_config*, %struct.lp8788_led_config** %6, align 8
  %31 = getelementptr inbounds %struct.lp8788_led_config, %struct.lp8788_led_config* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.lp8788_led*, %struct.lp8788_led** %4, align 8
  %34 = getelementptr inbounds %struct.lp8788_led, %struct.lp8788_led* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @LP8788_ISINK_CTRL, align 4
  store i32 %35, i32* %7, align 4
  %36 = load %struct.lp8788_led_config*, %struct.lp8788_led_config** %6, align 8
  %37 = getelementptr inbounds %struct.lp8788_led_config, %struct.lp8788_led_config* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LP8788_ISINK_SCALE_OFFSET, align 4
  %40 = add nsw i32 %38, %39
  %41 = shl i32 1, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.lp8788_led_config*, %struct.lp8788_led_config** %6, align 8
  %43 = getelementptr inbounds %struct.lp8788_led_config, %struct.lp8788_led_config* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.lp8788_led_config*, %struct.lp8788_led_config** %6, align 8
  %46 = getelementptr inbounds %struct.lp8788_led_config, %struct.lp8788_led_config* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @LP8788_ISINK_SCALE_OFFSET, align 4
  %49 = add nsw i32 %47, %48
  %50 = shl i32 %44, %49
  store i32 %50, i32* %9, align 4
  %51 = load %struct.lp8788_led*, %struct.lp8788_led** %4, align 8
  %52 = getelementptr inbounds %struct.lp8788_led, %struct.lp8788_led* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @lp8788_update_bits(i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %29
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %3, align 4
  br label %87

62:                                               ; preds = %29
  %63 = load i32*, i32** @lp8788_iout_addr, align 8
  %64 = load %struct.lp8788_led_config*, %struct.lp8788_led_config** %6, align 8
  %65 = getelementptr inbounds %struct.lp8788_led_config, %struct.lp8788_led_config* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %7, align 4
  %70 = load i32*, i32** @lp8788_iout_mask, align 8
  %71 = load %struct.lp8788_led_config*, %struct.lp8788_led_config** %6, align 8
  %72 = getelementptr inbounds %struct.lp8788_led_config, %struct.lp8788_led_config* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %8, align 4
  %77 = load %struct.lp8788_led_config*, %struct.lp8788_led_config** %6, align 8
  %78 = getelementptr inbounds %struct.lp8788_led_config, %struct.lp8788_led_config* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %9, align 4
  %80 = load %struct.lp8788_led*, %struct.lp8788_led** %4, align 8
  %81 = getelementptr inbounds %struct.lp8788_led, %struct.lp8788_led* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @lp8788_update_bits(i32 %82, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %62, %60
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @lp8788_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
