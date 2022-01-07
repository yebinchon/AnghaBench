; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_get_ib_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_get_ib_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IBCCtrlB_0 = common dso_local global i32 0, align 4
@IB_POLARITY_REV_SUPP = common dso_local global i32 0, align 4
@IB_LANE_REV_SUPPORTED = common dso_local global i32 0, align 4
@krp_ibcstatus_b = common dso_local global i32 0, align 4
@IBCStatusB_0 = common dso_local global i32 0, align 4
@LinkRoundTripLatency = common dso_local global i32 0, align 4
@IBCCtrlA_0 = common dso_local global i32 0, align 4
@OverrunThreshold = common dso_local global i32 0, align 4
@PhyerrThreshold = common dso_local global i32 0, align 4
@LinkDownDefaultState = common dso_local global i32 0, align 4
@IB_LINKINITCMD_SLEEP = common dso_local global i32 0, align 4
@IB_LINKINITCMD_POLL = common dso_local global i32 0, align 4
@IBA7322_IBC_HRTBT_LSB = common dso_local global i32 0, align 4
@IBA7322_IBC_HRTBT_RMASK = common dso_local global i32 0, align 4
@QIB_IB_QDR = common dso_local global i32 0, align 4
@QIB_IB_DDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*, i32)* @qib_7322_get_ib_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_7322_get_ib_cfg(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %108 [
    i32 137, label %9
    i32 138, label %13
    i32 130, label %17
    i32 131, label %21
    i32 132, label %25
    i32 139, label %32
    i32 140, label %39
    i32 136, label %47
    i32 129, label %51
    i32 128, label %52
    i32 135, label %53
    i32 134, label %62
    i32 141, label %71
    i32 142, label %88
    i32 133, label %91
  ]

9:                                                ; preds = %2
  %10 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %11 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  br label %121

13:                                               ; preds = %2
  %14 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %15 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  br label %121

17:                                               ; preds = %2
  %18 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %19 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  br label %121

21:                                               ; preds = %2
  %22 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %23 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  br label %121

25:                                               ; preds = %2
  %26 = load i32, i32* @IBCCtrlB_0, align 4
  %27 = load i32, i32* @IB_POLARITY_REV_SUPP, align 4
  %28 = call i32 @SYM_LSB(i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @IBCCtrlB_0, align 4
  %30 = load i32, i32* @IB_POLARITY_REV_SUPP, align 4
  %31 = call i32 @SYM_RMASK(i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  br label %111

32:                                               ; preds = %2
  %33 = load i32, i32* @IBCCtrlB_0, align 4
  %34 = load i32, i32* @IB_LANE_REV_SUPPORTED, align 4
  %35 = call i32 @SYM_LSB(i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @IBCCtrlB_0, align 4
  %37 = load i32, i32* @IB_LANE_REV_SUPPORTED, align 4
  %38 = call i32 @SYM_RMASK(i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  br label %111

39:                                               ; preds = %2
  %40 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %41 = load i32, i32* @krp_ibcstatus_b, align 4
  %42 = call i32 @qib_read_kreg_port(%struct.qib_pportdata* %40, i32 %41)
  %43 = load i32, i32* @IBCStatusB_0, align 4
  %44 = load i32, i32* @LinkRoundTripLatency, align 4
  %45 = call i32 @SYM_MASK(i32 %43, i32 %44)
  %46 = and i32 %42, %45
  store i32 %46, i32* %6, align 4
  br label %121

47:                                               ; preds = %2
  %48 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %49 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %6, align 4
  br label %121

51:                                               ; preds = %2
  store i32 16, i32* %6, align 4
  br label %121

52:                                               ; preds = %2
  store i32 16, i32* %6, align 4
  br label %121

53:                                               ; preds = %2
  %54 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %55 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %54, i32 0, i32 5
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IBCCtrlA_0, align 4
  %60 = load i32, i32* @OverrunThreshold, align 4
  %61 = call i32 @SYM_FIELD(i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %121

62:                                               ; preds = %2
  %63 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %64 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %63, i32 0, i32 5
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IBCCtrlA_0, align 4
  %69 = load i32, i32* @PhyerrThreshold, align 4
  %70 = call i32 @SYM_FIELD(i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %6, align 4
  br label %121

71:                                               ; preds = %2
  %72 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %73 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %72, i32 0, i32 5
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IBCCtrlA_0, align 4
  %78 = load i32, i32* @LinkDownDefaultState, align 4
  %79 = call i32 @SYM_MASK(i32 %77, i32 %78)
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* @IB_LINKINITCMD_SLEEP, align 4
  br label %86

84:                                               ; preds = %71
  %85 = load i32, i32* @IB_LINKINITCMD_POLL, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  store i32 %87, i32* %6, align 4
  br label %121

88:                                               ; preds = %2
  %89 = load i32, i32* @IBA7322_IBC_HRTBT_LSB, align 4
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* @IBA7322_IBC_HRTBT_RMASK, align 4
  store i32 %90, i32* %7, align 4
  br label %111

91:                                               ; preds = %2
  %92 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %93 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @QIB_IB_QDR, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 3, i32* %6, align 4
  br label %107

98:                                               ; preds = %91
  %99 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %100 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @QIB_IB_DDR, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 1, i32* %6, align 4
  br label %106

105:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %104
  br label %107

107:                                              ; preds = %106, %97
  br label %121

108:                                              ; preds = %2
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %121

111:                                              ; preds = %88, %32, %25
  %112 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %113 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %112, i32 0, i32 5
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %5, align 4
  %118 = ashr i32 %116, %117
  %119 = load i32, i32* %7, align 4
  %120 = and i32 %118, %119
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %111, %108, %107, %86, %62, %53, %52, %51, %47, %39, %21, %17, %13, %9
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @SYM_LSB(i32, i32) #1

declare dso_local i32 @SYM_RMASK(i32, i32) #1

declare dso_local i32 @qib_read_kreg_port(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @SYM_MASK(i32, i32) #1

declare dso_local i32 @SYM_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
