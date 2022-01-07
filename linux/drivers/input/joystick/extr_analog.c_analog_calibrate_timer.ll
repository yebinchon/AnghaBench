; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_analog.c_analog_calibrate_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_analog.c_analog_calibrate_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analog_port = type { i32, i32, %struct.gameport* }
%struct.gameport = type { i32 }

@use_ktime = common dso_local global i64 0, align 8
@analog_faketime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.analog_port*)* @analog_calibrate_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analog_calibrate_timer(%struct.analog_port* %0) #0 {
  %2 = alloca %struct.analog_port*, align 8
  %3 = alloca %struct.gameport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.analog_port* %0, %struct.analog_port** %2, align 8
  %11 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %12 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %11, i32 0, i32 2
  %13 = load %struct.gameport*, %struct.gameport** %12, align 8
  store %struct.gameport* %13, %struct.gameport** %3, align 8
  %14 = load i64, i64* @use_ktime, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %18 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %17, i32 0, i32 0
  store i32 1000000, i32* %18, align 8
  br label %40

19:                                               ; preds = %1
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @local_irq_save(i64 %20)
  %22 = call i32 (...) @get_time()
  store i32 %22, i32* %7, align 4
  %23 = call i32 @mdelay(i32 1)
  %24 = call i32 (...) @get_time()
  store i32 %24, i32* %8, align 4
  %25 = call i32 (...) @get_time()
  store i32 %25, i32* %9, align 4
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @local_irq_restore(i64 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @delta(i32 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i8* @delta(i32 %31, i32 %32)
  %34 = ptrtoint i8* %30 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %39 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %19, %16
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %80, %40
  %42 = load i32, i32* %4, align 4
  %43 = icmp ult i32 %42, 50
  br i1 %43, label %44, label %83

44:                                               ; preds = %41
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @local_irq_save(i64 %45)
  %47 = call i32 (...) @get_time()
  store i32 %47, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %55, %44
  %49 = load i32, i32* %5, align 4
  %50 = icmp ult i32 %49, 50
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.gameport*, %struct.gameport** %3, align 8
  %53 = call i32 @gameport_read(%struct.gameport* %52)
  %54 = call i32 (...) @get_time()
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %48

58:                                               ; preds = %48
  %59 = call i32 (...) @get_time()
  store i32 %59, i32* %9, align 4
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @local_irq_restore(i64 %60)
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @udelay(i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i8* @delta(i32 %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i8* @delta(i32 %67, i32 %68)
  %70 = ptrtoint i8* %66 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %58
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %58
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %41

83:                                               ; preds = %41
  %84 = load i32, i32* %6, align 4
  %85 = udiv i32 %84, 50
  %86 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %87 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @get_time(...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i8* @delta(i32, i32) #1

declare dso_local i32 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
