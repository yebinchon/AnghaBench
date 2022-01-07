; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-seiko-43wvf1g.c_seiko_panel_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-seiko-43wvf1g.c_seiko_panel_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.seiko_panel = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @seiko_panel_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seiko_panel_disable(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.seiko_panel*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %5 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %6 = call %struct.seiko_panel* @to_seiko_panel(%struct.drm_panel* %5)
  store %struct.seiko_panel* %6, %struct.seiko_panel** %4, align 8
  %7 = load %struct.seiko_panel*, %struct.seiko_panel** %4, align 8
  %8 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.seiko_panel*, %struct.seiko_panel** %4, align 8
  %14 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %19 = load %struct.seiko_panel*, %struct.seiko_panel** %4, align 8
  %20 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %18, i32* %23, align 4
  %24 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %25 = load %struct.seiko_panel*, %struct.seiko_panel** %4, align 8
  %26 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %24
  store i32 %31, i32* %29, align 4
  %32 = load %struct.seiko_panel*, %struct.seiko_panel** %4, align 8
  %33 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = call i32 @backlight_update_status(%struct.TYPE_4__* %34)
  br label %36

36:                                               ; preds = %17, %12
  %37 = load %struct.seiko_panel*, %struct.seiko_panel** %4, align 8
  %38 = getelementptr inbounds %struct.seiko_panel, %struct.seiko_panel* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.seiko_panel* @to_seiko_panel(%struct.drm_panel*) #1

declare dso_local i32 @backlight_update_status(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
