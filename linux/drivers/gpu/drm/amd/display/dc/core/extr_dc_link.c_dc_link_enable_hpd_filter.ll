; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_enable_hpd_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_enable_hpd_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gpio = type { i32 }
%struct.gpio_hpd_config = type { i64, i64 }

@GPIO_MODE_INTERRUPT = common dso_local global i32 0, align 4
@GPIO_RESULT_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dc_link_enable_hpd_filter(%struct.dc_link* %0, i32 %1) #0 {
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio*, align 8
  %6 = alloca %struct.gpio_hpd_config, align 8
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %11 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %13 = call i32 @program_hpd_filter(%struct.dc_link* %12)
  br label %51

14:                                               ; preds = %2
  %15 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %16 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %18 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %23 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %26 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.gpio* @get_hpd_gpio(i32 %21, i32 %24, i32 %29)
  store %struct.gpio* %30, %struct.gpio** %5, align 8
  %31 = load %struct.gpio*, %struct.gpio** %5, align 8
  %32 = icmp ne %struct.gpio* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %14
  br label %51

34:                                               ; preds = %14
  %35 = load %struct.gpio*, %struct.gpio** %5, align 8
  %36 = load i32, i32* @GPIO_MODE_INTERRUPT, align 4
  %37 = call i64 @dal_gpio_open(%struct.gpio* %35, i32 %36)
  %38 = load i64, i64* @GPIO_RESULT_OK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.gpio_hpd_config, %struct.gpio_hpd_config* %6, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.gpio_hpd_config, %struct.gpio_hpd_config* %6, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.gpio*, %struct.gpio** %5, align 8
  %44 = call i32 @dal_irq_setup_hpd_filter(%struct.gpio* %43, %struct.gpio_hpd_config* %6)
  %45 = load %struct.gpio*, %struct.gpio** %5, align 8
  %46 = call i32 @dal_gpio_close(%struct.gpio* %45)
  br label %49

47:                                               ; preds = %34
  %48 = call i32 @ASSERT_CRITICAL(i32 0)
  br label %49

49:                                               ; preds = %47, %40
  %50 = call i32 @dal_gpio_destroy_irq(%struct.gpio** %5)
  br label %51

51:                                               ; preds = %33, %49, %9
  ret void
}

declare dso_local i32 @program_hpd_filter(%struct.dc_link*) #1

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
