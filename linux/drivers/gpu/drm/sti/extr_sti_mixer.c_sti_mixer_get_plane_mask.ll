; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_mixer.c_sti_mixer_get_plane_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_mixer.c_sti_mixer_get_plane_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_plane = type { i32 }

@GAM_CTL_BACK_MASK = common dso_local global i32 0, align 4
@GAM_CTL_GDP0_MASK = common dso_local global i32 0, align 4
@GAM_CTL_GDP1_MASK = common dso_local global i32 0, align 4
@GAM_CTL_GDP2_MASK = common dso_local global i32 0, align 4
@GAM_CTL_GDP3_MASK = common dso_local global i32 0, align 4
@GAM_CTL_VID0_MASK = common dso_local global i32 0, align 4
@GAM_CTL_CURSOR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sti_plane*)* @sti_mixer_get_plane_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_mixer_get_plane_mask(%struct.sti_plane* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sti_plane*, align 8
  store %struct.sti_plane* %0, %struct.sti_plane** %3, align 8
  %4 = load %struct.sti_plane*, %struct.sti_plane** %3, align 8
  %5 = getelementptr inbounds %struct.sti_plane, %struct.sti_plane* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %21 [
    i32 134, label %7
    i32 132, label %9
    i32 131, label %11
    i32 130, label %13
    i32 129, label %15
    i32 128, label %17
    i32 133, label %19
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @GAM_CTL_BACK_MASK, align 4
  store i32 %8, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  %10 = load i32, i32* @GAM_CTL_GDP0_MASK, align 4
  store i32 %10, i32* %2, align 4
  br label %22

11:                                               ; preds = %1
  %12 = load i32, i32* @GAM_CTL_GDP1_MASK, align 4
  store i32 %12, i32* %2, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @GAM_CTL_GDP2_MASK, align 4
  store i32 %14, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load i32, i32* @GAM_CTL_GDP3_MASK, align 4
  store i32 %16, i32* %2, align 4
  br label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @GAM_CTL_VID0_MASK, align 4
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @GAM_CTL_CURSOR_MASK, align 4
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %19, %17, %15, %13, %11, %9, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
