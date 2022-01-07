; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_sparcspkr.c_grover_spkr_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_sparcspkr.c_grover_spkr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sparcspkr_state = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.grover_beep_info }
%struct.grover_beep_info = type { i64, i64 }

@EV_SND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @grover_spkr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grover_spkr_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sparcspkr_state*, align 8
  %11 = alloca %struct.grover_beep_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %15 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.sparcspkr_state* @dev_get_drvdata(i32 %17)
  store %struct.sparcspkr_state* %18, %struct.sparcspkr_state** %10, align 8
  %19 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %10, align 8
  %20 = getelementptr inbounds %struct.sparcspkr_state, %struct.sparcspkr_state* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.grover_beep_info* %21, %struct.grover_beep_info** %11, align 8
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @EV_SND, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %96

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %34 [
    i32 129, label %28
    i32 128, label %33
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1000, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %28
  br label %33

33:                                               ; preds = %26, %32
  br label %35

34:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %96

35:                                               ; preds = %33
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 20
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 32767
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = sdiv i32 1193182, %42
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %41, %38, %35
  %45 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %10, align 8
  %46 = getelementptr inbounds %struct.sparcspkr_state, %struct.sparcspkr_state* %45, i32 0, i32 0
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %44
  %52 = load %struct.grover_beep_info*, %struct.grover_beep_info** %11, align 8
  %53 = getelementptr inbounds %struct.grover_beep_info, %struct.grover_beep_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @sbus_readb(i64 %54)
  %56 = or i32 %55, 3
  %57 = load %struct.grover_beep_info*, %struct.grover_beep_info** %11, align 8
  %58 = getelementptr inbounds %struct.grover_beep_info, %struct.grover_beep_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @sbus_writeb(i32 %56, i64 %59)
  %61 = load %struct.grover_beep_info*, %struct.grover_beep_info** %11, align 8
  %62 = getelementptr inbounds %struct.grover_beep_info, %struct.grover_beep_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  %65 = call i32 @sbus_writeb(i32 182, i64 %64)
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %66, 255
  %68 = load %struct.grover_beep_info*, %struct.grover_beep_info** %11, align 8
  %69 = getelementptr inbounds %struct.grover_beep_info, %struct.grover_beep_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 0
  %72 = call i32 @sbus_writeb(i32 %67, i64 %71)
  %73 = load i32, i32* %12, align 4
  %74 = lshr i32 %73, 8
  %75 = and i32 %74, 255
  %76 = load %struct.grover_beep_info*, %struct.grover_beep_info** %11, align 8
  %77 = getelementptr inbounds %struct.grover_beep_info, %struct.grover_beep_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 0
  %80 = call i32 @sbus_writeb(i32 %75, i64 %79)
  br label %91

81:                                               ; preds = %44
  %82 = load %struct.grover_beep_info*, %struct.grover_beep_info** %11, align 8
  %83 = getelementptr inbounds %struct.grover_beep_info, %struct.grover_beep_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @sbus_readb(i64 %84)
  %86 = and i32 %85, 252
  %87 = load %struct.grover_beep_info*, %struct.grover_beep_info** %11, align 8
  %88 = getelementptr inbounds %struct.grover_beep_info, %struct.grover_beep_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @sbus_writeb(i32 %86, i64 %89)
  br label %91

91:                                               ; preds = %81, %51
  %92 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %10, align 8
  %93 = getelementptr inbounds %struct.sparcspkr_state, %struct.sparcspkr_state* %92, i32 0, i32 0
  %94 = load i64, i64* %13, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %91, %34, %25
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.sparcspkr_state* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sbus_writeb(i32, i64) #1

declare dso_local i32 @sbus_readb(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
