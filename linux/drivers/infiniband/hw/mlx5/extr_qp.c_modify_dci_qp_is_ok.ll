; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_modify_dci_qp_is_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_modify_dci_qp_is_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QPS_RESET = common dso_local global i32 0, align 4
@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@IB_QPS_RTR = common dso_local global i32 0, align 4
@IB_QP_PATH_MTU = common dso_local global i32 0, align 4
@IB_QP_AV = common dso_local global i32 0, align 4
@IB_QPS_RTS = common dso_local global i32 0, align 4
@IB_QP_TIMEOUT = common dso_local global i32 0, align 4
@IB_QP_RETRY_CNT = common dso_local global i32 0, align 4
@IB_QP_RNR_RETRY = common dso_local global i32 0, align 4
@IB_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@IB_QP_MIN_RNR_TIMER = common dso_local global i32 0, align 4
@IB_QPS_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @modify_dci_qp_is_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify_dci_qp_is_ok(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @IB_QP_STATE, align 4
  store i32 %10, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @IB_QPS_RESET, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @is_valid_mask(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %131

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @IB_QPS_RESET, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @IB_QPS_INIT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %29 = load i32, i32* @IB_QP_PORT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @is_valid_mask(i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %131

37:                                               ; preds = %23, %19
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @IB_QPS_INIT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @IB_QPS_INIT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %47 = load i32, i32* @IB_QP_PORT, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @is_valid_mask(i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %131

53:                                               ; preds = %41, %37
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @IB_QPS_INIT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @IB_QPS_RTR, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i32, i32* @IB_QP_PATH_MTU, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %66 = load i32, i32* @IB_QP_AV, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @is_valid_mask(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %131

72:                                               ; preds = %57, %53
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @IB_QPS_RTR, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @IB_QPS_RTS, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = load i32, i32* @IB_QP_TIMEOUT, align 4
  %82 = load i32, i32* @IB_QP_RETRY_CNT, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @IB_QP_RNR_RETRY, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @IB_QP_MAX_QP_RD_ATOMIC, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* @IB_QP_MIN_RNR_TIMER, align 4
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @is_valid_mask(i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %4, align 4
  br label %131

97:                                               ; preds = %76, %72
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @IB_QPS_RTS, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @IB_QPS_RTS, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* @IB_QP_MIN_RNR_TIMER, align 4
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @is_valid_mask(i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %4, align 4
  br label %131

111:                                              ; preds = %101, %97
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @IB_QPS_RESET, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @IB_QPS_ERR, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @is_valid_mask(i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %4, align 4
  br label %131

124:                                              ; preds = %115, %111
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %119, %105, %80, %61, %45, %27, %14
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @is_valid_mask(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
