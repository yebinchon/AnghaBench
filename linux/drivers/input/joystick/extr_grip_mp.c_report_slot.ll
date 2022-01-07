; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_report_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_report_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grip_mp = type { %struct.grip_port** }
%struct.grip_port = type { i32, i64, i32, i32, i32 }

@grip_btn_gp = common dso_local global i32* null, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grip_mp*, i32)* @report_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_slot(%struct.grip_mp* %0, i32 %1) #0 {
  %3 = alloca %struct.grip_mp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.grip_port*, align 8
  %6 = alloca i32, align 4
  store %struct.grip_mp* %0, %struct.grip_mp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.grip_mp*, %struct.grip_mp** %3, align 8
  %8 = getelementptr inbounds %struct.grip_mp, %struct.grip_mp* %7, i32 0, i32 0
  %9 = load %struct.grip_port**, %struct.grip_port*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.grip_port*, %struct.grip_port** %9, i64 %11
  %13 = load %struct.grip_port*, %struct.grip_port** %12, align 8
  store %struct.grip_port* %13, %struct.grip_port** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %33, %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = load %struct.grip_port*, %struct.grip_port** %5, align 8
  %19 = getelementptr inbounds %struct.grip_port, %struct.grip_port* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32*, i32** @grip_btn_gp, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.grip_port*, %struct.grip_port** %5, align 8
  %27 = getelementptr inbounds %struct.grip_port, %struct.grip_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %28, %29
  %31 = and i32 %30, 1
  %32 = call i32 @input_report_key(i32 %20, i32 %25, i32 %31)
  br label %33

33:                                               ; preds = %17
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %14

36:                                               ; preds = %14
  %37 = load %struct.grip_port*, %struct.grip_port** %5, align 8
  %38 = getelementptr inbounds %struct.grip_port, %struct.grip_port* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ABS_X, align 4
  %41 = load %struct.grip_port*, %struct.grip_port** %5, align 8
  %42 = getelementptr inbounds %struct.grip_port, %struct.grip_port* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @input_report_abs(i32 %39, i32 %40, i32 %43)
  %45 = load %struct.grip_port*, %struct.grip_port** %5, align 8
  %46 = getelementptr inbounds %struct.grip_port, %struct.grip_port* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ABS_Y, align 4
  %49 = load %struct.grip_port*, %struct.grip_port** %5, align 8
  %50 = getelementptr inbounds %struct.grip_port, %struct.grip_port* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @input_report_abs(i32 %47, i32 %48, i32 %51)
  %53 = load %struct.grip_port*, %struct.grip_port** %5, align 8
  %54 = getelementptr inbounds %struct.grip_port, %struct.grip_port* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @input_sync(i32 %55)
  %57 = load %struct.grip_port*, %struct.grip_port** %5, align 8
  %58 = getelementptr inbounds %struct.grip_port, %struct.grip_port* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  ret void
}

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
