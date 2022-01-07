; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc358764 = type { i64, i32 }
%struct.mipi_dsi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tc358764*, i32, i32)* @tc358764_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc358764_write(%struct.tc358764* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tc358764*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mipi_dsi_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [6 x i32], align 16
  store %struct.tc358764* %0, %struct.tc358764** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.tc358764*, %struct.tc358764** %4, align 8
  %11 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(i32 %12)
  store %struct.mipi_dsi_device* %13, %struct.mipi_dsi_device** %7, align 8
  %14 = load %struct.tc358764*, %struct.tc358764** %4, align 8
  %15 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %45

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 8
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 8
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 16
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  store i32 %31, i32* %32, align 16
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 24
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  store i32 %34, i32* %35, align 4
  %36 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %7, align 8
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %38 = call i64 @mipi_dsi_generic_write(%struct.mipi_dsi_device* %36, i32* %37, i32 24)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %19
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.tc358764*, %struct.tc358764** %4, align 8
  %44 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %18, %41, %19
  ret void
}

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(i32) #1

declare dso_local i64 @mipi_dsi_generic_write(%struct.mipi_dsi_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
