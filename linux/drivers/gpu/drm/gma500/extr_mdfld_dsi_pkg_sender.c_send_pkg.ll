; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c_send_pkg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c_send_pkg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_pkg_sender = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"Error handling failed\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@MDFLD_DSI_PKG_SENDER_BUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"sender is busy\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"send_pkg_prepare error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdfld_dsi_pkg_sender*, i32, i32*, i32, i32)* @send_pkg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_pkg(%struct.mdfld_dsi_pkg_sender* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mdfld_dsi_pkg_sender*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mdfld_dsi_pkg_sender* %0, %struct.mdfld_dsi_pkg_sender** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %14 = call i32 @dsi_error_handler(%struct.mdfld_dsi_pkg_sender* %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %69

21:                                               ; preds = %5
  %22 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %23 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MDFLD_DSI_PKG_SENDER_BUSY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %69

31:                                               ; preds = %21
  %32 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @send_pkg_prepare(%struct.mdfld_dsi_pkg_sender* %32, i32 %33, i32* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %69

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  switch i32 %43, label %62 [
    i32 130, label %44
    i32 129, label %44
    i32 128, label %44
    i32 133, label %44
    i32 132, label %44
    i32 131, label %44
    i32 136, label %44
    i32 135, label %44
    i32 137, label %44
    i32 134, label %55
    i32 138, label %55
  ]

44:                                               ; preds = %42, %42, %42, %42, %42, %42, %42, %42, %42
  %45 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @send_short_pkg(%struct.mdfld_dsi_pkg_sender* %45, i32 %46, i32 %49, i32 %52, i32 %53)
  store i32 %54, i32* %12, align 4
  br label %62

55:                                               ; preds = %42, %42
  %56 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @send_long_pkg(%struct.mdfld_dsi_pkg_sender* %56, i32 %57, i32* %58, i32 %59, i32 %60)
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %42, %55, %44
  %63 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @send_pkg_done(%struct.mdfld_dsi_pkg_sender* %63, i32 %64, i32* %65, i32 %66)
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %62, %39, %27, %17
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @dsi_error_handler(%struct.mdfld_dsi_pkg_sender*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @send_pkg_prepare(%struct.mdfld_dsi_pkg_sender*, i32, i32*, i32) #1

declare dso_local i32 @send_short_pkg(%struct.mdfld_dsi_pkg_sender*, i32, i32, i32, i32) #1

declare dso_local i32 @send_long_pkg(%struct.mdfld_dsi_pkg_sender*, i32, i32*, i32, i32) #1

declare dso_local i32 @send_pkg_done(%struct.mdfld_dsi_pkg_sender*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
