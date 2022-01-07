; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_configure_objects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_configure_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to initialize power cfg\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error %d updating config\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"No touch object detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*, %struct.firmware*)* @mxt_configure_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_configure_objects(%struct.mxt_data* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxt_data*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %8 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %9 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %13 = call i32 @mxt_init_t7_power_cfg(%struct.mxt_data* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %53

20:                                               ; preds = %2
  %21 = load %struct.firmware*, %struct.firmware** %5, align 8
  %22 = icmp ne %struct.firmware* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %25 = load %struct.firmware*, %struct.firmware** %5, align 8
  %26 = call i32 @mxt_update_cfg(%struct.mxt_data* %24, %struct.firmware* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %23
  br label %34

34:                                               ; preds = %33, %20
  %35 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %36 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %41 = call i32 @mxt_initialize_input_device(%struct.mxt_data* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %53

46:                                               ; preds = %39
  br label %50

47:                                               ; preds = %34
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %46
  %51 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %52 = call i32 @mxt_debug_init(%struct.mxt_data* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %44, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @mxt_init_t7_power_cfg(%struct.mxt_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mxt_update_cfg(%struct.mxt_data*, %struct.firmware*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @mxt_initialize_input_device(%struct.mxt_data*) #1

declare dso_local i32 @mxt_debug_init(%struct.mxt_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
