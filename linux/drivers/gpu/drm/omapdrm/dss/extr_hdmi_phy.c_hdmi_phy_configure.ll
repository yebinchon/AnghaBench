; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_phy.c_hdmi_phy_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi_phy.c_hdmi_phy_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_phy_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@HDMI_TXPHY_TX_CTRL = common dso_local global i32 0, align 4
@HDMI_TXPHY_BIST_CONTROL = common dso_local global i32 0, align 4
@HDMI_TXPHY_DIGITAL_CTRL = common dso_local global i32 0, align 4
@HDMI_TXPHY_POWER_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_phy_configure(%struct.hdmi_phy_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.hdmi_phy_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.hdmi_phy_data* %0, %struct.hdmi_phy_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %4, align 8
  %9 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @HDMI_TXPHY_TX_CTRL, align 4
  %12 = call i32 @hdmi_read_reg(i32 %10, i32 %11)
  %13 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %4, align 8
  %14 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %4, align 8
  %21 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @HDMI_TXPHY_BIST_CONTROL, align 4
  %24 = call i32 @REG_FLD_MOD(i32 %22, i32 %23, i32 1, i32 11, i32 11)
  br label %25

25:                                               ; preds = %19, %3
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %42

30:                                               ; preds = %25
  %31 = load i64, i64* %5, align 8
  %32 = udiv i64 %31, 10
  %33 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %4, align 8
  %34 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %32, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 1, i32* %7, align 4
  br label %41

40:                                               ; preds = %30
  store i32 2, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %39
  br label %42

42:                                               ; preds = %41, %29
  %43 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %4, align 8
  %44 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @HDMI_TXPHY_TX_CTRL, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @REG_FLD_MOD(i32 %45, i32 %46, i32 %47, i32 31, i32 30)
  %49 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %4, align 8
  %50 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @HDMI_TXPHY_DIGITAL_CTRL, align 4
  %53 = call i32 @hdmi_write_reg(i32 %51, i32 %52, i32 -268435456)
  %54 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %4, align 8
  %55 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %42
  %61 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %4, align 8
  %62 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @HDMI_TXPHY_POWER_CTRL, align 4
  %65 = call i32 @REG_FLD_MOD(i32 %63, i32 %64, i32 11, i32 3, i32 0)
  br label %66

66:                                               ; preds = %60, %42
  %67 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %4, align 8
  %68 = call i32 @hdmi_phy_configure_lanes(%struct.hdmi_phy_data* %67)
  ret i32 0
}

declare dso_local i32 @hdmi_read_reg(i32, i32) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @hdmi_write_reg(i32, i32, i32) #1

declare dso_local i32 @hdmi_phy_configure_lanes(%struct.hdmi_phy_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
