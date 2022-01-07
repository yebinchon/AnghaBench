; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_program_hpd_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_program_hpd_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gpio = type { i32 }
%struct.gpio_hpd_config = type { i32, i32 }

@GPIO_MODE_INTERRUPT = common dso_local global i32 0, align 4
@GPIO_RESULT_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_link*)* @program_hpd_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @program_hpd_filter(%struct.dc_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gpio_hpd_config, align 4
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %10 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

14:                                               ; preds = %1
  %15 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %16 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %21 [
    i32 131, label %18
    i32 132, label %18
    i32 129, label %18
    i32 134, label %19
    i32 133, label %19
    i32 128, label %20
    i32 130, label %20
  ]

18:                                               ; preds = %14, %14, %14
  store i32 500, i32* %6, align 4
  store i32 100, i32* %7, align 4
  br label %22

19:                                               ; preds = %14, %14
  store i32 80, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %22

20:                                               ; preds = %14, %14
  br label %21

21:                                               ; preds = %14, %20
  store i32 0, i32* %2, align 4
  br label %61

22:                                               ; preds = %19, %18
  %23 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %24 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %29 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %32 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.gpio* @get_hpd_gpio(i32 %27, i32 %30, i32 %35)
  store %struct.gpio* %36, %struct.gpio** %5, align 8
  %37 = load %struct.gpio*, %struct.gpio** %5, align 8
  %38 = icmp ne %struct.gpio* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %22
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %61

41:                                               ; preds = %22
  %42 = load %struct.gpio*, %struct.gpio** %5, align 8
  %43 = load i32, i32* @GPIO_MODE_INTERRUPT, align 4
  %44 = call i64 @dal_gpio_open(%struct.gpio* %42, i32 %43)
  %45 = load i64, i64* @GPIO_RESULT_OK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = getelementptr inbounds %struct.gpio_hpd_config, %struct.gpio_hpd_config* %8, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds %struct.gpio_hpd_config, %struct.gpio_hpd_config* %8, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.gpio*, %struct.gpio** %5, align 8
  %53 = call i32 @dal_irq_setup_hpd_filter(%struct.gpio* %52, %struct.gpio_hpd_config* %8)
  %54 = load %struct.gpio*, %struct.gpio** %5, align 8
  %55 = call i32 @dal_gpio_close(%struct.gpio* %54)
  store i32 1, i32* %4, align 4
  br label %58

56:                                               ; preds = %41
  %57 = call i32 @ASSERT_CRITICAL(i32 0)
  br label %58

58:                                               ; preds = %56, %47
  %59 = call i32 @dal_gpio_destroy_irq(%struct.gpio** %5)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %39, %21, %13
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.gpio* @get_hpd_gpio(i32, i32, i32) #1

declare dso_local i64 @dal_gpio_open(%struct.gpio*, i32) #1

declare dso_local i32 @dal_irq_setup_hpd_filter(%struct.gpio*, %struct.gpio_hpd_config*) #1

declare dso_local i32 @dal_gpio_close(%struct.gpio*) #1

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

declare dso_local i32 @dal_gpio_destroy_irq(%struct.gpio**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
