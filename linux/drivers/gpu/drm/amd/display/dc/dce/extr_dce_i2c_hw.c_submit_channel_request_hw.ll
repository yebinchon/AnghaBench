; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_submit_channel_request_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_submit_channel_request_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_hw = type { i32 }
%struct.i2c_request_transaction_data = type { i32 }

@I2C_CHANNEL_OPERATION_SUCCEEDED = common dso_local global i32 0, align 4
@I2C_CHANNEL_OPERATION_ENGINE_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_i2c_hw*, %struct.i2c_request_transaction_data*)* @submit_channel_request_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_channel_request_hw(%struct.dce_i2c_hw* %0, %struct.i2c_request_transaction_data* %1) #0 {
  %3 = alloca %struct.dce_i2c_hw*, align 8
  %4 = alloca %struct.i2c_request_transaction_data*, align 8
  store %struct.dce_i2c_hw* %0, %struct.dce_i2c_hw** %3, align 8
  store %struct.i2c_request_transaction_data* %1, %struct.i2c_request_transaction_data** %4, align 8
  %5 = load i32, i32* @I2C_CHANNEL_OPERATION_SUCCEEDED, align 4
  %6 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %4, align 8
  %7 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %3, align 8
  %9 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %4, align 8
  %10 = call i32 @process_transaction(%struct.dce_i2c_hw* %8, %struct.i2c_request_transaction_data* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %3, align 8
  %15 = call i64 @is_hw_busy(%struct.dce_i2c_hw* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* @I2C_CHANNEL_OPERATION_ENGINE_BUSY, align 4
  %19 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %26

21:                                               ; preds = %13
  %22 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %3, align 8
  %23 = call i32 @reset_hw_engine(%struct.dce_i2c_hw* %22)
  %24 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %3, align 8
  %25 = call i32 @execute_transaction(%struct.dce_i2c_hw* %24)
  br label %26

26:                                               ; preds = %21, %17, %12
  ret void
}

declare dso_local i32 @process_transaction(%struct.dce_i2c_hw*, %struct.i2c_request_transaction_data*) #1

declare dso_local i64 @is_hw_busy(%struct.dce_i2c_hw*) #1

declare dso_local i32 @reset_hw_engine(%struct.dce_i2c_hw*) #1

declare dso_local i32 @execute_transaction(%struct.dce_i2c_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
