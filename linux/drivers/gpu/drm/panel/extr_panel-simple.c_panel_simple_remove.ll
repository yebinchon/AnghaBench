; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.panel_simple = type { %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @panel_simple_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_simple_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.panel_simple*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.panel_simple* @dev_get_drvdata(%struct.device* %4)
  store %struct.panel_simple* %5, %struct.panel_simple** %3, align 8
  %6 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %7 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %6, i32 0, i32 2
  %8 = call i32 @drm_panel_remove(i32* %7)
  %9 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %10 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %9, i32 0, i32 2
  %11 = call i32 @panel_simple_disable(i32* %10)
  %12 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %13 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %12, i32 0, i32 2
  %14 = call i32 @panel_simple_unprepare(i32* %13)
  %15 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %16 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %21 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @put_device(i32* %23)
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %27 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.panel_simple*, %struct.panel_simple** %3, align 8
  %32 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @put_device(i32* %34)
  br label %36

36:                                               ; preds = %30, %25
  ret i32 0
}

declare dso_local %struct.panel_simple* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @drm_panel_remove(i32*) #1

declare dso_local i32 @panel_simple_disable(i32*) #1

declare dso_local i32 @panel_simple_unprepare(i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
