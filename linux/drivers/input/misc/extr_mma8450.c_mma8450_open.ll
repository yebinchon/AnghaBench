; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_mma8450.c_mma8450_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_mma8450.c_mma8450_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.mma8450* }
%struct.mma8450 = type { i32 }

@MMA8450_XYZ_DATA_CFG = common dso_local global i32 0, align 4
@MMA8450_CTRL_REG1 = common dso_local global i32 0, align 4
@MODE_CHANGE_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @mma8450_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mma8450_open(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.mma8450*, align 8
  %4 = alloca i32, align 4
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %5 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %6 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %5, i32 0, i32 0
  %7 = load %struct.mma8450*, %struct.mma8450** %6, align 8
  store %struct.mma8450* %7, %struct.mma8450** %3, align 8
  %8 = load %struct.mma8450*, %struct.mma8450** %3, align 8
  %9 = load i32, i32* @MMA8450_XYZ_DATA_CFG, align 4
  %10 = call i32 @mma8450_write(%struct.mma8450* %8, i32 %9, i32 7)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.mma8450*, %struct.mma8450** %3, align 8
  %16 = load i32, i32* @MMA8450_CTRL_REG1, align 4
  %17 = call i32 @mma8450_write(%struct.mma8450* %15, i32 %16, i32 1)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @MODE_CHANGE_DELAY_MS, align 4
  %23 = call i32 @msleep(i32 %22)
  br label %24

24:                                               ; preds = %21, %20, %13
  ret void
}

declare dso_local i32 @mma8450_write(%struct.mma8450*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
