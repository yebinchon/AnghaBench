; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_dump_clocks_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_dump_clocks_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dispc_device = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"- %s -\0A\00", align 1
@mgr_desc = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"%s clk source = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"lck\09\09%-16lulck div\09%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"pck\09\09%-16lupck div\09%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, %struct.seq_file*, i32)* @dispc_dump_clocks_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_dump_clocks_channel(%struct.dispc_device* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.dispc_device*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mgr_desc, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %19 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dss_get_lcd_clk_source(i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mgr_desc, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @dss_get_clk_source_name(i32 %30)
  %32 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %31)
  %33 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dispc_mgr_get_lcd_divisor(%struct.dispc_device* %33, i32 %34, i32* %7, i32* %8)
  %36 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %37 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @dispc_mgr_lclk_rate(%struct.dispc_device* %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %43 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dispc_mgr_pclk_rate(%struct.dispc_device* %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @dss_get_lcd_clk_source(i32, i32) #1

declare dso_local i32 @dss_get_clk_source_name(i32) #1

declare dso_local i32 @dispc_mgr_get_lcd_divisor(%struct.dispc_device*, i32, i32*, i32*) #1

declare dso_local i32 @dispc_mgr_lclk_rate(%struct.dispc_device*, i32) #1

declare dso_local i32 @dispc_mgr_pclk_rate(%struct.dispc_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
