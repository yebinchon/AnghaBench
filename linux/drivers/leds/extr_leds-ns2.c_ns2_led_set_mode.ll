; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ns2.c_ns2_led_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ns2.c_ns2_led_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns2_led_data = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ns2_led_data*, i32)* @ns2_led_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns2_led_set_mode(%struct.ns2_led_data* %0, i32 %1) #0 {
  %3 = alloca %struct.ns2_led_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ns2_led_data* %0, %struct.ns2_led_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %27, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %11 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %17 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %15, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %30

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %8

30:                                               ; preds = %25, %8
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %98

34:                                               ; preds = %30
  %35 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %36 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %35, i32 0, i32 1
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @write_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %40 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %68, label %43

43:                                               ; preds = %34
  %44 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %45 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %48 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @gpio_set_value(i32 %46, i32 %54)
  %56 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %57 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %60 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @gpio_set_value(i32 %58, i32 %66)
  br label %93

68:                                               ; preds = %34
  %69 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %70 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %73 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @gpio_set_value_cansleep(i32 %71, i32 %79)
  %81 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %82 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %85 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @gpio_set_value_cansleep(i32 %83, i32 %91)
  br label %93

93:                                               ; preds = %68, %43
  %94 = load %struct.ns2_led_data*, %struct.ns2_led_data** %3, align 8
  %95 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %94, i32 0, i32 1
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @write_unlock_irqrestore(i32* %95, i64 %96)
  br label %98

98:                                               ; preds = %93, %33
  ret void
}

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
