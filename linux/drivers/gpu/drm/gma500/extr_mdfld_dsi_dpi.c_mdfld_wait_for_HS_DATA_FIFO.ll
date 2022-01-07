; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_wait_for_HS_DATA_FIFO.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_wait_for_HS_DATA_FIFO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }

@DSI_FIFO_GEN_HS_DATA_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"MIPI: HS Data FIFO was never cleared!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @mdfld_wait_for_HS_DATA_FIFO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdfld_wait_for_HS_DATA_FIFO(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @MIPI_GEN_FIFO_STAT_REG(i32 %7)
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = call i32 @udelay(i32 500)
  br label %10

10:                                               ; preds = %21, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 20000
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @REG_READ(i32 %14)
  %16 = load i32, i32* @DSI_FIFO_GEN_HS_DATA_FULL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %13, %10
  %20 = phi i1 [ false, %10 ], [ %18, %13 ]
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = call i32 @udelay(i32 100)
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %10

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 20000
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 @DRM_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @MIPI_GEN_FIFO_STAT_REG(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
