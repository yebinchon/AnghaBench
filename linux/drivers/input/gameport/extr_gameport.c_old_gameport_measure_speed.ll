; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_old_gameport_measure_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_old_gameport_measure_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gameport = type { i32 }

@GAMEPORT_MODE_RAW = common dso_local global i32 0, align 4
@cpu_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*)* @old_gameport_measure_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @old_gameport_measure_speed(%struct.gameport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gameport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.gameport* %0, %struct.gameport** %3, align 8
  %10 = load %struct.gameport*, %struct.gameport** %3, align 8
  %11 = load i32, i32* @GAMEPORT_MODE_RAW, align 4
  %12 = call i64 @gameport_open(%struct.gameport* %10, i32* null, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

15:                                               ; preds = %1
  store i64 1073741824, i64* %6, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %49, %15
  %17 = load i32, i32* %4, align 4
  %18 = icmp ult i32 %17, 50
  br i1 %18, label %19, label %52

19:                                               ; preds = %16
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @local_irq_save(i64 %20)
  %22 = call i64 (...) @rdtsc()
  store i64 %22, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %29, %19
  %24 = load i32, i32* %5, align 4
  %25 = icmp ult i32 %24, 50
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.gameport*, %struct.gameport** %3, align 8
  %28 = call i32 @gameport_read(%struct.gameport* %27)
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %23

32:                                               ; preds = %23
  %33 = call i64 (...) @rdtsc()
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @local_irq_restore(i64 %34)
  %36 = load i32, i32* %4, align 4
  %37 = mul i32 %36, 10
  %38 = call i32 @udelay(i32 %37)
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %39, %40
  %42 = load i64, i64* %6, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %45, %46
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %44, %32
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %16

52:                                               ; preds = %16
  %53 = load %struct.gameport*, %struct.gameport** %3, align 8
  %54 = call i32 @gameport_close(%struct.gameport* %53)
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu_info, i32 0, i32 0), align 4
  %56 = call i64 @this_cpu_read(i32 %55)
  %57 = load i32, i32* @HZ, align 4
  %58 = zext i32 %57 to i64
  %59 = mul i64 %56, %58
  %60 = udiv i64 %59, 20
  %61 = load i64, i64* %6, align 8
  %62 = icmp ult i64 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %66

64:                                               ; preds = %52
  %65 = load i64, i64* %6, align 8
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi i64 [ 1, %63 ], [ %65, %64 ]
  %68 = udiv i64 %60, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %14
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @gameport_open(%struct.gameport*, i32*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @rdtsc(...) #1

declare dso_local i32 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gameport_close(%struct.gameport*) #1

declare dso_local i64 @this_cpu_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
