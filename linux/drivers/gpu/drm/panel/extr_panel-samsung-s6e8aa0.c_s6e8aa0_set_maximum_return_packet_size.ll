; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_set_maximum_return_packet_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_set_maximum_return_packet_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6e8aa0 = type { i32, i32 }
%struct.mipi_dsi_device = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"error %d setting maximum return packet size to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s6e8aa0*, i32)* @s6e8aa0_set_maximum_return_packet_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6e8aa0_set_maximum_return_packet_size(%struct.s6e8aa0* %0, i32 %1) #0 {
  %3 = alloca %struct.s6e8aa0*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca i32, align 4
  store %struct.s6e8aa0* %0, %struct.s6e8aa0** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.s6e8aa0*, %struct.s6e8aa0** %3, align 8
  %8 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(i32 %9)
  store %struct.mipi_dsi_device* %10, %struct.mipi_dsi_device** %5, align 8
  %11 = load %struct.s6e8aa0*, %struct.s6e8aa0** %3, align 8
  %12 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @mipi_dsi_set_maximum_return_packet_size(%struct.mipi_dsi_device* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.s6e8aa0*, %struct.s6e8aa0** %3, align 8
  %24 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.s6e8aa0*, %struct.s6e8aa0** %3, align 8
  %31 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %15, %22, %16
  ret void
}

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(i32) #1

declare dso_local i32 @mipi_dsi_set_maximum_return_packet_size(%struct.mipi_dsi_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
