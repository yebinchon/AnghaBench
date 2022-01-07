; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_wait_for_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_wait_for_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i32, i64, i64, i32, i32 }
%struct.i2c_msg = type { i32 }

@QUP_SW_RESET = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@QUP_I2C_NACK_FLAG = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qup_i2c_dev*, %struct.i2c_msg*)* @qup_i2c_wait_for_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qup_i2c_wait_for_complete(%struct.qup_i2c_dev* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.qup_i2c_dev*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %8 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %7, i32 0, i32 4
  %9 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %10 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @wait_for_completion_timeout(i32* %8, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %17 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @QUP_SW_RESET, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 1, i64 %20)
  %22 = load i32, i32* @ETIMEDOUT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %15, %2
  %25 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %26 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %31 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29, %24
  %35 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %36 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @QUP_I2C_NACK_FLAG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  br label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i32 [ %43, %41 ], [ %46, %44 ]
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %29
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
