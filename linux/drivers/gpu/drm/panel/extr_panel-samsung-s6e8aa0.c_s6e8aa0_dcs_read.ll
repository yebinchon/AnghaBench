; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_dcs_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_dcs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6e8aa0 = type { i32, i32 }
%struct.mipi_dsi_device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"error %d reading dcs seq(%#x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s6e8aa0*, i32, i8*, i64)* @s6e8aa0_dcs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6e8aa0_dcs_read(%struct.s6e8aa0* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.s6e8aa0*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mipi_dsi_device*, align 8
  %11 = alloca i32, align 4
  store %struct.s6e8aa0* %0, %struct.s6e8aa0** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.s6e8aa0*, %struct.s6e8aa0** %6, align 8
  %13 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(i32 %14)
  store %struct.mipi_dsi_device* %15, %struct.mipi_dsi_device** %10, align 8
  %16 = load %struct.s6e8aa0*, %struct.s6e8aa0** %6, align 8
  %17 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.s6e8aa0*, %struct.s6e8aa0** %6, align 8
  %22 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  br label %44

24:                                               ; preds = %4
  %25 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @mipi_dsi_dcs_read(%struct.mipi_dsi_device* %25, i32 %26, i8* %27, i64 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load %struct.s6e8aa0*, %struct.s6e8aa0** %6, align 8
  %34 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.s6e8aa0*, %struct.s6e8aa0** %6, align 8
  %41 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %32, %24
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %20
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(i32) #1

declare dso_local i32 @mipi_dsi_dcs_read(%struct.mipi_dsi_device*, i32, i8*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
