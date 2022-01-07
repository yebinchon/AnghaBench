; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_dce_i2c_sw_engine_submit_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_dce_i2c_sw_engine_submit_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_sw = type { i32 }
%struct.i2c_payload = type { i32, i32, i32, i32 }
%struct.i2c_request_transaction_data = type { i64, i32, i32, i64, i32 }

@DCE_I2C_TRANSACTION_ACTION_I2C_READ_MOT = common dso_local global i32 0, align 4
@DCE_I2C_TRANSACTION_ACTION_I2C_READ = common dso_local global i32 0, align 4
@DCE_I2C_TRANSACTION_ACTION_I2C_WRITE_MOT = common dso_local global i32 0, align 4
@DCE_I2C_TRANSACTION_ACTION_I2C_WRITE = common dso_local global i32 0, align 4
@I2C_CHANNEL_OPERATION_ENGINE_BUSY = common dso_local global i64 0, align 8
@I2C_CHANNEL_OPERATION_FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce_i2c_sw_engine_submit_payload(%struct.dce_i2c_sw* %0, %struct.i2c_payload* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dce_i2c_sw*, align 8
  %6 = alloca %struct.i2c_payload*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_request_transaction_data, align 8
  store %struct.dce_i2c_sw* %0, %struct.dce_i2c_sw** %5, align 8
  store %struct.i2c_payload* %1, %struct.i2c_payload** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.i2c_payload*, %struct.i2c_payload** %6, align 8
  %10 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @DCE_I2C_TRANSACTION_ACTION_I2C_READ_MOT, align 4
  br label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @DCE_I2C_TRANSACTION_ACTION_I2C_READ, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %8, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  br label %33

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @DCE_I2C_TRANSACTION_ACTION_I2C_WRITE_MOT, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @DCE_I2C_TRANSACTION_ACTION_I2C_WRITE, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %8, i32 0, i32 4
  store i32 %31, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %20
  %34 = load %struct.i2c_payload*, %struct.i2c_payload** %6, align 8
  %35 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 1
  %38 = load %struct.i2c_payload*, %struct.i2c_payload** %6, align 8
  %39 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = or i32 %37, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %8, i32 0, i32 3
  store i64 %45, i64* %46, align 8
  %47 = load %struct.i2c_payload*, %struct.i2c_payload** %6, align 8
  %48 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %8, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load %struct.i2c_payload*, %struct.i2c_payload** %6, align 8
  %52 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %8, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %5, align 8
  %56 = call i32 @dce_i2c_sw_engine_submit_channel_request(%struct.dce_i2c_sw* %55, %struct.i2c_request_transaction_data* %8)
  %57 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %8, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @I2C_CHANNEL_OPERATION_ENGINE_BUSY, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %33
  %62 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %8, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @I2C_CHANNEL_OPERATION_FAILED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %33
  store i32 0, i32* %4, align 4
  br label %68

67:                                               ; preds = %61
  store i32 1, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @dce_i2c_sw_engine_submit_channel_request(%struct.dce_i2c_sw*, %struct.i2c_request_transaction_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
