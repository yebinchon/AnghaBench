; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_sequence_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_sequence_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_msg = type { i64, i64 }

@SEQ_LEN = common dso_local global i32 0, align 4
@FIFO_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_msg*, i32)* @axxia_i2c_sequence_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axxia_i2c_sequence_ok(%struct.i2c_msg* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_msg*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_msg* %0, %struct.i2c_msg** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SEQ_LEN, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %47

8:                                                ; preds = %2
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i64 0
  %11 = call i64 @i2c_m_rd(%struct.i2c_msg* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %8
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i64 1
  %16 = call i64 @i2c_m_rd(%struct.i2c_msg* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %13
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i64 0
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %18
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i64 0
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FIFO_SIZE, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i64 1
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i64 0
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i64 1
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %41, %45
  br label %47

47:                                               ; preds = %37, %31, %24, %18, %13, %8, %2
  %48 = phi i1 [ false, %31 ], [ false, %24 ], [ false, %18 ], [ false, %13 ], [ false, %8 ], [ false, %2 ], [ %46, %37 ]
  %49 = zext i1 %48 to i32
  ret i32 %49
}

declare dso_local i64 @i2c_m_rd(%struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
