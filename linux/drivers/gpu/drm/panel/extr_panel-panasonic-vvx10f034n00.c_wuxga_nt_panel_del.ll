; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-panasonic-vvx10f034n00.c_wuxga_nt_panel_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-panasonic-vvx10f034n00.c_wuxga_nt_panel_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wuxga_nt_panel = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wuxga_nt_panel*)* @wuxga_nt_panel_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wuxga_nt_panel_del(%struct.wuxga_nt_panel* %0) #0 {
  %2 = alloca %struct.wuxga_nt_panel*, align 8
  store %struct.wuxga_nt_panel* %0, %struct.wuxga_nt_panel** %2, align 8
  %3 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %2, align 8
  %4 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %2, align 8
  %10 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %9, i32 0, i32 1
  %11 = call i32 @drm_panel_remove(%struct.TYPE_4__* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %2, align 8
  %14 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %2, align 8
  %19 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @put_device(i32* %21)
  br label %23

23:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @drm_panel_remove(%struct.TYPE_4__*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
