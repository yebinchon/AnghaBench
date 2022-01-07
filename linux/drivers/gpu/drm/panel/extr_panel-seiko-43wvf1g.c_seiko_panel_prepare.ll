; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-seiko-43wvf1g.c_seiko_panel_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-seiko-43wvf1g.c_seiko_panel_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.seiko_panel = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"failed to enable dvdd: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to enable avdd: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @seiko_panel_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seiko_panel_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.seiko_panel*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.seiko_panel* @to_seiko_panel(%struct.drm_panel* %6)
  store %struct.seiko_panel* %7, %struct.seiko_panel** %4, align 8
  %8 = load %struct.seiko_panel*, %struct.seiko_panel** %4, align 8
  %9 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.seiko_panel*, %struct.seiko_panel** %4, align 8
  %15 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @regulator_enable(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %22 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %50

27:                                               ; preds = %13
  %28 = call i32 @msleep(i32 100)
  %29 = load %struct.seiko_panel*, %struct.seiko_panel** %4, align 8
  %30 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regulator_enable(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %37 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %44

41:                                               ; preds = %27
  %42 = load %struct.seiko_panel*, %struct.seiko_panel** %4, align 8
  %43 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  store i32 0, i32* %2, align 4
  br label %50

44:                                               ; preds = %35
  %45 = load %struct.seiko_panel*, %struct.seiko_panel** %4, align 8
  %46 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @regulator_disable(i32 %47)
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %41, %20, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.seiko_panel* @to_seiko_panel(%struct.drm_panel*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
