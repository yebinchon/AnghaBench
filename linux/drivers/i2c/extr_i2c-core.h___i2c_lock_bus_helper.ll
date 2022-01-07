; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core.h___i2c_lock_bus_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core.h___i2c_lock_bus_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"No atomic I2C transfer handler for '%s'\0A\00", align 1
@I2C_LOCK_SEGMENT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @__i2c_lock_bus_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__i2c_lock_bus_helper(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i64 (...) @i2c_in_atomic_xfer_mode()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %38

6:                                                ; preds = %1
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %6
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %13, %6
  %22 = phi i1 [ false, %6 ], [ %20, %13 ]
  %23 = zext i1 %22 to i32
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %24, i32 0, i32 0
  %26 = call i32 @dev_name(i32* %25)
  %27 = call i32 @WARN(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %29 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %30 = call i64 @i2c_trylock_bus(%struct.i2c_adapter* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %36

33:                                               ; preds = %21
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  br label %36

36:                                               ; preds = %33, %32
  %37 = phi i32 [ 0, %32 ], [ %35, %33 ]
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %1
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %40 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %41 = call i32 @i2c_lock_bus(%struct.i2c_adapter* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %36
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @i2c_in_atomic_xfer_mode(...) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @i2c_trylock_bus(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_lock_bus(%struct.i2c_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
