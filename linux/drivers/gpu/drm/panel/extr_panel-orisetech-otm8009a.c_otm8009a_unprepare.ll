; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-orisetech-otm8009a.c_otm8009a_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-orisetech-otm8009a.c_otm8009a_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.otm8009a = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @otm8009a_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otm8009a_unprepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.otm8009a*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %5 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %6 = call %struct.otm8009a* @panel_to_otm8009a(%struct.drm_panel* %5)
  store %struct.otm8009a* %6, %struct.otm8009a** %4, align 8
  %7 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %8 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %14 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %19 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @gpiod_set_value_cansleep(i64 %20, i32 1)
  %22 = call i32 @msleep(i32 20)
  br label %23

23:                                               ; preds = %17, %12
  %24 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %25 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regulator_disable(i32 %26)
  %28 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %29 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %23, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.otm8009a* @panel_to_otm8009a(%struct.drm_panel*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
