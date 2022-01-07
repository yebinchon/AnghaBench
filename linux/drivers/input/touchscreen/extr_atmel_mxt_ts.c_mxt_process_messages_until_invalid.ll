; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_process_messages_until_invalid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_process_messages_until_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"CHG pin isn't cleared\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*)* @mxt_process_messages_until_invalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_process_messages_until_invalid(%struct.mxt_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxt_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %3, align 8
  %8 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %9 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  store i32 2, i32* %7, align 4
  %12 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %13 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %24, %1
  %16 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @mxt_read_and_process_messages(%struct.mxt_data* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %43

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %15, label %28

28:                                               ; preds = %24
  %29 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %30 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %35 = call i32 @mxt_input_sync(%struct.mxt_data* %34)
  %36 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %37 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %22
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @mxt_read_and_process_messages(%struct.mxt_data*, i32) #1

declare dso_local i32 @mxt_input_sync(%struct.mxt_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
