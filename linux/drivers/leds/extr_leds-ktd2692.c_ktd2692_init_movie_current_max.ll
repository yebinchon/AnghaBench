; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_init_movie_current_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_init_movie_current_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktd2692_led_config_data = type { i32, i32, i32 }

@KTD2692_MOVIE_MODE_CURRENT_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ktd2692_led_config_data*)* @ktd2692_init_movie_current_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ktd2692_init_movie_current_max(%struct.ktd2692_led_config_data* %0) #0 {
  %2 = alloca %struct.ktd2692_led_config_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ktd2692_led_config_data* %0, %struct.ktd2692_led_config_data** %2, align 8
  %6 = load i32, i32* @KTD2692_MOVIE_MODE_CURRENT_LEVELS, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.ktd2692_led_config_data*, %struct.ktd2692_led_config_data** %2, align 8
  %8 = getelementptr inbounds %struct.ktd2692_led_config_data, %struct.ktd2692_led_config_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @KTD2692_MM_TO_FL_RATIO(i32 %9)
  %11 = load i32, i32* @KTD2692_MOVIE_MODE_CURRENT_LEVELS, align 4
  %12 = sdiv i32 %10, %11
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %28, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ktd2692_led_config_data*, %struct.ktd2692_led_config_data** %2, align 8
  %22 = getelementptr inbounds %struct.ktd2692_led_config_data, %struct.ktd2692_led_config_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = icmp sgt i32 %26, 0
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i1 [ false, %19 ], [ %27, %25 ]
  br i1 %29, label %13, label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.ktd2692_led_config_data*, %struct.ktd2692_led_config_data** %2, align 8
  %33 = getelementptr inbounds %struct.ktd2692_led_config_data, %struct.ktd2692_led_config_data* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  ret void
}

declare dso_local i32 @KTD2692_MM_TO_FL_RATIO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
