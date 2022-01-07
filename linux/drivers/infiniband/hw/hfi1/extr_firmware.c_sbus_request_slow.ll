; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_sbus_request_slow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_sbus_request_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@ASIC_CFG_SBUS_EXECUTE = common dso_local global i32 0, align 4
@ASIC_CFG_SBUS_EXECUTE_EXECUTE_SMASK = common dso_local global i32 0, align 4
@ASIC_STS_SBUS_RESULT = common dso_local global i32 0, align 4
@ASIC_STS_SBUS_RESULT_DONE_SMASK = common dso_local global i32 0, align 4
@ASIC_STS_SBUS_RESULT_RCV_DATA_VALID_SMASK = common dso_local global i32 0, align 4
@SBUS_MAX_POLL_COUNT = common dso_local global i64 0, align 8
@ASIC_STS_SBUS_COUNTERS = common dso_local global i32 0, align 4
@RCV_DATA_VALID = common dso_local global i32 0, align 4
@EXECUTE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbus_request_slow(%struct.hfi1_devdata* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %16 = call i32 @clear_sbus_fast_mode(%struct.hfi1_devdata* %15)
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @sbus_request(%struct.hfi1_devdata* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %24 = load i32, i32* @ASIC_CFG_SBUS_EXECUTE, align 4
  %25 = load i32, i32* @ASIC_CFG_SBUS_EXECUTE_EXECUTE_SMASK, align 4
  %26 = call i32 @write_csr(%struct.hfi1_devdata* %23, i32 %24, i32 %25)
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %28 = load i32, i32* @ASIC_STS_SBUS_RESULT, align 4
  %29 = call i32 @read_csr(%struct.hfi1_devdata* %27, i32 %28)
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %69, %5
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @ASIC_STS_SBUS_RESULT_DONE_SMASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @ASIC_STS_SBUS_RESULT_RCV_DATA_VALID_SMASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i1 [ false, %30 ], [ %39, %35 ]
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %74

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  %46 = sext i32 %44 to i64
  %47 = load i64, i64* @SBUS_MAX_POLL_COUNT, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %43
  %50 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %51 = load i32, i32* @ASIC_STS_SBUS_COUNTERS, align 4
  %52 = call i32 @read_csr(%struct.hfi1_devdata* %50, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @ASIC_STS_SBUS_RESULT_DONE_SMASK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @RCV_DATA_VALID, align 4
  %60 = call i64 @SBUS_COUNTER(i32 %58, i32 %59)
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @EXECUTE, align 4
  %63 = call i64 @SBUS_COUNTER(i32 %61, i32 %62)
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %74

66:                                               ; preds = %57, %49
  %67 = load i32, i32* @ETIMEDOUT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %101

69:                                               ; preds = %43
  %70 = call i32 @udelay(i32 1)
  %71 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %72 = load i32, i32* @ASIC_STS_SBUS_RESULT, align 4
  %73 = call i32 @read_csr(%struct.hfi1_devdata* %71, i32 %72)
  store i32 %73, i32* %12, align 4
  br label %30

74:                                               ; preds = %65, %40
  store i32 0, i32* %13, align 4
  %75 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %76 = load i32, i32* @ASIC_CFG_SBUS_EXECUTE, align 4
  %77 = call i32 @write_csr(%struct.hfi1_devdata* %75, i32 %76, i32 0)
  %78 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %79 = load i32, i32* @ASIC_STS_SBUS_RESULT, align 4
  %80 = call i32 @read_csr(%struct.hfi1_devdata* %78, i32 %79)
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %95, %74
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @ASIC_STS_SBUS_RESULT_DONE_SMASK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  %89 = sext i32 %87 to i64
  %90 = load i64, i64* @SBUS_MAX_POLL_COUNT, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @ETIME, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %101

95:                                               ; preds = %86
  %96 = call i32 @udelay(i32 1)
  %97 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %98 = load i32, i32* @ASIC_STS_SBUS_RESULT, align 4
  %99 = call i32 @read_csr(%struct.hfi1_devdata* %97, i32 %98)
  store i32 %99, i32* %12, align 4
  br label %81

100:                                              ; preds = %81
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %92, %66
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @clear_sbus_fast_mode(%struct.hfi1_devdata*) #1

declare dso_local i32 @sbus_request(%struct.hfi1_devdata*, i32, i32, i32, i32) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i64 @SBUS_COUNTER(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
