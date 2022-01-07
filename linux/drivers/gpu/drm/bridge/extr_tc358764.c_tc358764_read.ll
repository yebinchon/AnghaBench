; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc358764 = type { i32, i64 }
%struct.mipi_dsi_device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"read: %d, addr: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tc358764*, i32, i32*)* @tc358764_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc358764_read(%struct.tc358764* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.tc358764*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mipi_dsi_device*, align 8
  %8 = alloca i64, align 8
  store %struct.tc358764* %0, %struct.tc358764** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.tc358764*, %struct.tc358764** %4, align 8
  %10 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(i32 %11)
  store %struct.mipi_dsi_device* %12, %struct.mipi_dsi_device** %7, align 8
  %13 = load %struct.tc358764*, %struct.tc358764** %4, align 8
  %14 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %36

18:                                               ; preds = %3
  %19 = call i32 @cpu_to_le16s(i32* %5)
  %20 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %7, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @mipi_dsi_generic_read(%struct.mipi_dsi_device* %20, i32* %5, i32 4, i32* %21, i32 4)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @le32_to_cpus(i32* %26)
  br label %28

28:                                               ; preds = %25, %18
  %29 = load %struct.tc358764*, %struct.tc358764** %4, align 8
  %30 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %28, %17
  ret void
}

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(i32) #1

declare dso_local i32 @cpu_to_le16s(i32*) #1

declare dso_local i64 @mipi_dsi_generic_read(%struct.mipi_dsi_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @le32_to_cpus(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
