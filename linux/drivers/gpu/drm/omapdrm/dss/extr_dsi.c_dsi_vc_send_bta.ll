; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_send_bta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_send_bta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"dsi_vc_send_bta %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"rx fifo not empty when sending BTA, dumping data:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*, i32)* @dsi_vc_send_bta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vc_send_bta(%struct.dsi_data* %0, i32 %1) #0 {
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %6 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %11 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9, %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @DSSDBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %9
  %18 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %19 = call i32 @dsi_bus_is_locked(%struct.dsi_data* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @DSI_VC_CTRL(i32 %25)
  %27 = call i64 @REG_GET(%struct.dsi_data* %24, i32 %26, i32 20, i32 20)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = call i32 @DSSERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @dsi_vc_flush_receive_data(%struct.dsi_data* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %17
  %35 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @DSI_VC_CTRL(i32 %36)
  %38 = call i32 @REG_FLD_MOD(%struct.dsi_data* %35, i32 %37, i32 1, i32 6, i32 6)
  %39 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @DSI_VC_CTRL(i32 %40)
  %42 = call i32 @dsi_read_reg(%struct.dsi_data* %39, i32 %41)
  ret i32 0
}

declare dso_local i32 @DSSDBG(i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dsi_bus_is_locked(%struct.dsi_data*) #1

declare dso_local i64 @REG_GET(%struct.dsi_data*, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dsi_vc_flush_receive_data(%struct.dsi_data*, i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dsi_data*, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_read_reg(%struct.dsi_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
