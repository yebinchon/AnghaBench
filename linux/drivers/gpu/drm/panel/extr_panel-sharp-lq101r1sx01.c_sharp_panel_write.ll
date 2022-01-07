; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-lq101r1sx01.c_sharp_panel_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-lq101r1sx01.c_sharp_panel_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sharp_panel = type { %struct.mipi_dsi_device* }
%struct.mipi_dsi_device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"failed to write %02x to %04x: %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to send DCS nop: %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sharp_panel*, i32, i32)* @sharp_panel_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharp_panel_write(%struct.sharp_panel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sharp_panel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca %struct.mipi_dsi_device*, align 8
  %10 = alloca i64, align 8
  store %struct.sharp_panel* %0, %struct.sharp_panel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 8
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds i32, i32* %11, i64 1
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 255
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds i32, i32* %14, i64 1
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %17, align 4
  %19 = load %struct.sharp_panel*, %struct.sharp_panel** %5, align 8
  %20 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %19, i32 0, i32 0
  %21 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %20, align 8
  store %struct.mipi_dsi_device* %21, %struct.mipi_dsi_device** %9, align 8
  %22 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %9, align 8
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %24 = call i64 @mipi_dsi_generic_write(%struct.mipi_dsi_device* %22, i32* %23, i32 12)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %3
  %28 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %9, align 8
  %29 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* %10, align 8
  %34 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %32, i64 %33)
  %35 = load i64, i64* %10, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  br label %51

37:                                               ; preds = %3
  %38 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %9, align 8
  %39 = call i64 @mipi_dsi_dcs_nop(%struct.mipi_dsi_device* %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %9, align 8
  %44 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %10, align 8
  %46 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load i64, i64* %10, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %51

49:                                               ; preds = %37
  %50 = call i32 @usleep_range(i32 10, i32 20)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %42, %27
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @mipi_dsi_generic_write(%struct.mipi_dsi_device*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i64 @mipi_dsi_dcs_nop(%struct.mipi_dsi_device*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
