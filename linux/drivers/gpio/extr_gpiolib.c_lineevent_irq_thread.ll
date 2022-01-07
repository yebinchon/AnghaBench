; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_lineevent_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_lineevent_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lineevent_state = type { i32, i32, i32, i32, i64 }
%struct.gpioevent_data = type { i8*, i64 }

@GPIOEVENT_REQUEST_RISING_EDGE = common dso_local global i32 0, align 4
@GPIOEVENT_REQUEST_FALLING_EDGE = common dso_local global i32 0, align 4
@GPIOEVENT_EVENT_RISING_EDGE = common dso_local global i8* null, align 8
@GPIOEVENT_EVENT_FALLING_EDGE = common dso_local global i8* null, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lineevent_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lineevent_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lineevent_state*, align 8
  %7 = alloca %struct.gpioevent_data, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.lineevent_state*
  store %struct.lineevent_state* %11, %struct.lineevent_state** %6, align 8
  %12 = call i32 @memset(%struct.gpioevent_data* %7, i32 0, i32 16)
  %13 = load %struct.lineevent_state*, %struct.lineevent_state** %6, align 8
  %14 = getelementptr inbounds %struct.lineevent_state, %struct.lineevent_state* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = call i64 (...) @ktime_get_real_ns()
  %19 = getelementptr inbounds %struct.gpioevent_data, %struct.gpioevent_data* %7, i32 0, i32 1
  store i64 %18, i64* %19, align 8
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.lineevent_state*, %struct.lineevent_state** %6, align 8
  %22 = getelementptr inbounds %struct.lineevent_state, %struct.lineevent_state* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.gpioevent_data, %struct.gpioevent_data* %7, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  br label %25

25:                                               ; preds = %20, %17
  %26 = load %struct.lineevent_state*, %struct.lineevent_state** %6, align 8
  %27 = getelementptr inbounds %struct.lineevent_state, %struct.lineevent_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GPIOEVENT_REQUEST_RISING_EDGE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %25
  %33 = load %struct.lineevent_state*, %struct.lineevent_state** %6, align 8
  %34 = getelementptr inbounds %struct.lineevent_state, %struct.lineevent_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @GPIOEVENT_REQUEST_FALLING_EDGE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load %struct.lineevent_state*, %struct.lineevent_state** %6, align 8
  %41 = getelementptr inbounds %struct.lineevent_state, %struct.lineevent_state* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @gpiod_get_value_cansleep(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i8*, i8** @GPIOEVENT_EVENT_RISING_EDGE, align 8
  %48 = getelementptr inbounds %struct.gpioevent_data, %struct.gpioevent_data* %7, i32 0, i32 0
  store i8* %47, i8** %48, align 8
  br label %52

49:                                               ; preds = %39
  %50 = load i8*, i8** @GPIOEVENT_EVENT_FALLING_EDGE, align 8
  %51 = getelementptr inbounds %struct.gpioevent_data, %struct.gpioevent_data* %7, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  br label %77

53:                                               ; preds = %32, %25
  %54 = load %struct.lineevent_state*, %struct.lineevent_state** %6, align 8
  %55 = getelementptr inbounds %struct.lineevent_state, %struct.lineevent_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @GPIOEVENT_REQUEST_RISING_EDGE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i8*, i8** @GPIOEVENT_EVENT_RISING_EDGE, align 8
  %62 = getelementptr inbounds %struct.gpioevent_data, %struct.gpioevent_data* %7, i32 0, i32 0
  store i8* %61, i8** %62, align 8
  br label %76

63:                                               ; preds = %53
  %64 = load %struct.lineevent_state*, %struct.lineevent_state** %6, align 8
  %65 = getelementptr inbounds %struct.lineevent_state, %struct.lineevent_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @GPIOEVENT_REQUEST_FALLING_EDGE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i8*, i8** @GPIOEVENT_EVENT_FALLING_EDGE, align 8
  %72 = getelementptr inbounds %struct.gpioevent_data, %struct.gpioevent_data* %7, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  br label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @IRQ_NONE, align 4
  store i32 %74, i32* %3, align 4
  br label %95

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %60
  br label %77

77:                                               ; preds = %76, %52
  %78 = load %struct.lineevent_state*, %struct.lineevent_state** %6, align 8
  %79 = getelementptr inbounds %struct.lineevent_state, %struct.lineevent_state* %78, i32 0, i32 2
  %80 = bitcast %struct.gpioevent_data* %7 to { i8*, i64 }*
  %81 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %80, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @kfifo_put(i32* %79, i8* %82, i64 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load %struct.lineevent_state*, %struct.lineevent_state** %6, align 8
  %90 = getelementptr inbounds %struct.lineevent_state, %struct.lineevent_state* %89, i32 0, i32 1
  %91 = load i32, i32* @EPOLLIN, align 4
  %92 = call i32 @wake_up_poll(i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %88, %77
  %94 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %73
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @memset(%struct.gpioevent_data*, i32, i32) #1

declare dso_local i64 @ktime_get_real_ns(...) #1

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @kfifo_put(i32*, i8*, i64) #1

declare dso_local i32 @wake_up_poll(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
