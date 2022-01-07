; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stu300.c_stu300_await_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stu300.c_stu300_await_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stu300_dev = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@STU300_ERROR_NONE = common dso_local global i32 0, align 4
@STU300_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"wait_for_completion_interruptible_timeout()returned %d waiting for event %04x\0A\00", align 1
@STU300_EVENT_6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"controller timed out waiting for event %d, reinit hardware\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"controller error (await_event) %d waiting for event %d, reinit hardware\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stu300_dev*, i32)* @stu300_await_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stu300_await_event(%struct.stu300_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stu300_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stu300_dev* %0, %struct.stu300_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %8 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %7, i32 0, i32 4
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load i32, i32* @STU300_ERROR_NONE, align 4
  %11 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %12 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %15 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %17 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %16, i32 0, i32 3
  %18 = call i32 @init_completion(i32* %17)
  %19 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %20 = call i32 @stu300_irq_enable(%struct.stu300_dev* %19)
  %21 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %22 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %21, i32 0, i32 4
  %23 = call i32 @spin_unlock_irq(i32* %22)
  %24 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %25 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %24, i32 0, i32 3
  %26 = load i32, i32* @STU300_TIMEOUT, align 4
  %27 = call i32 @wait_for_completion_interruptible_timeout(i32* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %32 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %84

39:                                               ; preds = %2
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @STU300_EVENT_6, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %48 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %54 = call i32 @stu300_init_hw(%struct.stu300_dev* %53)
  br label %55

55:                                               ; preds = %46, %42
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %84

58:                                               ; preds = %39
  %59 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %60 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @STU300_ERROR_NONE, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %58
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @STU300_EVENT_6, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %70 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %74 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %72, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %79 = call i32 @stu300_init_hw(%struct.stu300_dev* %78)
  br label %80

80:                                               ; preds = %68, %64
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %80, %55, %30
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @stu300_irq_enable(%struct.stu300_dev*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @stu300_init_hw(%struct.stu300_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
