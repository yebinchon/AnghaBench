; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hda.c_sti_hda_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hda.c_sti_hda_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.sti_hda* }
%struct.sti_hda = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HDA_ANA_CFG = common dso_local global i32 0, align 4
@CFG_AWG_ASYNC_EN = common dso_local global i32 0, align 4
@HDA_ANA_ANC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @sti_hda_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_hda_disable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.sti_hda*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %5 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %6 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %5, i32 0, i32 0
  %7 = load %struct.sti_hda*, %struct.sti_hda** %6, align 8
  store %struct.sti_hda* %7, %struct.sti_hda** %3, align 8
  %8 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %9 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %41

13:                                               ; preds = %1
  %14 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %16 = load i32, i32* @HDA_ANA_CFG, align 4
  %17 = call i32 @hda_read(%struct.sti_hda* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @CFG_AWG_ASYNC_EN, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @HDA_ANA_CFG, align 4
  %25 = call i32 @hda_write(%struct.sti_hda* %22, i32 %23, i32 %24)
  %26 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %27 = load i32, i32* @HDA_ANA_ANC_CTRL, align 4
  %28 = call i32 @hda_write(%struct.sti_hda* %26, i32 0, i32 %27)
  %29 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %30 = call i32 @hda_enable_hd_dacs(%struct.sti_hda* %29, i32 0)
  %31 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %32 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_disable_unprepare(i32 %33)
  %35 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %36 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_disable_unprepare(i32 %37)
  %39 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %40 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @hda_read(%struct.sti_hda*, i32) #1

declare dso_local i32 @hda_write(%struct.sti_hda*, i32, i32) #1

declare dso_local i32 @hda_enable_hd_dacs(%struct.sti_hda*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
