; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_write_uninitialized_csrs_and_memories.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_write_uninitialized_csrs_and_memories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@CCE_NUM_INT_MAP_CSRS = common dso_local global i32 0, align 4
@CCE_INT_MAP = common dso_local global i64 0, align 8
@SEND_CTXT_CREDIT_RETURN_ADDR = common dso_local global i32 0, align 4
@RCV_HDR_ADDR = common dso_local global i32 0, align 4
@RCV_HDR_TAIL_ADDR = common dso_local global i32 0, align 4
@RXE_NUM_TID_FLOWS = common dso_local global i32 0, align 4
@RCV_TID_FLOW_TABLE = common dso_local global i64 0, align 8
@PT_INVALID_FLUSH = common dso_local global i32 0, align 4
@RCV_QP_MAP_TABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @write_uninitialized_csrs_and_memories to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_uninitialized_csrs_and_memories(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @CCE_NUM_INT_MAP_CSRS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %11 = load i64, i64* @CCE_INT_MAP, align 8
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 8, %12
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  %16 = call i32 @write_csr(%struct.hfi1_devdata* %10, i64 %15, i32 0)
  br label %17

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %5

20:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %31, %20
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %24 = call i32 @chip_send_contexts(%struct.hfi1_devdata* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SEND_CTXT_CREDIT_RETURN_ADDR, align 4
  %30 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %27, i32 %28, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %21

34:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %66, %34
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %38 = call i32 @chip_rcv_contexts(%struct.hfi1_devdata* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %35
  %41 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @RCV_HDR_ADDR, align 4
  %44 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %41, i32 %42, i32 %43, i32 0)
  %45 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @RCV_HDR_TAIL_ADDR, align 4
  %48 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %45, i32 %46, i32 %47, i32 0)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %62, %40
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @RXE_NUM_TID_FLOWS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load i64, i64* @RCV_TID_FLOW_TABLE, align 8
  %57 = load i32, i32* %4, align 4
  %58 = mul nsw i32 8, %57
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %56, %59
  %61 = call i32 @write_uctxt_csr(%struct.hfi1_devdata* %54, i32 %55, i64 %60, i32 0)
  br label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %49

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %35

69:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %80, %69
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %73 = call i32 @chip_rcv_array_count(%struct.hfi1_devdata* %72)
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @PT_INVALID_FLUSH, align 4
  %79 = call i32 @hfi1_put_tid(%struct.hfi1_devdata* %76, i32 %77, i32 %78, i32 0, i32 0)
  br label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %70

83:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %95, %83
  %85 = load i32, i32* %3, align 4
  %86 = icmp slt i32 %85, 32
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %89 = load i64, i64* @RCV_QP_MAP_TABLE, align 8
  %90 = load i32, i32* %3, align 4
  %91 = mul nsw i32 8, %90
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %89, %92
  %94 = call i32 @write_csr(%struct.hfi1_devdata* %88, i64 %93, i32 0)
  br label %95

95:                                               ; preds = %87
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %84

98:                                               ; preds = %84
  ret void
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i64, i32) #1

declare dso_local i32 @chip_send_contexts(%struct.hfi1_devdata*) #1

declare dso_local i32 @write_kctxt_csr(%struct.hfi1_devdata*, i32, i32, i32) #1

declare dso_local i32 @chip_rcv_contexts(%struct.hfi1_devdata*) #1

declare dso_local i32 @write_uctxt_csr(%struct.hfi1_devdata*, i32, i64, i32) #1

declare dso_local i32 @chip_rcv_array_count(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_put_tid(%struct.hfi1_devdata*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
