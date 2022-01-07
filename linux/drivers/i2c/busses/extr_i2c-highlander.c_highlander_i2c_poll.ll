; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.highlander_i2c_dev = type { i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@iic_timeout = common dso_local global i32 0, align 4
@SMCR = common dso_local global i64 0, align 8
@SMCR_IRIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"polling timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.highlander_i2c_dev*)* @highlander_i2c_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @highlander_i2c_poll(%struct.highlander_i2c_dev* %0) #0 {
  %2 = alloca %struct.highlander_i2c_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.highlander_i2c_dev* %0, %struct.highlander_i2c_dev** %2, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i32, i32* @iic_timeout, align 4
  %7 = call i64 @msecs_to_jiffies(i32 %6)
  %8 = add i64 %5, %7
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %27, %1
  %10 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %2, align 8
  %11 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SMCR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @ioread16(i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SMCR_IRIC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %35

21:                                               ; preds = %9
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @time_after(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %30

27:                                               ; preds = %21
  %28 = call i32 (...) @cpu_relax()
  %29 = call i32 (...) @cond_resched()
  br label %9

30:                                               ; preds = %26
  %31 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %2, align 8
  %32 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %20
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
