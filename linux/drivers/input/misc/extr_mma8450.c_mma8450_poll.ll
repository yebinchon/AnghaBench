; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_mma8450.c_mma8450_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_mma8450.c_mma8450_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { i32, %struct.mma8450* }
%struct.mma8450 = type { i32 }

@MMA8450_STATUS = common dso_local global i32 0, align 4
@MMA8450_STATUS_ZXYDR = common dso_local global i32 0, align 4
@MMA8450_OUT_X_LSB = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @mma8450_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mma8450_poll(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.mma8450*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %9 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %10 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %9, i32 0, i32 1
  %11 = load %struct.mma8450*, %struct.mma8450** %10, align 8
  store %struct.mma8450* %11, %struct.mma8450** %3, align 8
  %12 = load %struct.mma8450*, %struct.mma8450** %3, align 8
  %13 = load i32, i32* @MMA8450_STATUS, align 4
  %14 = call i32 @mma8450_read(%struct.mma8450* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %82

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MMA8450_STATUS_ZXYDR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %82

24:                                               ; preds = %18
  %25 = load %struct.mma8450*, %struct.mma8450** %3, align 8
  %26 = load i32, i32* @MMA8450_OUT_X_LSB, align 4
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %28 = call i32 @mma8450_read_block(%struct.mma8450* %25, i32 %26, i32* %27, i32 24)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %82

32:                                               ; preds = %24
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %36, 4
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = and i32 %39, 15
  %41 = or i32 %37, %40
  store i32 %41, i32* %4, align 4
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = trunc i64 %44 to i32
  %46 = shl i32 %45, 4
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 2
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 15
  %50 = or i32 %46, %49
  store i32 %50, i32* %5, align 4
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 5
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = trunc i64 %53 to i32
  %55 = shl i32 %54, 4
  %56 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 4
  %57 = load i32, i32* %56, align 16
  %58 = and i32 %57, 15
  %59 = or i32 %55, %58
  store i32 %59, i32* %6, align 4
  %60 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %61 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ABS_X, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @input_report_abs(i32 %62, i32 %63, i32 %64)
  %66 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %67 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ABS_Y, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @input_report_abs(i32 %68, i32 %69, i32 %70)
  %72 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %73 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ABS_Z, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @input_report_abs(i32 %74, i32 %75, i32 %76)
  %78 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %79 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @input_sync(i32 %80)
  br label %82

82:                                               ; preds = %32, %31, %23, %17
  ret void
}

declare dso_local i32 @mma8450_read(%struct.mma8450*, i32) #1

declare dso_local i32 @mma8450_read_block(%struct.mma8450*, i32, i32*, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
