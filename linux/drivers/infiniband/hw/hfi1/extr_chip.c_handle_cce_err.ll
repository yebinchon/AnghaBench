; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_handle_cce_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_handle_cce_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64, i32, i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"CCE Error: %s\0A\00", align 1
@CCE_ERR_STATUS_CCE_CLI2_ASYNC_FIFO_PARITY_ERR_SMASK = common dso_local global i64 0, align 8
@ICODE_FUNCTIONAL_SIMULATOR = common dso_local global i64 0, align 8
@FREEZE_SELF = common dso_local global i32 0, align 4
@NUM_CCE_ERR_STATUS_COUNTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32, i64)* @handle_cce_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_cce_err(%struct.hfi1_devdata* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [96 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %10 = getelementptr inbounds [96 x i8], [96 x i8]* %7, i64 0, i64 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @cce_err_status_string(i8* %10, i32 96, i64 %11)
  %13 = call i32 @dd_dev_info(%struct.hfi1_devdata* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @CCE_ERR_STATUS_CCE_CLI2_ASYNC_FIFO_PARITY_ERR_SMASK, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %3
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %20 = call i64 @is_ax(%struct.hfi1_devdata* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %24 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ICODE_FUNCTIONAL_SIMULATOR, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %30 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FREEZE_SELF, align 4
  %33 = call i32 @start_freeze_handling(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %22, %18, %3
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %58, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @NUM_CCE_ERR_STATUS_COUNTERS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = shl i64 1, %42
  %44 = and i64 %40, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %48 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @incr_cntr64(i32* %52)
  %54 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %55 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %54, i32 0, i32 1
  %56 = call i32 @incr_cntr64(i32* %55)
  br label %57

57:                                               ; preds = %46, %39
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %35

61:                                               ; preds = %35
  ret void
}

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @cce_err_status_string(i8*, i32, i64) #1

declare dso_local i64 @is_ax(%struct.hfi1_devdata*) #1

declare dso_local i32 @start_freeze_handling(i32, i32) #1

declare dso_local i32 @incr_cntr64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
