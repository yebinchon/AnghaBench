; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-kempld.c_kempld_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-kempld.c_kempld_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.kempld_i2c_data = type { i32, i64, i64, %struct.i2c_msg*, %struct.kempld_device_data* }
%struct.kempld_device_data = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@STATE_INIT = common dso_local global i64 0, align 8
@STATE_DONE = common dso_local global i64 0, align 8
@STATE_ERROR = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @kempld_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kempld_i2c_data*, align 8
  %9 = alloca %struct.kempld_device_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.kempld_i2c_data* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.kempld_i2c_data* %13, %struct.kempld_i2c_data** %8, align 8
  %14 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %8, align 8
  %15 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %14, i32 0, i32 4
  %16 = load %struct.kempld_device_data*, %struct.kempld_device_data** %15, align 8
  store %struct.kempld_device_data* %16, %struct.kempld_device_data** %9, align 8
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* @HZ, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %10, align 8
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %21 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %8, align 8
  %22 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %21, i32 0, i32 3
  store %struct.i2c_msg* %20, %struct.i2c_msg** %22, align 8
  %23 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %8, align 8
  %24 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %8, align 8
  %27 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* @STATE_INIT, align 8
  %29 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %8, align 8
  %30 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %73, %3
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @time_before(i64 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %31
  %37 = load %struct.kempld_device_data*, %struct.kempld_device_data** %9, align 8
  %38 = call i32 @kempld_get_mutex(%struct.kempld_device_data* %37)
  %39 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %8, align 8
  %40 = call i32 @kempld_i2c_process(%struct.kempld_i2c_data* %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.kempld_device_data*, %struct.kempld_device_data** %9, align 8
  %42 = call i32 @kempld_release_mutex(%struct.kempld_device_data* %41)
  %43 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %8, align 8
  %44 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @STATE_DONE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %36
  %49 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %8, align 8
  %50 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @STATE_ERROR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %48, %36
  %55 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %8, align 8
  %56 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @STATE_DONE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %4, align 4
  br label %81

66:                                               ; preds = %48
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i64, i64* @jiffies, align 8
  %71 = load i64, i64* @HZ, align 8
  %72 = add i64 %70, %71
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %69, %66
  %74 = call i32 @usleep_range(i32 5, i32 15)
  br label %31

75:                                               ; preds = %31
  %76 = load i64, i64* @STATE_ERROR, align 8
  %77 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %8, align 8
  %78 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* @ETIMEDOUT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %75, %64
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.kempld_i2c_data* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @kempld_get_mutex(%struct.kempld_device_data*) #1

declare dso_local i32 @kempld_i2c_process(%struct.kempld_i2c_data*) #1

declare dso_local i32 @kempld_release_mutex(%struct.kempld_device_data*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
