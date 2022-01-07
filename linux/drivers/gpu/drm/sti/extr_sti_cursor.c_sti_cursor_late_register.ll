; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_cursor.c_sti_cursor_late_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_cursor.c_sti_cursor_late_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sti_plane = type { i32 }
%struct.sti_cursor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*)* @sti_cursor_late_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_cursor_late_register(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.sti_plane*, align 8
  %4 = alloca %struct.sti_cursor*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %5 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %6 = call %struct.sti_plane* @to_sti_plane(%struct.drm_plane* %5)
  store %struct.sti_plane* %6, %struct.sti_plane** %3, align 8
  %7 = load %struct.sti_plane*, %struct.sti_plane** %3, align 8
  %8 = call %struct.sti_cursor* @to_sti_cursor(%struct.sti_plane* %7)
  store %struct.sti_cursor* %8, %struct.sti_cursor** %4, align 8
  %9 = load %struct.sti_cursor*, %struct.sti_cursor** %4, align 8
  %10 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %11 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cursor_debugfs_init(%struct.sti_cursor* %9, i32 %14)
  ret i32 %15
}

declare dso_local %struct.sti_plane* @to_sti_plane(%struct.drm_plane*) #1

declare dso_local %struct.sti_cursor* @to_sti_cursor(%struct.sti_plane*) #1

declare dso_local i32 @cursor_debugfs_init(%struct.sti_cursor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
