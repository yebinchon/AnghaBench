; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_display_send_one_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_display_send_one_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcde = type { i32, i64, i64, i32 }

@MCDE_FIFO_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"sent TE0 framebuffer update\0A\00", align 1
@MCDE_CHNLXSYNCHSW_SW_TRIG = common dso_local global i32 0, align 4
@MCDE_CHNL0SYNCHSW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"sent SW framebuffer update\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcde*)* @mcde_display_send_one_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcde_display_send_one_frame(%struct.mcde* %0) #0 {
  %2 = alloca %struct.mcde*, align 8
  store %struct.mcde* %0, %struct.mcde** %2, align 8
  %3 = load %struct.mcde*, %struct.mcde** %2, align 8
  %4 = getelementptr inbounds %struct.mcde, %struct.mcde* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.mcde*, %struct.mcde** %2, align 8
  %9 = getelementptr inbounds %struct.mcde, %struct.mcde* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @mcde_dsi_te_request(i32 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.mcde*, %struct.mcde** %2, align 8
  %14 = load i32, i32* @MCDE_FIFO_A, align 4
  %15 = call i32 @mcde_enable_fifo(%struct.mcde* %13, i32 %14)
  %16 = load %struct.mcde*, %struct.mcde** %2, align 8
  %17 = getelementptr inbounds %struct.mcde, %struct.mcde* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.mcde*, %struct.mcde** %2, align 8
  %22 = getelementptr inbounds %struct.mcde, %struct.mcde* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %40

25:                                               ; preds = %12
  %26 = load i32, i32* @MCDE_CHNLXSYNCHSW_SW_TRIG, align 4
  %27 = load %struct.mcde*, %struct.mcde** %2, align 8
  %28 = getelementptr inbounds %struct.mcde, %struct.mcde* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MCDE_CHNL0SYNCHSW, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.mcde*, %struct.mcde** %2, align 8
  %34 = load i32, i32* @MCDE_FIFO_A, align 4
  %35 = call i32 @mcde_disable_fifo(%struct.mcde* %33, i32 %34, i32 1)
  %36 = load %struct.mcde*, %struct.mcde** %2, align 8
  %37 = getelementptr inbounds %struct.mcde, %struct.mcde* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %25, %20
  ret void
}

declare dso_local i32 @mcde_dsi_te_request(i32) #1

declare dso_local i32 @mcde_enable_fifo(%struct.mcde*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mcde_disable_fifo(%struct.mcde*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
