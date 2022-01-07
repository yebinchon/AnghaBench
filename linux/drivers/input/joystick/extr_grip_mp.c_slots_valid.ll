; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_slots_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_slots_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grip_mp = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@IO_GOT_PACKET = common dso_local global i32 0, align 4
@GRIP_MODE_RESET = common dso_local global i64 0, align 8
@GRIP_MODE_NONE = common dso_local global i64 0, align 8
@IO_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grip_mp*)* @slots_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slots_valid(%struct.grip_mp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.grip_mp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.grip_mp* %0, %struct.grip_mp** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.grip_mp*, %struct.grip_mp** %3, align 8
  %9 = call i32 @get_and_decode_packet(%struct.grip_mp* %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @IO_GOT_PACKET, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %46, %15
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = load %struct.grip_mp*, %struct.grip_mp** %3, align 8
  %21 = getelementptr inbounds %struct.grip_mp, %struct.grip_mp* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @GRIP_MODE_RESET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %19
  %33 = load %struct.grip_mp*, %struct.grip_mp** %3, align 8
  %34 = getelementptr inbounds %struct.grip_mp, %struct.grip_mp* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GRIP_MODE_NONE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %32
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %16

49:                                               ; preds = %16
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @IO_DONE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  store i32 %58, i32* %2, align 4
  br label %64

59:                                               ; preds = %49
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 0, i32 1
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %52, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @get_and_decode_packet(%struct.grip_mp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
