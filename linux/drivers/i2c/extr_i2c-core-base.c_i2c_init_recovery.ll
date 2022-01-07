; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_init_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_init_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.i2c_bus_recovery_info*, i32 }
%struct.i2c_bus_recovery_info = type { i64, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"no recover_bus() found\00", align 1
@i2c_generic_scl_recovery = common dso_local global i64 0, align 8
@get_scl_gpio_value = common dso_local global i32 0, align 4
@set_scl_gpio_value = common dso_local global i32 0, align 4
@get_sda_gpio_value = common dso_local global i32 0, align 4
@set_sda_gpio_value = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"no {get|set}_scl() found\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"either get_sda() or set_sda() needed\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Not using recovery: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*)* @i2c_init_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_init_recovery(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.i2c_bus_recovery_info*, align 8
  %4 = alloca i8*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %5, i32 0, i32 0
  %7 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %6, align 8
  store %struct.i2c_bus_recovery_info* %7, %struct.i2c_bus_recovery_info** %3, align 8
  %8 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %9 = icmp ne %struct.i2c_bus_recovery_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %91

11:                                               ; preds = %1
  %12 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %13 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %84

17:                                               ; preds = %11
  %18 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %19 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %17
  %23 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %24 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @i2c_generic_scl_recovery, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = load i32, i32* @get_scl_gpio_value, align 4
  %30 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @set_scl_gpio_value, align 4
  %33 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %34 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %36 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %28
  %40 = load i32, i32* @get_sda_gpio_value, align 4
  %41 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %42 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %44 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @gpiod_get_direction(i64 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i32, i32* @set_sda_gpio_value, align 4
  %50 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %51 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %39
  br label %53

53:                                               ; preds = %52, %28
  br label %91

54:                                               ; preds = %22, %17
  %55 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %56 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @i2c_generic_scl_recovery, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %54
  %61 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %62 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %67 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65, %60
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %84

71:                                               ; preds = %65
  %72 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %73 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %78 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %84

82:                                               ; preds = %76, %71
  br label %83

83:                                               ; preds = %82, %54
  br label %91

84:                                               ; preds = %81, %70, %16
  %85 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %85, i32 0, i32 1
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  %89 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %89, i32 0, i32 0
  store %struct.i2c_bus_recovery_info* null, %struct.i2c_bus_recovery_info** %90, align 8
  br label %91

91:                                               ; preds = %84, %83, %53, %10
  ret void
}

declare dso_local i64 @gpiod_get_direction(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
