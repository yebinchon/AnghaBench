; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_wait_for_SPL_PKG_SENT.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_wait_for_SPL_PKG_SENT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }

@DSI_INTR_STATE_SPL_PKG_SENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"MIPI: SPL_PKT_SENT_INTERRUPT was not sent successfully!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @mdfld_wait_for_SPL_PKG_SENT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdfld_wait_for_SPL_PKG_SENT(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @MIPI_INTR_STAT_REG(i32 %7)
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = call i32 @udelay(i32 500)
  br label %10

10:                                               ; preds = %22, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 20000
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @REG_READ(i32 %14)
  %16 = load i32, i32* @DSI_INTR_STATE_SPL_PKG_SENT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %13, %10
  %21 = phi i1 [ false, %10 ], [ %19, %13 ]
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = call i32 @udelay(i32 100)
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %10

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 20000
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  ret void
}

declare dso_local i32 @MIPI_INTR_STAT_REG(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
