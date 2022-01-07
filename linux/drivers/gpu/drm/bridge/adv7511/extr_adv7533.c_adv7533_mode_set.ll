; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7533.c_adv7533_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7533.c_adv7533_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i32, %struct.mipi_dsi_device* }
%struct.mipi_dsi_device = type { i32, i32 }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to change host lanes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adv7533_mode_set(%struct.adv7511* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.adv7511*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adv7511* %0, %struct.adv7511** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %8 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %9 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %8, i32 0, i32 1
  %10 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %9, align 8
  store %struct.mipi_dsi_device* %10, %struct.mipi_dsi_device** %5, align 8
  %11 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %12 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 80000
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 4, i32* %6, align 4
  br label %23

22:                                               ; preds = %16
  store i32 3, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %26 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %31 = call i32 @mipi_dsi_detach(%struct.mipi_dsi_device* %30)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %34 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %36 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %41 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %40, i32 0, i32 1
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %29
  br label %44

44:                                               ; preds = %15, %43, %23
  ret void
}

declare dso_local i32 @mipi_dsi_detach(%struct.mipi_dsi_device*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
