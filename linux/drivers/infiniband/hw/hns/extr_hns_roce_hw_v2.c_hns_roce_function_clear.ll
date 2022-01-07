; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_function_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_function_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, i32 }
%struct.hns_roce_func_clear = type { i32 }
%struct.hns_roce_cmq_desc = type { i64 }

@HNS_ROCE_OPC_FUNC_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Func clear write failed, ret = %d.\0A\00", align 1
@HNS_ROCE_V2_READ_FUNC_CLEAR_FLAG_INTERVAL = common dso_local global i64 0, align 8
@HNS_ROCE_V2_FUNC_CLEAR_TIMEOUT_MSECS = common dso_local global i64 0, align 8
@HNS_ROCE_V2_READ_FUNC_CLEAR_FLAG_FAIL_WAIT = common dso_local global i64 0, align 8
@FUNC_CLEAR_RST_FUN_DONE_S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Func clear fail.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*)* @hns_roce_function_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_function_clear(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_roce_func_clear*, align 8
  %5 = alloca %struct.hns_roce_cmq_desc, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %9 = call i64 @hns_roce_func_clr_chk_rst(%struct.hns_roce_dev* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %65

12:                                               ; preds = %1
  %13 = load i32, i32* @HNS_ROCE_OPC_FUNC_CLEAR, align 4
  %14 = call i32 @hns_roce_cmq_setup_basic_desc(%struct.hns_roce_cmq_desc* %5, i32 %13, i32 0)
  %15 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %5, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.hns_roce_func_clear*
  store %struct.hns_roce_func_clear* %17, %struct.hns_roce_func_clear** %4, align 8
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %19 = call i32 @hns_roce_cmq_send(%struct.hns_roce_dev* %18, %struct.hns_roce_cmq_desc* %5, i32 1)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  %23 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %24 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %65

28:                                               ; preds = %12
  %29 = load i64, i64* @HNS_ROCE_V2_READ_FUNC_CLEAR_FLAG_INTERVAL, align 8
  %30 = call i32 @msleep(i64 %29)
  %31 = load i64, i64* @HNS_ROCE_V2_FUNC_CLEAR_TIMEOUT_MSECS, align 8
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %63, %52, %28
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  %36 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %37 = call i64 @hns_roce_func_clr_chk_rst(%struct.hns_roce_dev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %65

40:                                               ; preds = %35
  %41 = load i64, i64* @HNS_ROCE_V2_READ_FUNC_CLEAR_FLAG_FAIL_WAIT, align 8
  %42 = call i32 @msleep(i64 %41)
  %43 = load i64, i64* @HNS_ROCE_V2_READ_FUNC_CLEAR_FLAG_FAIL_WAIT, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub i64 %44, %43
  store i64 %45, i64* %6, align 8
  %46 = load i32, i32* @HNS_ROCE_OPC_FUNC_CLEAR, align 4
  %47 = call i32 @hns_roce_cmq_setup_basic_desc(%struct.hns_roce_cmq_desc* %5, i32 %46, i32 1)
  %48 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %49 = call i32 @hns_roce_cmq_send(%struct.hns_roce_dev* %48, %struct.hns_roce_cmq_desc* %5, i32 1)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %32

53:                                               ; preds = %40
  %54 = load %struct.hns_roce_func_clear*, %struct.hns_roce_func_clear** %4, align 8
  %55 = getelementptr inbounds %struct.hns_roce_func_clear, %struct.hns_roce_func_clear* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FUNC_CLEAR_RST_FUN_DONE_S, align 4
  %58 = call i64 @roce_get_bit(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %62 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  br label %74

63:                                               ; preds = %53
  br label %32

64:                                               ; preds = %32
  br label %65

65:                                               ; preds = %64, %39, %22, %11
  %66 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %67 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @dev_err(i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @hns_roce_func_clr_rst_prc(%struct.hns_roce_dev* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %65, %60
  ret void
}

declare dso_local i64 @hns_roce_func_clr_chk_rst(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_cmq_setup_basic_desc(%struct.hns_roce_cmq_desc*, i32, i32) #1

declare dso_local i32 @hns_roce_cmq_send(%struct.hns_roce_dev*, %struct.hns_roce_cmq_desc*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i64 @roce_get_bit(i32, i32) #1

declare dso_local i32 @hns_roce_func_clr_rst_prc(%struct.hns_roce_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
