; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_dce_i2c_hw_engine_submit_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_dce_i2c_hw_engine_submit_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_hw = type { i32 }
%struct.i2c_payload = type { i64, i32, i32, i32 }
%struct.i2c_request_transaction_data = type { i64, i64, i32, i64, i32 }

@DCE_I2C_TRANSACTION_ACTION_I2C_READ_MOT = common dso_local global i32 0, align 4
@DCE_I2C_TRANSACTION_ACTION_I2C_READ = common dso_local global i32 0, align 4
@DCE_I2C_TRANSACTION_ACTION_I2C_WRITE_MOT = common dso_local global i32 0, align 4
@DCE_I2C_TRANSACTION_ACTION_I2C_WRITE = common dso_local global i32 0, align 4
@I2C_CHANNEL_OPERATION_FAILED = common dso_local global i64 0, align 8
@I2C_CHANNEL_OPERATION_ENGINE_BUSY = common dso_local global i64 0, align 8
@I2C_CHANNEL_OPERATION_SUCCEEDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce_i2c_hw_engine_submit_payload(%struct.dce_i2c_hw* %0, %struct.i2c_payload* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dce_i2c_hw*, align 8
  %6 = alloca %struct.i2c_payload*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_request_transaction_data, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dce_i2c_hw* %0, %struct.dce_i2c_hw** %5, align 8
  store %struct.i2c_payload* %1, %struct.i2c_payload** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.i2c_payload*, %struct.i2c_payload** %6, align 8
  %13 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %5, align 8
  %16 = call i64 @get_hw_buffer_available_size(%struct.dce_i2c_hw* %15)
  %17 = icmp sge i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %107

19:                                               ; preds = %3
  %20 = load %struct.i2c_payload*, %struct.i2c_payload** %6, align 8
  %21 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @DCE_I2C_TRANSACTION_ACTION_I2C_READ_MOT, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @DCE_I2C_TRANSACTION_ACTION_I2C_READ, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %8, i32 0, i32 4
  store i32 %32, i32* %33, align 8
  br label %44

34:                                               ; preds = %19
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @DCE_I2C_TRANSACTION_ACTION_I2C_WRITE_MOT, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @DCE_I2C_TRANSACTION_ACTION_I2C_WRITE, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %8, i32 0, i32 4
  store i32 %42, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %31
  %45 = load %struct.i2c_payload*, %struct.i2c_payload** %6, align 8
  %46 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 %47, 1
  %49 = load %struct.i2c_payload*, %struct.i2c_payload** %6, align 8
  %50 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = or i32 %48, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %8, i32 0, i32 3
  store i64 %56, i64* %57, align 8
  %58 = load %struct.i2c_payload*, %struct.i2c_payload** %6, align 8
  %59 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %8, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = load %struct.i2c_payload*, %struct.i2c_payload** %6, align 8
  %63 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %8, i32 0, i32 2
  store i32 %64, i32* %65, align 8
  %66 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %5, align 8
  %67 = load %struct.i2c_payload*, %struct.i2c_payload** %6, align 8
  %68 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  %71 = call i32 @get_transaction_timeout_hw(%struct.dce_i2c_hw* %66, i64 %70)
  store i32 %71, i32* %9, align 4
  %72 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %5, align 8
  %73 = call i32 @submit_channel_request_hw(%struct.dce_i2c_hw* %72, %struct.i2c_request_transaction_data* %8)
  %74 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %8, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @I2C_CHANNEL_OPERATION_FAILED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %44
  %79 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %8, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @I2C_CHANNEL_OPERATION_ENGINE_BUSY, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %44
  store i32 0, i32* %4, align 4
  br label %107

84:                                               ; preds = %78
  %85 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i64, i64* @I2C_CHANNEL_OPERATION_ENGINE_BUSY, align 8
  %88 = call i32 @dce_i2c_hw_engine_wait_on_operation_result(%struct.dce_i2c_hw* %85, i32 %86, i64 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @I2C_CHANNEL_OPERATION_SUCCEEDED, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 1, i32* %11, align 4
  br label %93

93:                                               ; preds = %92, %84
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load %struct.i2c_payload*, %struct.i2c_payload** %6, align 8
  %98 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %5, align 8
  %103 = load %struct.i2c_payload*, %struct.i2c_payload** %6, align 8
  %104 = call i32 @process_channel_reply(%struct.dce_i2c_hw* %102, %struct.i2c_payload* %103)
  br label %105

105:                                              ; preds = %101, %96, %93
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %83, %18
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i64 @get_hw_buffer_available_size(%struct.dce_i2c_hw*) #1

declare dso_local i32 @get_transaction_timeout_hw(%struct.dce_i2c_hw*, i64) #1

declare dso_local i32 @submit_channel_request_hw(%struct.dce_i2c_hw*, %struct.i2c_request_transaction_data*) #1

declare dso_local i32 @dce_i2c_hw_engine_wait_on_operation_result(%struct.dce_i2c_hw*, i32, i64) #1

declare dso_local i32 @process_channel_reply(%struct.dce_i2c_hw*, %struct.i2c_payload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
