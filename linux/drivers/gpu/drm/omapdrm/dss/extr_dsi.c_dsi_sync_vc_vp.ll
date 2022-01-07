; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_sync_vc_vp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_sync_vc_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i64 }
%struct.dsi_packet_sent_handler_data = type { i32*, %struct.dsi_data* }

@completion = common dso_local global i32 0, align 4
@dsi_packet_sent_handler_vp = common dso_local global i32 0, align 4
@DSI_VC_IRQ_PACKET_SENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to complete previous frame transfer\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*, i32)* @dsi_sync_vc_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_sync_vc_vp(%struct.dsi_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsi_packet_sent_handler_data, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @completion, align 4
  %10 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %9)
  %11 = getelementptr inbounds %struct.dsi_packet_sent_handler_data, %struct.dsi_packet_sent_handler_data* %6, i32 0, i32 0
  store i32* @completion, i32** %11, align 8
  %12 = getelementptr inbounds %struct.dsi_packet_sent_handler_data, %struct.dsi_packet_sent_handler_data* %6, i32 0, i32 1
  %13 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  store %struct.dsi_data* %13, %struct.dsi_data** %12, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %15 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 30, i32 31
  store i32 %19, i32* %8, align 4
  %20 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @dsi_packet_sent_handler_vp, align 4
  %23 = load i32, i32* @DSI_VC_IRQ_PACKET_SENT, align 4
  %24 = call i32 @dsi_register_isr_vc(%struct.dsi_data* %20, i32 %21, i32 %22, %struct.dsi_packet_sent_handler_data* %6, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %57

28:                                               ; preds = %2
  %29 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @DSI_VC_TE(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @REG_GET(%struct.dsi_data* %29, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = call i32 @msecs_to_jiffies(i32 10)
  %38 = call i64 @wait_for_completion_timeout(i32* @completion, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = call i32 @DSSERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %51

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %28
  %46 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @dsi_packet_sent_handler_vp, align 4
  %49 = load i32, i32* @DSI_VC_IRQ_PACKET_SENT, align 4
  %50 = call i32 @dsi_unregister_isr_vc(%struct.dsi_data* %46, i32 %47, i32 %48, %struct.dsi_packet_sent_handler_data* %6, i32 %49)
  store i32 0, i32* %3, align 4
  br label %59

51:                                               ; preds = %40
  %52 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @dsi_packet_sent_handler_vp, align 4
  %55 = load i32, i32* @DSI_VC_IRQ_PACKET_SENT, align 4
  %56 = call i32 @dsi_unregister_isr_vc(%struct.dsi_data* %52, i32 %53, i32 %54, %struct.dsi_packet_sent_handler_data* %6, i32 %55)
  br label %57

57:                                               ; preds = %51, %27
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %45
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @dsi_register_isr_vc(%struct.dsi_data*, i32, i32, %struct.dsi_packet_sent_handler_data*, i32) #1

declare dso_local i64 @REG_GET(%struct.dsi_data*, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_TE(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dsi_unregister_isr_vc(%struct.dsi_data*, i32, i32, %struct.dsi_packet_sent_handler_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
