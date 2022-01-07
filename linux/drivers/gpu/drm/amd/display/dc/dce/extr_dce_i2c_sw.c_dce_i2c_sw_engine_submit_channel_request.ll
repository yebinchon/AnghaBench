; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_dce_i2c_sw_engine_submit_channel_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_dce_i2c_sw_engine_submit_channel_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_sw = type { i32, i32, %struct.ddc* }
%struct.ddc = type { i32 }
%struct.i2c_request_transaction_data = type { i32, i32, i32, i32, i32 }

@I2C_CHANNEL_OPERATION_SUCCEEDED = common dso_local global i32 0, align 4
@I2C_CHANNEL_OPERATION_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_i2c_sw_engine_submit_channel_request(%struct.dce_i2c_sw* %0, %struct.i2c_request_transaction_data* %1) #0 {
  %3 = alloca %struct.dce_i2c_sw*, align 8
  %4 = alloca %struct.i2c_request_transaction_data*, align 8
  %5 = alloca %struct.ddc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dce_i2c_sw* %0, %struct.dce_i2c_sw** %3, align 8
  store %struct.i2c_request_transaction_data* %1, %struct.i2c_request_transaction_data** %4, align 8
  %8 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %3, align 8
  %9 = getelementptr inbounds %struct.dce_i2c_sw, %struct.dce_i2c_sw* %8, i32 0, i32 2
  %10 = load %struct.ddc*, %struct.ddc** %9, align 8
  store %struct.ddc* %10, %struct.ddc** %5, align 8
  %11 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %3, align 8
  %12 = getelementptr inbounds %struct.dce_i2c_sw, %struct.dce_i2c_sw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = ashr i32 %13, 2
  store i32 %14, i32* %6, align 4
  %15 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %3, align 8
  %16 = getelementptr inbounds %struct.dce_i2c_sw, %struct.dce_i2c_sw* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ddc*, %struct.ddc** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @start_sync_sw(i32 %17, %struct.ddc* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %2
  %24 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %59 [
    i32 129, label %27
    i32 128, label %27
    i32 131, label %43
    i32 130, label %43
  ]

27:                                               ; preds = %23, %23
  %28 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %3, align 8
  %29 = getelementptr inbounds %struct.dce_i2c_sw, %struct.dce_i2c_sw* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ddc*, %struct.ddc** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @i2c_write_sw(i32 %30, %struct.ddc* %31, i32 %32, i32 %35, i32 %38, i32 %41)
  store i32 %42, i32* %7, align 4
  br label %60

43:                                               ; preds = %23, %23
  %44 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %3, align 8
  %45 = getelementptr inbounds %struct.dce_i2c_sw, %struct.dce_i2c_sw* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ddc*, %struct.ddc** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @i2c_read_sw(i32 %46, %struct.ddc* %47, i32 %48, i32 %51, i32 %54, i32 %57)
  store i32 %58, i32* %7, align 4
  br label %60

59:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %43, %27
  br label %61

61:                                               ; preds = %60, %2
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 129
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %4, align 8
  %71 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 131
  br i1 %73, label %74, label %84

74:                                               ; preds = %69, %64, %61
  %75 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %3, align 8
  %76 = getelementptr inbounds %struct.dce_i2c_sw, %struct.dce_i2c_sw* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ddc*, %struct.ddc** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @stop_sync_sw(i32 %77, %struct.ddc* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %74
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %74
  br label %84

84:                                               ; preds = %83, %69
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @I2C_CHANNEL_OPERATION_SUCCEEDED, align 4
  br label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @I2C_CHANNEL_OPERATION_FAILED, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = load %struct.i2c_request_transaction_data*, %struct.i2c_request_transaction_data** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_request_transaction_data, %struct.i2c_request_transaction_data* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  ret void
}

declare dso_local i32 @start_sync_sw(i32, %struct.ddc*, i32) #1

declare dso_local i32 @i2c_write_sw(i32, %struct.ddc*, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_read_sw(i32, %struct.ddc*, i32, i32, i32, i32) #1

declare dso_local i32 @stop_sync_sw(i32, %struct.ddc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
