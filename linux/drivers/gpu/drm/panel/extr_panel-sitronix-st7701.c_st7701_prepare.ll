; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7701.c_st7701_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7701.c_st7701_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.st7701 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @st7701_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st7701_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.st7701*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.st7701* @panel_to_st7701(%struct.drm_panel* %6)
  store %struct.st7701* %7, %struct.st7701** %4, align 8
  %8 = load %struct.st7701*, %struct.st7701** %4, align 8
  %9 = getelementptr inbounds %struct.st7701, %struct.st7701* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @gpiod_set_value(i32 %10, i32 0)
  %12 = load %struct.st7701*, %struct.st7701** %4, align 8
  %13 = getelementptr inbounds %struct.st7701, %struct.st7701* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.st7701*, %struct.st7701** %4, align 8
  %18 = getelementptr inbounds %struct.st7701, %struct.st7701* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regulator_bulk_enable(i32 %16, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %34

25:                                               ; preds = %1
  %26 = call i32 @msleep(i32 20)
  %27 = load %struct.st7701*, %struct.st7701** %4, align 8
  %28 = getelementptr inbounds %struct.st7701, %struct.st7701* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @gpiod_set_value(i32 %29, i32 1)
  %31 = call i32 @msleep(i32 150)
  %32 = load %struct.st7701*, %struct.st7701** %4, align 8
  %33 = call i32 @st7701_init_sequence(%struct.st7701* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %25, %23
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.st7701* @panel_to_st7701(%struct.drm_panel*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @st7701_init_sequence(%struct.st7701*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
