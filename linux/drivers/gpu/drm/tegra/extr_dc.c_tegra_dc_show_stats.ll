; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_show_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_show_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_info_node* }
%struct.drm_info_node = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.tegra_dc* }
%struct.tegra_dc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"frames: %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"vblank: %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"underflow: %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"overflow: %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @tegra_dc_show_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dc_show_stats(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.tegra_dc*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.drm_info_node*, %struct.drm_info_node** %8, align 8
  store %struct.drm_info_node* %9, %struct.drm_info_node** %5, align 8
  %10 = load %struct.drm_info_node*, %struct.drm_info_node** %5, align 8
  %11 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.tegra_dc*, %struct.tegra_dc** %13, align 8
  store %struct.tegra_dc* %14, %struct.tegra_dc** %6, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %17 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %23 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %29 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %35 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
