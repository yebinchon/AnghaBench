; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_poweroff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dw_hdmi*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*)* @dw_hdmi_poweroff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_hdmi_poweroff(%struct.dw_hdmi* %0) #0 {
  %2 = alloca %struct.dw_hdmi*, align 8
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %2, align 8
  %3 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %4 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %10 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.dw_hdmi*, i32)*, i32 (%struct.dw_hdmi*, i32)** %13, align 8
  %15 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %16 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %17 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 %14(%struct.dw_hdmi* %15, i32 %19)
  %21 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %22 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %24

24:                                               ; preds = %8, %1
  %25 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %26 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
