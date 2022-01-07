; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_dvo.c_sti_dvo_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_dvo.c_sti_dvo_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.sti_dvo* }
%struct.sti_dvo = type { i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DVO_AWG_DIGSYNC_CTRL = common dso_local global i64 0, align 8
@DVO_DOF_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @sti_dvo_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_dvo_disable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.sti_dvo*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %4 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %5 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %4, i32 0, i32 0
  %6 = load %struct.sti_dvo*, %struct.sti_dvo** %5, align 8
  store %struct.sti_dvo* %6, %struct.sti_dvo** %3, align 8
  %7 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %8 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %48

12:                                               ; preds = %1
  %13 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %15 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %14, i32 0, i32 5
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %22 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DVO_AWG_DIGSYNC_CTRL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 0, i64 %25)
  br label %27

27:                                               ; preds = %20, %12
  %28 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %29 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DVO_DOF_CFG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 0, i64 %32)
  %34 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %35 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @drm_panel_disable(i32 %36)
  %38 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %39 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @clk_disable_unprepare(i32 %40)
  %42 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %43 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @clk_disable_unprepare(i32 %44)
  %46 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %47 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %27, %11
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @drm_panel_disable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
