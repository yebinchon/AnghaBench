; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma180.c_bma180_chip_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma180.c_bma180_chip_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bma180_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"failed to disable the chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bma180_data*)* @bma180_chip_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bma180_chip_disable(%struct.bma180_data* %0) #0 {
  %2 = alloca %struct.bma180_data*, align 8
  store %struct.bma180_data* %0, %struct.bma180_data** %2, align 8
  %3 = load %struct.bma180_data*, %struct.bma180_data** %2, align 8
  %4 = call i64 @bma180_set_new_data_intr_state(%struct.bma180_data* %3, i32 0)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %18

7:                                                ; preds = %1
  %8 = load %struct.bma180_data*, %struct.bma180_data** %2, align 8
  %9 = call i64 @bma180_set_ee_writing_state(%struct.bma180_data* %8, i32 0)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %18

12:                                               ; preds = %7
  %13 = load %struct.bma180_data*, %struct.bma180_data** %2, align 8
  %14 = call i64 @bma180_set_sleep_state(%struct.bma180_data* %13, i32 1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %18

17:                                               ; preds = %12
  br label %24

18:                                               ; preds = %16, %11, %6
  %19 = load %struct.bma180_data*, %struct.bma180_data** %2, align 8
  %20 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %18, %17
  ret void
}

declare dso_local i64 @bma180_set_new_data_intr_state(%struct.bma180_data*, i32) #1

declare dso_local i64 @bma180_set_ee_writing_state(%struct.bma180_data*, i32) #1

declare dso_local i64 @bma180_set_sleep_state(%struct.bma180_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
