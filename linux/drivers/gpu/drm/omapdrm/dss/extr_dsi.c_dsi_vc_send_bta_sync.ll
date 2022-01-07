; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_send_bta_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_send_bta_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.dsi_data = type { i32 }

@completion = common dso_local global i32 0, align 4
@dsi_completion_handler = common dso_local global i32 0, align 4
@DSI_VC_IRQ_BTA = common dso_local global i32 0, align 4
@DSI_IRQ_ERROR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to receive BTA\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error while sending BTA: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, i32)* @dsi_vc_send_bta_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vc_send_bta_sync(%struct.omap_dss_device* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsi_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %9 = call %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device* %8)
  store %struct.dsi_data* %9, %struct.dsi_data** %5, align 8
  %10 = load i32, i32* @completion, align 4
  %11 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %10)
  store i32 0, i32* %6, align 4
  %12 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @dsi_completion_handler, align 4
  %15 = load i32, i32* @DSI_VC_IRQ_BTA, align 4
  %16 = call i32 @dsi_register_isr_vc(%struct.dsi_data* %12, i32 %13, i32 %14, i32* @completion, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %65

20:                                               ; preds = %2
  %21 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %22 = load i32, i32* @dsi_completion_handler, align 4
  %23 = load i32, i32* @DSI_IRQ_ERROR_MASK, align 4
  %24 = call i32 @dsi_register_isr(%struct.dsi_data* %21, i32 %22, i32* @completion, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %59

28:                                               ; preds = %20
  %29 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dsi_vc_send_bta(%struct.dsi_data* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %54

35:                                               ; preds = %28
  %36 = call i32 @msecs_to_jiffies(i32 500)
  %37 = call i64 @wait_for_completion_timeout(i32* @completion, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %54

43:                                               ; preds = %35
  %44 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %45 = call i64 @dsi_get_errors(%struct.dsi_data* %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i64, i64* %7, align 8
  %50 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %54

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %48, %39, %34
  %55 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %56 = load i32, i32* @dsi_completion_handler, align 4
  %57 = load i32, i32* @DSI_IRQ_ERROR_MASK, align 4
  %58 = call i32 @dsi_unregister_isr(%struct.dsi_data* %55, i32 %56, i32* @completion, i32 %57)
  br label %59

59:                                               ; preds = %54, %27
  %60 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @dsi_completion_handler, align 4
  %63 = load i32, i32* @DSI_VC_IRQ_BTA, align 4
  %64 = call i32 @dsi_unregister_isr_vc(%struct.dsi_data* %60, i32 %61, i32 %62, i32* @completion, i32 %63)
  br label %65

65:                                               ; preds = %59, %19
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device*) #1

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @dsi_register_isr_vc(%struct.dsi_data*, i32, i32, i32*, i32) #1

declare dso_local i32 @dsi_register_isr(%struct.dsi_data*, i32, i32*, i32) #1

declare dso_local i32 @dsi_vc_send_bta(%struct.dsi_data*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i64 @dsi_get_errors(%struct.dsi_data*) #1

declare dso_local i32 @dsi_unregister_isr(%struct.dsi_data*, i32, i32*, i32) #1

declare dso_local i32 @dsi_unregister_isr_vc(%struct.dsi_data*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
