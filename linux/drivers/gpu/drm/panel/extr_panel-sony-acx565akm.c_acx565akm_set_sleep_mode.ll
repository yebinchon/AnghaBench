; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_set_sleep_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_set_sleep_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acx565akm_panel = type { i8*, i64 }

@MIPI_DCS_ENTER_SLEEP_MODE = common dso_local global i32 0, align 4
@MIPI_DCS_EXIT_SLEEP_MODE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acx565akm_panel*, i32)* @acx565akm_set_sleep_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acx565akm_set_sleep_mode(%struct.acx565akm_panel* %0, i32 %1) #0 {
  %3 = alloca %struct.acx565akm_panel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.acx565akm_panel* %0, %struct.acx565akm_panel** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @MIPI_DCS_ENTER_SLEEP_MODE, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @MIPI_DCS_EXIT_SLEEP_MODE, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  store i32 %14, i32* %5, align 4
  %15 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %16 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** @jiffies, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %13
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %27 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ule i64 %25, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %32 = call i32 @set_current_state(i32 %31)
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @schedule_timeout(i64 %33)
  br label %35

35:                                               ; preds = %30, %24, %13
  %36 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @acx565akm_cmd(%struct.acx565akm_panel* %36, i32 %37)
  %39 = call i64 @msecs_to_jiffies(i32 120)
  %40 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %41 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i8*, i8** @jiffies, align 8
  %43 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %44 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr i8, i8* %42, i64 %45
  %47 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %48 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  ret void
}

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i64) #1

declare dso_local i32 @acx565akm_cmd(%struct.acx565akm_panel*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
