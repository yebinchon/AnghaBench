; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_enter_ulps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_enter_ulps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@completion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Entering ULPS\00", align 1
@DSI_CLK_CTRL = common dso_local global i32 0, align 4
@DSI_COMPLEXIO_CFG2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"HS busy when enabling ULPS\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"LP busy when enabling ULPS\0A\00", align 1
@dsi_completion_handler = common dso_local global i32 0, align 4
@DSI_CIO_IRQ_ULPSACTIVENOT_ALL0 = common dso_local global i32 0, align 4
@DSI_LANE_UNUSED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"ULPS enable timeout\0A\00", align 1
@DSI_COMPLEXIO_POWER_ULPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*)* @dsi_enter_ulps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_enter_ulps(%struct.dsi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %3, align 8
  %7 = load i32, i32* @completion, align 4
  %8 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %7)
  %9 = call i32 @DSSDBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %11 = call i32 @dsi_bus_is_locked(%struct.dsi_data* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %17 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %21 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %149

25:                                               ; preds = %1
  %26 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %27 = load i32, i32* @DSI_CLK_CTRL, align 4
  %28 = call i64 @REG_GET(%struct.dsi_data* %26, i32 %27, i32 13, i32 13)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %32 = call i32 @dsi_if_enable(%struct.dsi_data* %31, i32 0)
  %33 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %34 = load i32, i32* @DSI_CLK_CTRL, align 4
  %35 = call i32 @REG_FLD_MOD(%struct.dsi_data* %33, i32 %34, i32 0, i32 13, i32 13)
  %36 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %37 = call i32 @dsi_if_enable(%struct.dsi_data* %36, i32 1)
  br label %38

38:                                               ; preds = %30, %25
  %39 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %40 = call i32 @dsi_sync_vc(%struct.dsi_data* %39, i32 0)
  %41 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %42 = call i32 @dsi_sync_vc(%struct.dsi_data* %41, i32 1)
  %43 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %44 = call i32 @dsi_sync_vc(%struct.dsi_data* %43, i32 2)
  %45 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %46 = call i32 @dsi_sync_vc(%struct.dsi_data* %45, i32 3)
  %47 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %48 = call i32 @dsi_force_tx_stop_mode_io(%struct.dsi_data* %47)
  %49 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %50 = call i32 @dsi_vc_enable(%struct.dsi_data* %49, i32 0, i32 0)
  %51 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %52 = call i32 @dsi_vc_enable(%struct.dsi_data* %51, i32 1, i32 0)
  %53 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %54 = call i32 @dsi_vc_enable(%struct.dsi_data* %53, i32 2, i32 0)
  %55 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %56 = call i32 @dsi_vc_enable(%struct.dsi_data* %55, i32 3, i32 0)
  %57 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %58 = load i32, i32* @DSI_COMPLEXIO_CFG2, align 4
  %59 = call i64 @REG_GET(%struct.dsi_data* %57, i32 %58, i32 16, i32 16)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %38
  %62 = call i32 @DSSERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %149

65:                                               ; preds = %38
  %66 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %67 = load i32, i32* @DSI_COMPLEXIO_CFG2, align 4
  %68 = call i64 @REG_GET(%struct.dsi_data* %66, i32 %67, i32 17, i32 17)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = call i32 @DSSERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %149

74:                                               ; preds = %65
  %75 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %76 = load i32, i32* @dsi_completion_handler, align 4
  %77 = load i32, i32* @DSI_CIO_IRQ_ULPSACTIVENOT_ALL0, align 4
  %78 = call i32 @dsi_register_isr_cio(%struct.dsi_data* %75, i32 %76, i32* @completion, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %149

83:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %107, %83
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %87 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %84
  %91 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %92 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DSI_LANE_UNUSED, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %107

102:                                              ; preds = %90
  %103 = load i32, i32* %5, align 4
  %104 = shl i32 1, %103
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %102, %101
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %84

110:                                              ; preds = %84
  %111 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %112 = load i32, i32* @DSI_COMPLEXIO_CFG2, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @REG_FLD_MOD(%struct.dsi_data* %111, i32 %112, i32 %113, i32 9, i32 5)
  %115 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %116 = load i32, i32* @DSI_COMPLEXIO_CFG2, align 4
  %117 = call i32 @dsi_read_reg(%struct.dsi_data* %115, i32 %116)
  %118 = call i32 @msecs_to_jiffies(i32 1000)
  %119 = call i64 @wait_for_completion_timeout(i32* @completion, i32 %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %110
  %122 = call i32 @DSSERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %143

125:                                              ; preds = %110
  %126 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %127 = load i32, i32* @dsi_completion_handler, align 4
  %128 = load i32, i32* @DSI_CIO_IRQ_ULPSACTIVENOT_ALL0, align 4
  %129 = call i32 @dsi_unregister_isr_cio(%struct.dsi_data* %126, i32 %127, i32* @completion, i32 %128)
  %130 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %131 = load i32, i32* @DSI_COMPLEXIO_CFG2, align 4
  %132 = call i32 @REG_FLD_MOD(%struct.dsi_data* %130, i32 %131, i32 0, i32 9, i32 5)
  %133 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %134 = load i32, i32* @DSI_COMPLEXIO_CFG2, align 4
  %135 = call i32 @dsi_read_reg(%struct.dsi_data* %133, i32 %134)
  %136 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %137 = load i32, i32* @DSI_COMPLEXIO_POWER_ULPS, align 4
  %138 = call i32 @dsi_cio_power(%struct.dsi_data* %136, i32 %137)
  %139 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %140 = call i32 @dsi_if_enable(%struct.dsi_data* %139, i32 0)
  %141 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %142 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  store i32 0, i32* %2, align 4
  br label %149

143:                                              ; preds = %121
  %144 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %145 = load i32, i32* @dsi_completion_handler, align 4
  %146 = load i32, i32* @DSI_CIO_IRQ_ULPSACTIVENOT_ALL0, align 4
  %147 = call i32 @dsi_unregister_isr_cio(%struct.dsi_data* %144, i32 %145, i32* @completion, i32 %146)
  %148 = load i32, i32* %4, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %143, %125, %81, %70, %61, %24
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dsi_bus_is_locked(%struct.dsi_data*) #1

declare dso_local i64 @REG_GET(%struct.dsi_data*, i32, i32, i32) #1

declare dso_local i32 @dsi_if_enable(%struct.dsi_data*, i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dsi_data*, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_sync_vc(%struct.dsi_data*, i32) #1

declare dso_local i32 @dsi_force_tx_stop_mode_io(%struct.dsi_data*) #1

declare dso_local i32 @dsi_vc_enable(%struct.dsi_data*, i32, i32) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dsi_register_isr_cio(%struct.dsi_data*, i32, i32*, i32) #1

declare dso_local i32 @dsi_read_reg(%struct.dsi_data*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dsi_unregister_isr_cio(%struct.dsi_data*, i32, i32*, i32) #1

declare dso_local i32 @dsi_cio_power(%struct.dsi_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
