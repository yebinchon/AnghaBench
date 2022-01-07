; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_get_current_backlight_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_get_current_backlight_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.abm* }
%struct.abm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.abm*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_get_current_backlight_pwm(%struct.dc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.abm*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  %5 = load %struct.dc*, %struct.dc** %3, align 8
  %6 = getelementptr inbounds %struct.dc, %struct.dc* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.abm*, %struct.abm** %8, align 8
  store %struct.abm* %9, %struct.abm** %4, align 8
  %10 = load %struct.abm*, %struct.abm** %4, align 8
  %11 = icmp ne %struct.abm* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.abm*, %struct.abm** %4, align 8
  %14 = getelementptr inbounds %struct.abm, %struct.abm* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct.abm*)*, i32 (%struct.abm*)** %16, align 8
  %18 = load %struct.abm*, %struct.abm** %4, align 8
  %19 = call i32 %17(%struct.abm* %18)
  store i32 %19, i32* %2, align 4
  br label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %12
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
