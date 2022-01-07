; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dw_hdmi*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*)* @dw_hdmi_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_hdmi_init_hw(%struct.dw_hdmi* %0) #0 {
  %2 = alloca %struct.dw_hdmi*, align 8
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %2, align 8
  %3 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %4 = call i32 @initialize_hdmi_ih_mutes(%struct.dw_hdmi* %3)
  %5 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %6 = call i32 @dw_hdmi_i2c_init(%struct.dw_hdmi* %5)
  %7 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %8 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (%struct.dw_hdmi*, i32)*, i32 (%struct.dw_hdmi*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.dw_hdmi*, i32)* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %16 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.dw_hdmi*, i32)*, i32 (%struct.dw_hdmi*, i32)** %19, align 8
  %21 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %22 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %23 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %20(%struct.dw_hdmi* %21, i32 %25)
  br label %27

27:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @initialize_hdmi_ih_mutes(%struct.dw_hdmi*) #1

declare dso_local i32 @dw_hdmi_i2c_init(%struct.dw_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
