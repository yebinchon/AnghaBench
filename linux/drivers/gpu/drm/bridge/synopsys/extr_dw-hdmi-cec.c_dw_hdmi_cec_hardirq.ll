; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-cec.c_dw_hdmi_cec_hardirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-cec.c_dw_hdmi_cec_hardirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.dw_hdmi_cec = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8** }

@HDMI_IH_CEC_STAT0 = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@CEC_STAT_ERROR_INIT = common dso_local global i32 0, align 4
@CEC_TX_STATUS_ERROR = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@CEC_STAT_DONE = common dso_local global i32 0, align 4
@CEC_TX_STATUS_OK = common dso_local global i32 0, align 4
@CEC_STAT_NACK = common dso_local global i32 0, align 4
@CEC_TX_STATUS_NACK = common dso_local global i32 0, align 4
@CEC_STAT_EOM = common dso_local global i32 0, align 4
@HDMI_CEC_RX_CNT = common dso_local global i64 0, align 8
@HDMI_CEC_RX_DATA0 = common dso_local global i64 0, align 8
@HDMI_CEC_LOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dw_hdmi_cec_hardirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_cec_hardirq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cec_adapter*, align 8
  %7 = alloca %struct.dw_hdmi_cec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.cec_adapter*
  store %struct.cec_adapter* %13, %struct.cec_adapter** %6, align 8
  %14 = load %struct.cec_adapter*, %struct.cec_adapter** %6, align 8
  %15 = call %struct.dw_hdmi_cec* @cec_get_drvdata(%struct.cec_adapter* %14)
  store %struct.dw_hdmi_cec* %15, %struct.dw_hdmi_cec** %7, align 8
  %16 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %7, align 8
  %17 = load i64, i64* @HDMI_IH_CEC_STAT0, align 8
  %18 = call i8* @dw_hdmi_read(%struct.dw_hdmi_cec* %16, i64 %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %117

25:                                               ; preds = %2
  %26 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i64, i64* @HDMI_IH_CEC_STAT0, align 8
  %29 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %26, i32 %27, i64 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @CEC_STAT_ERROR_INIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load i32, i32* @CEC_TX_STATUS_ERROR, align 4
  %36 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %7, align 8
  %37 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %7, align 8
  %39 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %40, i32* %9, align 4
  br label %67

41:                                               ; preds = %25
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @CEC_STAT_DONE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* @CEC_TX_STATUS_OK, align 4
  %48 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %7, align 8
  %49 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %7, align 8
  %51 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %52, i32* %9, align 4
  br label %66

53:                                               ; preds = %41
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @CEC_STAT_NACK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32, i32* @CEC_TX_STATUS_NACK, align 4
  %60 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %7, align 8
  %61 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %7, align 8
  %63 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %58, %53
  br label %66

66:                                               ; preds = %65, %46
  br label %67

67:                                               ; preds = %66, %34
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @CEC_STAT_EOM, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %115

72:                                               ; preds = %67
  %73 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %7, align 8
  %74 = load i64, i64* @HDMI_CEC_RX_CNT, align 8
  %75 = call i8* @dw_hdmi_read(%struct.dw_hdmi_cec* %73, i64 %74)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = icmp ugt i64 %78, 8
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 8, i32* %10, align 4
  br label %81

81:                                               ; preds = %80, %72
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %100, %81
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %82
  %87 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %7, align 8
  %88 = load i64, i64* @HDMI_CEC_RX_DATA0, align 8
  %89 = load i32, i32* %11, align 4
  %90 = zext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = call i8* @dw_hdmi_read(%struct.dw_hdmi_cec* %87, i64 %91)
  %93 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %7, align 8
  %94 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  store i8* %92, i8** %99, align 8
  br label %100

100:                                              ; preds = %86
  %101 = load i32, i32* %11, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %82

103:                                              ; preds = %82
  %104 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %7, align 8
  %105 = load i64, i64* @HDMI_CEC_LOCK, align 8
  %106 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %104, i32 0, i64 %105)
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %7, align 8
  %109 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = call i32 (...) @smp_wmb()
  %112 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %7, align 8
  %113 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  %114 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %103, %67
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %23
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.dw_hdmi_cec* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i8* @dw_hdmi_read(%struct.dw_hdmi_cec*, i64) #1

declare dso_local i32 @dw_hdmi_write(%struct.dw_hdmi_cec*, i32, i64) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
