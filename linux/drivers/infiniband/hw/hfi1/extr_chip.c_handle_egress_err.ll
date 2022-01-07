; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_handle_egress_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_handle_egress_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64, i32*, i32 }

@ALL_TXE_EGRESS_FREEZE_ERR = common dso_local global i32 0, align 4
@SEND_EGRESS_ERR_STATUS_TX_CREDIT_RETURN_VL_ERR_SMASK = common dso_local global i32 0, align 4
@ICODE_FUNCTIONAL_SIMULATOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Egress Error: %s\0A\00", align 1
@NUM_SEND_EGRESS_ERR_STATUS_COUNTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32, i32)* @handle_egress_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_egress_err(%struct.hfi1_devdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [96 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ALL_TXE_EGRESS_FREEZE_ERR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %22 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @start_freeze_handling(i32 %23, i32 0)
  br label %46

25:                                               ; preds = %3
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %27 = call i64 @is_ax(%struct.hfi1_devdata* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SEND_EGRESS_ERR_STATUS_TX_CREDIT_RETURN_VL_ERR_SMASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %36 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ICODE_FUNCTIONAL_SIMULATOR, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %42 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @start_freeze_handling(i32 %43, i32 0)
  br label %45

45:                                               ; preds = %40, %34, %29, %25
  br label %46

46:                                               ; preds = %45, %20
  br label %47

47:                                               ; preds = %84, %46
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %89

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @fls64(i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = zext i32 %55 to i64
  %57 = shl i64 1, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @port_inactive_err(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %50
  %63 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %64 = call i32 @count_port_inactive(%struct.hfi1_devdata* %63)
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %84

68:                                               ; preds = %50
  %69 = load i32, i32* %12, align 4
  %70 = call i64 @disallowed_pkt_err(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @disallowed_pkt_engine(i32 %74)
  %76 = call i32 @engine_to_vl(%struct.hfi1_devdata* %73, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @handle_send_egress_err_info(%struct.hfi1_devdata* %77, i32 %78)
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %72, %68
  br label %84

84:                                               ; preds = %83, %62
  %85 = load i32, i32* %13, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %47

89:                                               ; preds = %47
  %90 = load i32, i32* %8, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %98 = getelementptr inbounds [96 x i8], [96 x i8]* %9, i64 0, i64 0
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @egress_err_status_string(i8* %98, i32 96, i32 %99)
  %101 = call i32 @dd_dev_info(%struct.hfi1_devdata* %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %96, %89
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %124, %102
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @NUM_SEND_EGRESS_ERR_STATUS_COUNTERS, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %127

107:                                              ; preds = %103
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = load i32, i32* %10, align 4
  %111 = zext i32 %110 to i64
  %112 = shl i64 1, %111
  %113 = and i64 %109, %112
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %117 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = call i32 @incr_cntr64(i32* %121)
  br label %123

123:                                              ; preds = %115, %107
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %103

127:                                              ; preds = %103
  ret void
}

declare dso_local i32 @start_freeze_handling(i32, i32) #1

declare dso_local i64 @is_ax(%struct.hfi1_devdata*) #1

declare dso_local i32 @fls64(i32) #1

declare dso_local i64 @port_inactive_err(i32) #1

declare dso_local i32 @count_port_inactive(%struct.hfi1_devdata*) #1

declare dso_local i64 @disallowed_pkt_err(i32) #1

declare dso_local i32 @engine_to_vl(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @disallowed_pkt_engine(i32) #1

declare dso_local i32 @handle_send_egress_err_info(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @egress_err_status_string(i8*, i32, i32) #1

declare dso_local i32 @incr_cntr64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
