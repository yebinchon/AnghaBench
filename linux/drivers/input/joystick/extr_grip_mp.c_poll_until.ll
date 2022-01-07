; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_poll_until.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_poll_until.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"gameport timed out after %d microseconds.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.gameport*, i32*)* @poll_until to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_until(i32 %0, i32 %1, i32 %2, %struct.gameport* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gameport*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.gameport* %3, %struct.gameport** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.gameport*, %struct.gameport** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @gameport_time(%struct.gameport* %14, i32 %15)
  store i32 %16, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %41, %5
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load %struct.gameport*, %struct.gameport** %10, align 8
  %23 = call i32 @gameport_read(%struct.gameport* %22)
  %24 = load i32*, i32** %11, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %21
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* %6, align 4
  br label %47

40:                                               ; preds = %31, %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  br label %17

44:                                               ; preds = %17
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @gameport_time(%struct.gameport*, i32) #1

declare dso_local i32 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @dbg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
