; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_dcs_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_dcs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6e8aa0 = type { i64, i32 }
%struct.mipi_dsi_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"error %zd writing dcs seq: %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s6e8aa0*, i8*, i64)* @s6e8aa0_dcs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6e8aa0_dcs_write(%struct.s6e8aa0* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.s6e8aa0*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mipi_dsi_device*, align 8
  %8 = alloca i64, align 8
  store %struct.s6e8aa0* %0, %struct.s6e8aa0** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.s6e8aa0*, %struct.s6e8aa0** %4, align 8
  %10 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(i32 %11)
  store %struct.mipi_dsi_device* %12, %struct.mipi_dsi_device** %7, align 8
  %13 = load %struct.s6e8aa0*, %struct.s6e8aa0** %4, align 8
  %14 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %37

18:                                               ; preds = %3
  %19 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @mipi_dsi_dcs_write_buffer(%struct.mipi_dsi_device* %19, i8* %20, i64 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load %struct.s6e8aa0*, %struct.s6e8aa0** %4, align 8
  %27 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %29, i32 %31, i8* %32)
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.s6e8aa0*, %struct.s6e8aa0** %4, align 8
  %36 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %17, %25, %18
  ret void
}

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(i32) #1

declare dso_local i64 @mipi_dsi_dcs_write_buffer(%struct.mipi_dsi_device*, i8*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
