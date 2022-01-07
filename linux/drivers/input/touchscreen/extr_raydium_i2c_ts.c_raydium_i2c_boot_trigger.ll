; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_boot_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_boot_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }

@raydium_i2c_boot_trigger.cmd = internal constant [7 x [6 x %struct.TYPE_3__]] [[6 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 8, i32 12, i32 9, i32 0, i32 80, i32 215 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [6 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 8, i32 4, i32 9, i32 0, i32 80, i32 165 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [6 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 8, i32 4, i32 9, i32 0, i32 80, i32 0 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [6 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 8, i32 4, i32 9, i32 0, i32 80, i32 165 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [6 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 8, i32 12, i32 9, i32 0, i32 80, i32 0 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [6 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 6, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer], [6 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 2, i32 162, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ zeroinitializer]], align 16
@RAYDIUM_WAIT_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"boot trigger failed at step %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @raydium_i2c_boot_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raydium_i2c_boot_trigger(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 7
  br i1 %8, label %9, label %30

9:                                                ; preds = %6
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [7 x [6 x %struct.TYPE_3__]], [7 x [6 x %struct.TYPE_3__]]* @raydium_i2c_boot_trigger.cmd, i64 0, i64 %12
  %14 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %13, i64 0, i64 0
  %15 = load i32, i32* @RAYDIUM_WAIT_READY, align 4
  %16 = call i32 @raydium_i2c_write_object(%struct.i2c_client* %10, %struct.TYPE_3__* %14, i32 144, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %9
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %31

26:                                               ; preds = %9
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %6

30:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @raydium_i2c_write_object(%struct.i2c_client*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
