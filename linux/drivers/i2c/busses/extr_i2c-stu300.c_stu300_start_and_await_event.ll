; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stu300.c_stu300_start_and_await_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stu300.c_stu300_start_and_await_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stu300_dev = type { i32, i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@STU300_ERROR_NONE = common dso_local global i32 0, align 4
@I2C_CR_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@I2C_CR = common dso_local global i64 0, align 8
@STU300_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"wait_for_completion_interruptible_timeout() returned %d waiting for event %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"controller timed out waiting for event %d, reinit hardware\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"controller (start) error %d waiting for event %d, reinit hardware\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stu300_dev*, i32, i32)* @stu300_start_and_await_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stu300_start_and_await_event(%struct.stu300_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stu300_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stu300_dev* %0, %struct.stu300_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %10 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %9, i32 0, i32 5
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %13 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %12, i32 0, i32 3
  %14 = call i32 @init_completion(i32* %13)
  %15 = load i32, i32* @STU300_ERROR_NONE, align 4
  %16 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %17 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %20 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %22 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %21, i32 0, i32 5
  %23 = call i32 @spin_unlock_irq(i32* %22)
  %24 = load i32, i32* @I2C_CR_INTERRUPT_ENABLE, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %29 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @I2C_CR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @stu300_wr8(i32 %27, i64 %32)
  %34 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %35 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %34, i32 0, i32 3
  %36 = load i32, i32* @STU300_TIMEOUT, align 4
  %37 = call i32 @wait_for_completion_interruptible_timeout(i32* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %3
  %41 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %42 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %84

49:                                               ; preds = %3
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %54 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %60 = call i32 @stu300_init_hw(%struct.stu300_dev* %59)
  %61 = load i32, i32* @ETIMEDOUT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %84

63:                                               ; preds = %49
  %64 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %65 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @STU300_ERROR_NONE, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %63
  %70 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %71 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %75 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %80 = call i32 @stu300_init_hw(%struct.stu300_dev* %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %84

83:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %69, %52, %40
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @stu300_wr8(i32, i64) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @stu300_init_hw(%struct.stu300_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
