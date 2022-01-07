; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c_mdfld_dsi_send_mcs_short.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c_mdfld_dsi_send_mcs_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_pkg_sender = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Invalid parameter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MIPI_DSI_DCS_SHORT_WRITE_PARAM = common dso_local global i64 0, align 8
@MIPI_DSI_DCS_SHORT_WRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdfld_dsi_send_mcs_short(%struct.mdfld_dsi_pkg_sender* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mdfld_dsi_pkg_sender*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i64], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.mdfld_dsi_pkg_sender* %0, %struct.mdfld_dsi_pkg_sender** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %16 = icmp ne %struct.mdfld_dsi_pkg_sender* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %47

21:                                               ; preds = %5
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  store i64 %22, i64* %23, align 16
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i64, i64* @MIPI_DSI_DCS_SHORT_WRITE_PARAM, align 8
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  store i64 %28, i64* %29, align 8
  br label %33

30:                                               ; preds = %21
  %31 = load i64, i64* @MIPI_DSI_DCS_SHORT_WRITE, align 8
  store i64 %31, i64* %14, align 8
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %26
  %34 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %35 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %34, i32 0, i32 0
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %39 = load i64, i64* %14, align 8
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @send_pkg(%struct.mdfld_dsi_pkg_sender* %38, i64 %39, i64* %40, i32 16, i32 %41)
  %43 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %44 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %43, i32 0, i32 0
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %33, %17
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @send_pkg(%struct.mdfld_dsi_pkg_sender*, i64, i64*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
