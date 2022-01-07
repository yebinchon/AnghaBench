; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_gameport_measure_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_gameport_measure_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }

@GAMEPORT_MODE_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*)* @gameport_measure_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gameport_measure_speed(%struct.gameport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gameport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.gameport* %0, %struct.gameport** %3, align 8
  %11 = load %struct.gameport*, %struct.gameport** %3, align 8
  %12 = load i32, i32* @GAMEPORT_MODE_RAW, align 4
  %13 = call i64 @gameport_open(%struct.gameport* %11, i32* null, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

16:                                               ; preds = %1
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %54, %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp ult i32 %18, 50
  br i1 %19, label %20, label %57

20:                                               ; preds = %17
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @local_irq_save(i64 %21)
  %23 = call i32 (...) @ktime_get_ns()
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %30, %20
  %25 = load i32, i32* %5, align 4
  %26 = icmp ult i32 %25, 50
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.gameport*, %struct.gameport** %3, align 8
  %29 = call i32 @gameport_read(%struct.gameport* %28)
  br label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %24

33:                                               ; preds = %24
  %34 = call i32 (...) @ktime_get_ns()
  store i32 %34, i32* %8, align 4
  %35 = call i32 (...) @ktime_get_ns()
  store i32 %35, i32* %9, align 4
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @local_irq_restore(i64 %36)
  %38 = load i32, i32* %4, align 4
  %39 = mul i32 %38, 10
  %40 = call i32 @udelay(i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sub i32 %44, %45
  %47 = sub i32 %43, %46
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %33
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %33
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %17

57:                                               ; preds = %17
  %58 = load %struct.gameport*, %struct.gameport** %3, align 8
  %59 = call i32 @gameport_close(%struct.gameport* %58)
  store i32 50000000, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %5, align 4
  %65 = udiv i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %15
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @gameport_open(%struct.gameport*, i32*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gameport_close(%struct.gameport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
