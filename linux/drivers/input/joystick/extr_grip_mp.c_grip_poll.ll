; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_grip_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_grip_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.grip_mp = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@IO_RETRY = common dso_local global i32 0, align 4
@IO_GOT_PACKET = common dso_local global i32 0, align 4
@IO_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @grip_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grip_poll(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca %struct.grip_mp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %7 = load %struct.gameport*, %struct.gameport** %2, align 8
  %8 = call %struct.grip_mp* @gameport_get_drvdata(%struct.gameport* %7)
  store %struct.grip_mp* %8, %struct.grip_mp** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %42, %1
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  %13 = load i32, i32* @IO_RETRY, align 4
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %32, %12
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 32
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load %struct.grip_mp*, %struct.grip_mp** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @get_and_decode_packet(%struct.grip_mp* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @IO_GOT_PACKET, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @IO_RETRY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %17
  br label %35

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %14

35:                                               ; preds = %30, %14
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @IO_DONE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %45

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %9

45:                                               ; preds = %40, %9
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %65, %45
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load %struct.grip_mp*, %struct.grip_mp** %3, align 8
  %51 = getelementptr inbounds %struct.grip_mp, %struct.grip_mp* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %52, i64 %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load %struct.grip_mp*, %struct.grip_mp** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @report_slot(%struct.grip_mp* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %49
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %46

68:                                               ; preds = %46
  ret void
}

declare dso_local %struct.grip_mp* @gameport_get_drvdata(%struct.gameport*) #1

declare dso_local i32 @get_and_decode_packet(%struct.grip_mp*, i32) #1

declare dso_local i32 @report_slot(%struct.grip_mp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
