; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c___dw_hdmi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c___dw_hdmi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32, %struct.TYPE_2__*, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@HDMI_IH_MUTE_PHY_STAT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*)* @__dw_hdmi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dw_hdmi_remove(%struct.dw_hdmi* %0) #0 {
  %2 = alloca %struct.dw_hdmi*, align 8
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %2, align 8
  %3 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %4 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %3, i32 0, i32 6
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %9 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @IS_ERR(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %15 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @platform_device_unregister(i64 %16)
  br label %18

18:                                               ; preds = %13, %7, %1
  %19 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %20 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @IS_ERR(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %26 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @platform_device_unregister(i64 %27)
  br label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %31 = load i32, i32* @HDMI_IH_MUTE_PHY_STAT0, align 4
  %32 = call i32 @hdmi_writeb(%struct.dw_hdmi* %30, i32 -1, i32 %31)
  %33 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %34 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @clk_disable_unprepare(i64 %35)
  %37 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %38 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @clk_disable_unprepare(i64 %39)
  %41 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %42 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %47 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @clk_disable_unprepare(i64 %48)
  br label %50

50:                                               ; preds = %45, %29
  %51 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %52 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = icmp ne %struct.TYPE_2__* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %57 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @i2c_del_adapter(i32* %59)
  br label %66

61:                                               ; preds = %50
  %62 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %63 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @i2c_put_adapter(i32 %64)
  br label %66

66:                                               ; preds = %61, %55
  ret void
}

declare dso_local i32 @IS_ERR(i64) #1

declare dso_local i32 @platform_device_unregister(i64) #1

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @i2c_put_adapter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
