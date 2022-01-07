; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@smcreg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@INIT_TIMEOUT_MSECS = common dso_local global i32 0, align 4
@MOTION_SENSOR_KEY = common dso_local global i32 0, align 4
@INIT_WAIT_MSECS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"failed to init the device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @applesmc_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applesmc_device_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smcreg, i32 0, i32 0), align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %41

6:                                                ; preds = %0
  %7 = load i32, i32* @INIT_TIMEOUT_MSECS, align 4
  store i32 %7, i32* %1, align 4
  br label %8

8:                                                ; preds = %33, %6
  %9 = load i32, i32* %1, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %8
  %12 = load i32, i32* @MOTION_SENSOR_KEY, align 4
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %14 = call i32 @applesmc_read_key(i32 %12, i32* %13, i32 2)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  br label %41

25:                                               ; preds = %20, %11
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 224, i32* %26, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* @MOTION_SENSOR_KEY, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %30 = call i32 @applesmc_write_key(i32 %28, i32* %29, i32 2)
  %31 = load i64, i64* @INIT_WAIT_MSECS, align 8
  %32 = call i32 @msleep(i64 %31)
  br label %33

33:                                               ; preds = %25
  %34 = load i64, i64* @INIT_WAIT_MSECS, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %1, align 4
  br label %8

39:                                               ; preds = %8
  %40 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %24, %5
  ret void
}

declare dso_local i32 @applesmc_read_key(i32, i32*, i32) #1

declare dso_local i32 @applesmc_write_key(i32, i32*, i32) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
