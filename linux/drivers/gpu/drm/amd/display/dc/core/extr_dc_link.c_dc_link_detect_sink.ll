; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_detect_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_detect_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i64, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.dc_link*, i32)*, i32 (%struct.dc_link*, i32)* }
%struct.gpio = type { i32 }

@SIGNAL_TYPE_LVDS = common dso_local global i64 0, align 8
@dc_connection_single = common dso_local global i32 0, align 4
@SIGNAL_TYPE_EDP = common dso_local global i64 0, align 8
@GPIO_MODE_INTERRUPT = common dso_local global i32 0, align 4
@dc_connection_none = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_link_detect_sink(%struct.dc_link* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_link*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gpio*, align 8
  store %struct.dc_link* %0, %struct.dc_link** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %9 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SIGNAL_TYPE_LVDS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @dc_connection_single, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  store i32 1, i32* %3, align 4
  br label %76

16:                                               ; preds = %2
  %17 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %18 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SIGNAL_TYPE_EDP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %24 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %23, i32 0, i32 3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32 (%struct.dc_link*, i32)*, i32 (%struct.dc_link*, i32)** %27, align 8
  %29 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %30 = call i32 %28(%struct.dc_link* %29, i32 1)
  %31 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %32 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %31, i32 0, i32 3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dc_link*, i32)*, i32 (%struct.dc_link*, i32)** %35, align 8
  %37 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %38 = call i32 %36(%struct.dc_link* %37, i32 1)
  br label %39

39:                                               ; preds = %22, %16
  %40 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %41 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %46 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %49 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.gpio* @get_hpd_gpio(i32 %44, i32 %47, i32 %52)
  store %struct.gpio* %53, %struct.gpio** %7, align 8
  %54 = load %struct.gpio*, %struct.gpio** %7, align 8
  %55 = icmp eq %struct.gpio* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  br label %75

57:                                               ; preds = %39
  %58 = load %struct.gpio*, %struct.gpio** %7, align 8
  %59 = load i32, i32* @GPIO_MODE_INTERRUPT, align 4
  %60 = call i32 @dal_gpio_open(%struct.gpio* %58, i32 %59)
  %61 = load %struct.gpio*, %struct.gpio** %7, align 8
  %62 = call i32 @dal_gpio_get_value(%struct.gpio* %61, i64* %6)
  %63 = load %struct.gpio*, %struct.gpio** %7, align 8
  %64 = call i32 @dal_gpio_close(%struct.gpio* %63)
  %65 = call i32 @dal_gpio_destroy_irq(%struct.gpio** %7)
  %66 = load i64, i64* %6, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i32, i32* @dc_connection_single, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  br label %74

71:                                               ; preds = %57
  %72 = load i32, i32* @dc_connection_none, align 4
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  store i32 1, i32* %3, align 4
  br label %76

75:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %74, %13
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.gpio* @get_hpd_gpio(i32, i32, i32) #1

declare dso_local i32 @dal_gpio_open(%struct.gpio*, i32) #1

declare dso_local i32 @dal_gpio_get_value(%struct.gpio*, i64*) #1

declare dso_local i32 @dal_gpio_close(%struct.gpio*) #1

declare dso_local i32 @dal_gpio_destroy_irq(%struct.gpio**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
