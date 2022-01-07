; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_etc_power_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_etc_power_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6e8aa0 = type { i32 }

@s6e8aa0_etc_power_control.pwr142 = internal constant [8 x i32] [i32 244, i32 207, i32 10, i32 18, i32 16, i32 30, i32 51, i32 2], align 16
@s6e8aa0_etc_power_control.pwr32 = internal constant [8 x i32] [i32 244, i32 207, i32 10, i32 21, i32 16, i32 25, i32 51, i32 2], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s6e8aa0*)* @s6e8aa0_etc_power_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6e8aa0_etc_power_control(%struct.s6e8aa0* %0) #0 {
  %2 = alloca %struct.s6e8aa0*, align 8
  store %struct.s6e8aa0* %0, %struct.s6e8aa0** %2, align 8
  %3 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %4 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 142
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %9 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @s6e8aa0_etc_power_control.pwr32, i64 0, i64 0))
  %10 = call i32 @s6e8aa0_dcs_write(%struct.s6e8aa0* %8, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @s6e8aa0_etc_power_control.pwr32, i64 0, i64 0), i32 %9)
  br label %15

11:                                               ; preds = %1
  %12 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %13 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @s6e8aa0_etc_power_control.pwr142, i64 0, i64 0))
  %14 = call i32 @s6e8aa0_dcs_write(%struct.s6e8aa0* %12, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @s6e8aa0_etc_power_control.pwr142, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %7
  ret void
}

declare dso_local i32 @s6e8aa0_dcs_write(%struct.s6e8aa0*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
