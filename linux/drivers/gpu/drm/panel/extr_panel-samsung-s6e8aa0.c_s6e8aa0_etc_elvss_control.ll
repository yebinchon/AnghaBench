; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_etc_elvss_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_etc_elvss_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6e8aa0 = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s6e8aa0*)* @s6e8aa0_etc_elvss_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6e8aa0_etc_elvss_control(%struct.s6e8aa0* %0) #0 {
  %2 = alloca %struct.s6e8aa0*, align 8
  %3 = alloca i32, align 4
  store %struct.s6e8aa0* %0, %struct.s6e8aa0** %2, align 8
  %4 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %5 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 0, i32 149
  store i32 %9, i32* %3, align 4
  %10 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @s6e8aa0_dcs_write_seq(%struct.s6e8aa0* %10, i32 177, i32 4, i32 %11)
  ret void
}

declare dso_local i32 @s6e8aa0_dcs_write_seq(%struct.s6e8aa0*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
