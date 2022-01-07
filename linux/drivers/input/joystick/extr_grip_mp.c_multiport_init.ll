; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_multiport_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_multiport_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grip_mp = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"multiport_init(): digital mode activated.\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"multiport_init(): unable to activate digital mode.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"multiport_init(): initialized == %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grip_mp*)* @multiport_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiport_init(%struct.grip_mp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.grip_mp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.grip_mp* %0, %struct.grip_mp** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.grip_mp*, %struct.grip_mp** %3, align 8
  %9 = getelementptr inbounds %struct.grip_mp, %struct.grip_mp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dig_mode_start(i32 %10, i32* %7)
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %20, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i1 [ false, %12 ], [ %17, %15 ]
  br i1 %19, label %20, label %27

20:                                               ; preds = %18
  %21 = load %struct.grip_mp*, %struct.grip_mp** %3, align 8
  %22 = getelementptr inbounds %struct.grip_mp, %struct.grip_mp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dig_mode_start(i32 %23, i32* %7)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %12

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %34

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %51

34:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %44, %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 4096
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.grip_mp*, %struct.grip_mp** %3, align 8
  %40 = call i64 @slots_valid(%struct.grip_mp* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %5, align 4
  br label %47

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %35

47:                                               ; preds = %42, %35
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %32
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @dig_mode_start(i32, i32*) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i64 @slots_valid(%struct.grip_mp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
