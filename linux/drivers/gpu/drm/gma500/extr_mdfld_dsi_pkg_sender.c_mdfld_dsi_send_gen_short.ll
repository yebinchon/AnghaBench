; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c_mdfld_dsi_send_gen_short.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c_mdfld_dsi_send_gen_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_pkg_sender = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Invalid parameter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM = common dso_local global i32 0, align 4
@MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM = common dso_local global i32 0, align 4
@MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdfld_dsi_send_gen_short(%struct.mdfld_dsi_pkg_sender* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mdfld_dsi_pkg_sender*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mdfld_dsi_pkg_sender* %0, %struct.mdfld_dsi_pkg_sender** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %16 = icmp ne %struct.mdfld_dsi_pkg_sender* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %17, %5
  %21 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %55

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %41 [
    i32 0, label %26
    i32 1, label %30
    i32 2, label %35
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM, align 4
  store i32 %27, i32* %14, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 0, i32* %29, align 4
  br label %41

30:                                               ; preds = %24
  %31 = load i32, i32* @MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 0, i32* %34, align 4
  br label %41

35:                                               ; preds = %24
  %36 = load i32, i32* @MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM, align 4
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %8, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %24, %35, %30, %26
  %42 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %43 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %42, i32 0, i32 0
  %44 = load i64, i64* %13, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %47 = load i32, i32* %14, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @send_pkg(%struct.mdfld_dsi_pkg_sender* %46, i32 %47, i32* %48, i32 8, i32 %49)
  %51 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %52 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %51, i32 0, i32 0
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %41, %20
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @send_pkg(%struct.mdfld_dsi_pkg_sender*, i32, i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
