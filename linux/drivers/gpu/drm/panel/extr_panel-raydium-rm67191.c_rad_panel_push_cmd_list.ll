; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm67191.c_rad_panel_push_cmd_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm67191.c_rad_panel_push_cmd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_set_entry = type { i32, i32 }
%struct.mipi_dsi_device = type { i32 }

@manufacturer_cmd_set = common dso_local global %struct.cmd_set_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @rad_panel_push_cmd_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rad_panel_push_cmd_list(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd_set_entry*, align 8
  %8 = alloca [2 x i32], align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %9 = load %struct.cmd_set_entry*, %struct.cmd_set_entry** @manufacturer_cmd_set, align 8
  %10 = call i64 @ARRAY_SIZE(%struct.cmd_set_entry* %9)
  store i64 %10, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %35, %1
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load %struct.cmd_set_entry*, %struct.cmd_set_entry** @manufacturer_cmd_set, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.cmd_set_entry, %struct.cmd_set_entry* %16, i64 %17
  store %struct.cmd_set_entry* %18, %struct.cmd_set_entry** %7, align 8
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %20 = load %struct.cmd_set_entry*, %struct.cmd_set_entry** %7, align 8
  %21 = getelementptr inbounds %struct.cmd_set_entry, %struct.cmd_set_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds i32, i32* %19, i64 1
  %24 = load %struct.cmd_set_entry*, %struct.cmd_set_entry** %7, align 8
  %25 = getelementptr inbounds %struct.cmd_set_entry, %struct.cmd_set_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 4
  %27 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %28 = bitcast [2 x i32]* %8 to i32**
  %29 = call i32 @mipi_dsi_generic_write(%struct.mipi_dsi_device* %27, i32** %28, i32 8)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %15
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %40

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %4, align 8
  br label %11

38:                                               ; preds = %11
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %32
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @ARRAY_SIZE(%struct.cmd_set_entry*) #1

declare dso_local i32 @mipi_dsi_generic_write(%struct.mipi_dsi_device*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
