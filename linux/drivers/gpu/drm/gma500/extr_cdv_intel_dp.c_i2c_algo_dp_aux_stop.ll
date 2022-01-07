; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_i2c_algo_dp_aux_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_i2c_algo_dp_aux_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.i2c_algo_dp_aux_data* }
%struct.i2c_algo_dp_aux_data = type { i32 }

@MODE_I2C_STOP = common dso_local global i32 0, align 4
@MODE_I2C_READ = common dso_local global i32 0, align 4
@MODE_I2C_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*, i32)* @i2c_algo_dp_aux_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_algo_dp_aux_stop(%struct.i2c_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_algo_dp_aux_data*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %7, i32 0, i32 0
  %9 = load %struct.i2c_algo_dp_aux_data*, %struct.i2c_algo_dp_aux_data** %8, align 8
  store %struct.i2c_algo_dp_aux_data* %9, %struct.i2c_algo_dp_aux_data** %5, align 8
  %10 = load i32, i32* @MODE_I2C_STOP, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @MODE_I2C_READ, align 4
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %6, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @MODE_I2C_WRITE, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.i2c_algo_dp_aux_data*, %struct.i2c_algo_dp_aux_data** %5, align 8
  %23 = getelementptr inbounds %struct.i2c_algo_dp_aux_data, %struct.i2c_algo_dp_aux_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @i2c_algo_dp_aux_transaction(%struct.i2c_adapter* %27, i32 %28, i32 0, i32* null)
  %30 = load %struct.i2c_algo_dp_aux_data*, %struct.i2c_algo_dp_aux_data** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_algo_dp_aux_data, %struct.i2c_algo_dp_aux_data* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @i2c_algo_dp_aux_transaction(%struct.i2c_adapter*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
