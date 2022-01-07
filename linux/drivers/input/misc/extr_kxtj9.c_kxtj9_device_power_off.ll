; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_device_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_device_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kxtj9_data = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 (...)* }
%struct.TYPE_4__ = type { i32 }

@PC1_OFF = common dso_local global i32 0, align 4
@CTRL_REG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"soft power off failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kxtj9_data*)* @kxtj9_device_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kxtj9_device_power_off(%struct.kxtj9_data* %0) #0 {
  %2 = alloca %struct.kxtj9_data*, align 8
  %3 = alloca i32, align 4
  store %struct.kxtj9_data* %0, %struct.kxtj9_data** %2, align 8
  %4 = load i32, i32* @PC1_OFF, align 4
  %5 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %6 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, %4
  store i32 %8, i32* %6, align 8
  %9 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %10 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load i32, i32* @CTRL_REG1, align 4
  %13 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %14 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_4__* %11, i32 %12, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %21 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %27 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (...)*, i32 (...)** %28, align 8
  %30 = icmp ne i32 (...)* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %33 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (...)*, i32 (...)** %34, align 8
  %36 = call i32 (...) %35()
  br label %37

37:                                               ; preds = %31, %25
  ret void
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
