; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys_polled.c_gpio_keys_button_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys_polled.c_gpio_keys_button_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.input_dev*, %struct.gpio_keys_polled_dev* }
%struct.input_dev = type { i32 }
%struct.gpio_keys_polled_dev = type { i32, i32 }
%struct.gpio_keys_button = type { i32, i32, i32 }

@EV_KEY = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*, %struct.gpio_keys_button*, i32)* @gpio_keys_button_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_keys_button_event(%struct.input_polled_dev* %0, %struct.gpio_keys_button* %1, i32 %2) #0 {
  %4 = alloca %struct.input_polled_dev*, align 8
  %5 = alloca %struct.gpio_keys_button*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_keys_polled_dev*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %4, align 8
  store %struct.gpio_keys_button* %1, %struct.gpio_keys_button** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %11 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %10, i32 0, i32 1
  %12 = load %struct.gpio_keys_polled_dev*, %struct.gpio_keys_polled_dev** %11, align 8
  store %struct.gpio_keys_polled_dev* %12, %struct.gpio_keys_polled_dev** %7, align 8
  %13 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %14 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %13, i32 0, i32 0
  %15 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  store %struct.input_dev* %15, %struct.input_dev** %8, align 8
  %16 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %5, align 8
  %17 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EV_KEY, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ %18, %20 ], [ %22, %21 ]
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @EV_REL, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %5, align 8
  %35 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %5, align 8
  %38 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @input_event(%struct.input_dev* %32, i32 %33, i32 %36, i32 %39)
  %41 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %5, align 8
  %42 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.gpio_keys_polled_dev*, %struct.gpio_keys_polled_dev** %7, align 8
  %45 = getelementptr inbounds %struct.gpio_keys_polled_dev, %struct.gpio_keys_polled_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__set_bit(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %31, %28
  br label %85

49:                                               ; preds = %23
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @EV_ABS, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %5, align 8
  %60 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %5, align 8
  %63 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @input_event(%struct.input_dev* %57, i32 %58, i32 %61, i32 %64)
  %66 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %5, align 8
  %67 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.gpio_keys_polled_dev*, %struct.gpio_keys_polled_dev** %7, align 8
  %70 = getelementptr inbounds %struct.gpio_keys_polled_dev, %struct.gpio_keys_polled_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @__set_bit(i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %56, %53
  br label %84

74:                                               ; preds = %49
  %75 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %5, align 8
  %78 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @input_event(%struct.input_dev* %75, i32 %76, i32 %79, i32 %80)
  %82 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %83 = call i32 @input_sync(%struct.input_dev* %82)
  br label %84

84:                                               ; preds = %74, %73
  br label %85

85:                                               ; preds = %84, %48
  ret void
}

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
