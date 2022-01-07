; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63m0.c_s6e63m0_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63m0.c_s6e63m0_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.s6e63m0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @s6e63m0_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6e63m0_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.s6e63m0*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.s6e63m0* @panel_to_s6e63m0(%struct.drm_panel* %6)
  store %struct.s6e63m0* %7, %struct.s6e63m0** %4, align 8
  %8 = load %struct.s6e63m0*, %struct.s6e63m0** %4, align 8
  %9 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.s6e63m0*, %struct.s6e63m0** %4, align 8
  %15 = call i32 @s6e63m0_power_on(%struct.s6e63m0* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %13
  %21 = load %struct.s6e63m0*, %struct.s6e63m0** %4, align 8
  %22 = call i32 @s6e63m0_init(%struct.s6e63m0* %21)
  %23 = load %struct.s6e63m0*, %struct.s6e63m0** %4, align 8
  %24 = call i32 @s6e63m0_clear_error(%struct.s6e63m0* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %29 = call i32 @s6e63m0_unprepare(%struct.drm_panel* %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.s6e63m0*, %struct.s6e63m0** %4, align 8
  %32 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %18, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.s6e63m0* @panel_to_s6e63m0(%struct.drm_panel*) #1

declare dso_local i32 @s6e63m0_power_on(%struct.s6e63m0*) #1

declare dso_local i32 @s6e63m0_init(%struct.s6e63m0*) #1

declare dso_local i32 @s6e63m0_clear_error(%struct.s6e63m0*) #1

declare dso_local i32 @s6e63m0_unprepare(%struct.drm_panel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
