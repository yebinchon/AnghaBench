; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kxtj9_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WHO_AM_I = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"read err int source\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kxtj9_data*)* @kxtj9_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxtj9_verify(%struct.kxtj9_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kxtj9_data*, align 8
  %4 = alloca i32, align 4
  store %struct.kxtj9_data* %0, %struct.kxtj9_data** %3, align 8
  %5 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %6 = call i32 @kxtj9_device_power_on(%struct.kxtj9_data* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %13 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* @WHO_AM_I, align 4
  %16 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %21 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %37

25:                                               ; preds = %11
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 7
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 8
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  br label %35

34:                                               ; preds = %28, %25
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ %33, %31 ], [ 0, %34 ]
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %19
  %38 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %39 = call i32 @kxtj9_device_power_off(%struct.kxtj9_data* %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @kxtj9_device_power_on(%struct.kxtj9_data*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kxtj9_device_power_off(%struct.kxtj9_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
