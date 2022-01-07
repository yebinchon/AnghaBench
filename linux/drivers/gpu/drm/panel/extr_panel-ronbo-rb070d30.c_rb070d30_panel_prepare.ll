; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ronbo-rb070d30.c_rb070d30_panel_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ronbo-rb070d30.c_rb070d30_panel_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.rb070d30_panel = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to enable supply: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @rb070d30_panel_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb070d30_panel_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.rb070d30_panel*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.rb070d30_panel* @panel_to_rb070d30_panel(%struct.drm_panel* %6)
  store %struct.rb070d30_panel* %7, %struct.rb070d30_panel** %4, align 8
  %8 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %9 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @regulator_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %16 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @DRM_DEV_ERROR(i32* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %1
  %23 = call i32 @msleep(i32 20)
  %24 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %25 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gpiod_set_value(i32 %27, i32 1)
  %29 = call i32 @msleep(i32 20)
  %30 = load %struct.rb070d30_panel*, %struct.rb070d30_panel** %4, align 8
  %31 = getelementptr inbounds %struct.rb070d30_panel, %struct.rb070d30_panel* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @gpiod_set_value(i32 %33, i32 1)
  %35 = call i32 @msleep(i32 20)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %22, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.rb070d30_panel* @panel_to_rb070d30_panel(%struct.drm_panel*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
