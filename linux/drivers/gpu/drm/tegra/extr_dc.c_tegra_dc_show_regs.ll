; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_show_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.seq_file = type { %struct.drm_info_node* }
%struct.drm_info_node = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.tegra_dc* }
%struct.tegra_dc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@tegra_dc_regs = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"%-40s %#05x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @tegra_dc_show_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dc_show_regs(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.tegra_dc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.drm_info_node*, %struct.drm_info_node** %11, align 8
  store %struct.drm_info_node* %12, %struct.drm_info_node** %5, align 8
  %13 = load %struct.drm_info_node*, %struct.drm_info_node** %5, align 8
  %14 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.tegra_dc*, %struct.tegra_dc** %16, align 8
  store %struct.tegra_dc* %17, %struct.tegra_dc** %6, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %19 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = call i32 @drm_modeset_lock(i32* %20, i32* null)
  %22 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %23 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %61

32:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %57, %32
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tegra_dc_regs, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %35)
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tegra_dc_regs, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tegra_dc_regs, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @tegra_dc_readl(%struct.tegra_dc* %53, i32 %54)
  %56 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %38
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %33

60:                                               ; preds = %33
  br label %61

61:                                               ; preds = %60, %29
  %62 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %63 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = call i32 @drm_modeset_unlock(i32* %64)
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32 @drm_modeset_lock(i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32) #1

declare dso_local i32 @tegra_dc_readl(%struct.tegra_dc*, i32) #1

declare dso_local i32 @drm_modeset_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
