; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_handle_send_egress_err_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_handle_send_egress_err_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { %struct.hfi1_pportdata* }
%struct.hfi1_pportdata = type { i32* }

@SEND_EGRESS_ERR_SOURCE = common dso_local global i32 0, align 4
@SEND_EGRESS_ERR_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Egress Error Info: 0x%llx, %s Egress Error Src 0x%llx\0A\00", align 1
@PORT_DISCARD_EGRESS_ERRS = common dso_local global i32 0, align 4
@TXE_NUM_DATA_VL = common dso_local global i32 0, align 4
@C_VL_15 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32)* @handle_send_egress_err_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_send_egress_err_info(%struct.hfi1_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_pportdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [96 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %12 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %11, i32 0, i32 0
  %13 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %12, align 8
  store %struct.hfi1_pportdata* %13, %struct.hfi1_pportdata** %5, align 8
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %15 = load i32, i32* @SEND_EGRESS_ERR_SOURCE, align 4
  %16 = call i32 @read_csr(%struct.hfi1_devdata* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %18 = load i32, i32* @SEND_EGRESS_ERR_INFO, align 4
  %19 = call i32 @read_csr(%struct.hfi1_devdata* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %21 = load i32, i32* @SEND_EGRESS_ERR_INFO, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @write_csr(%struct.hfi1_devdata* %20, i32 %21, i32 %22)
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds [96 x i8], [96 x i8]* %8, i64 0, i64 0
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @egress_err_info_string(i8* %26, i32 96, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dd_dev_info(%struct.hfi1_devdata* %24, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @PORT_DISCARD_EGRESS_ERRS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @PORT_DISCARD_EGRESS_ERRS, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @hweight64(i32 %38)
  store i32 %39, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %73, %35
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %40
  %45 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %46 = call i32 @__count_port_discards(%struct.hfi1_pportdata* %45)
  %47 = load i32, i32* %4, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @TXE_NUM_DATA_VL, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %55 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @incr_cntr64(i32* %59)
  br label %72

61:                                               ; preds = %49, %44
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 15
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %66 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @C_VL_15, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = call i32 @incr_cntr64(i32* %69)
  br label %71

71:                                               ; preds = %64, %61
  br label %72

72:                                               ; preds = %71, %53
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %40

76:                                               ; preds = %40
  br label %77

77:                                               ; preds = %76, %2
  ret void
}

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i32, i32, i32) #1

declare dso_local i32 @egress_err_info_string(i8*, i32, i32) #1

declare dso_local i32 @hweight64(i32) #1

declare dso_local i32 @__count_port_discards(%struct.hfi1_pportdata*) #1

declare dso_local i32 @incr_cntr64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
