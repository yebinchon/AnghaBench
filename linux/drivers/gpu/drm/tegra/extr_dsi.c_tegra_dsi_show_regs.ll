; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_show_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.seq_file = type { %struct.drm_info_node* }
%struct.drm_info_node = type { %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.TYPE_8__ = type { %struct.tegra_dsi* }
%struct.tegra_dsi = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@tegra_dsi_regs = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"%-32s %#05x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @tegra_dsi_show_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dsi_show_regs(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.tegra_dsi*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load %struct.drm_info_node*, %struct.drm_info_node** %13, align 8
  store %struct.drm_info_node* %14, %struct.drm_info_node** %5, align 8
  %15 = load %struct.drm_info_node*, %struct.drm_info_node** %5, align 8
  %16 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.tegra_dsi*, %struct.tegra_dsi** %18, align 8
  store %struct.tegra_dsi* %19, %struct.tegra_dsi** %6, align 8
  %20 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %21 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %23, align 8
  store %struct.drm_crtc* %24, %struct.drm_crtc** %7, align 8
  %25 = load %struct.drm_info_node*, %struct.drm_info_node** %5, align 8
  %26 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.drm_device*, %struct.drm_device** %28, align 8
  store %struct.drm_device* %29, %struct.drm_device** %8, align 8
  store i32 0, i32* %10, align 4
  %30 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %31 = call i32 @drm_modeset_lock_all(%struct.drm_device* %30)
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %33 = icmp ne %struct.drm_crtc* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %36 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34, %2
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %73

44:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %69, %44
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tegra_dsi_regs, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %47)
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %45
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tegra_dsi_regs, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  %57 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tegra_dsi_regs, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @tegra_dsi_readl(%struct.tegra_dsi* %65, i32 %66)
  %68 = call i32 @seq_printf(%struct.seq_file* %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %50
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %45

72:                                               ; preds = %45
  br label %73

73:                                               ; preds = %72, %41
  %74 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %75 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %74)
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_13__*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32) #1

declare dso_local i32 @tegra_dsi_readl(%struct.tegra_dsi*, i32) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
