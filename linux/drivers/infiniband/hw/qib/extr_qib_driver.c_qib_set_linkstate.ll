; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_driver.c_qib_set_linkstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_driver.c_qib_set_linkstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, i32, %struct.qib_devdata* }
%struct.qib_devdata = type { i32 (%struct.qib_pportdata*, i32, i32)* }

@QIB_IB_CFG_LSTATE = common dso_local global i32 0, align 4
@IB_LINKCMD_DOWN = common dso_local global i32 0, align 4
@IB_LINKINITCMD_NOP = common dso_local global i32 0, align 4
@IB_LINKINITCMD_POLL = common dso_local global i32 0, align 4
@IB_LINKINITCMD_SLEEP = common dso_local global i32 0, align 4
@IB_LINKINITCMD_DISABLE = common dso_local global i32 0, align 4
@QIBL_LINKARMED = common dso_local global i32 0, align 4
@QIBL_LINKINIT = common dso_local global i32 0, align 4
@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QIBL_LINKV = common dso_local global i32 0, align 4
@IB_LINKCMD_ARMED = common dso_local global i32 0, align 4
@IB_LINKCMD_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_set_linkstate(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca i64, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %10 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %9, i32 0, i32 2
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  store %struct.qib_devdata* %11, %struct.qib_devdata** %7, align 8
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %127 [
    i32 129, label %13
    i32 131, label %23
    i32 128, label %33
    i32 130, label %43
    i32 132, label %53
    i32 133, label %98
  ]

13:                                               ; preds = %2
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 0
  %16 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %15, align 8
  %17 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %18 = load i32, i32* @QIB_IB_CFG_LSTATE, align 4
  %19 = load i32, i32* @IB_LINKCMD_DOWN, align 4
  %20 = load i32, i32* @IB_LINKINITCMD_NOP, align 4
  %21 = or i32 %19, %20
  %22 = call i32 %16(%struct.qib_pportdata* %17, i32 %18, i32 %21)
  store i32 0, i32* %6, align 4
  br label %134

23:                                               ; preds = %2
  %24 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %25 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %24, i32 0, i32 0
  %26 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %25, align 8
  %27 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %28 = load i32, i32* @QIB_IB_CFG_LSTATE, align 4
  %29 = load i32, i32* @IB_LINKCMD_DOWN, align 4
  %30 = load i32, i32* @IB_LINKINITCMD_POLL, align 4
  %31 = or i32 %29, %30
  %32 = call i32 %26(%struct.qib_pportdata* %27, i32 %28, i32 %31)
  store i32 0, i32* %6, align 4
  br label %134

33:                                               ; preds = %2
  %34 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %35 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %34, i32 0, i32 0
  %36 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %35, align 8
  %37 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %38 = load i32, i32* @QIB_IB_CFG_LSTATE, align 4
  %39 = load i32, i32* @IB_LINKCMD_DOWN, align 4
  %40 = load i32, i32* @IB_LINKINITCMD_SLEEP, align 4
  %41 = or i32 %39, %40
  %42 = call i32 %36(%struct.qib_pportdata* %37, i32 %38, i32 %41)
  store i32 0, i32* %6, align 4
  br label %134

43:                                               ; preds = %2
  %44 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %45 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %44, i32 0, i32 0
  %46 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %45, align 8
  %47 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %48 = load i32, i32* @QIB_IB_CFG_LSTATE, align 4
  %49 = load i32, i32* @IB_LINKCMD_DOWN, align 4
  %50 = load i32, i32* @IB_LINKINITCMD_DISABLE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 %46(%struct.qib_pportdata* %47, i32 %48, i32 %51)
  store i32 0, i32* %6, align 4
  br label %134

53:                                               ; preds = %2
  %54 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %55 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @QIBL_LINKARMED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %134

61:                                               ; preds = %53
  %62 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %63 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @QIBL_LINKINIT, align 4
  %66 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %134

73:                                               ; preds = %61
  %74 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %75 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %74, i32 0, i32 1
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @spin_lock_irqsave(i32* %75, i64 %76)
  %78 = load i32, i32* @QIBL_LINKV, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %81 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %85 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %84, i32 0, i32 1
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %89 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %88, i32 0, i32 0
  %90 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %89, align 8
  %91 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %92 = load i32, i32* @QIB_IB_CFG_LSTATE, align 4
  %93 = load i32, i32* @IB_LINKCMD_ARMED, align 4
  %94 = load i32, i32* @IB_LINKINITCMD_NOP, align 4
  %95 = or i32 %93, %94
  %96 = call i32 %90(%struct.qib_pportdata* %91, i32 %92, i32 %95)
  %97 = load i32, i32* @QIBL_LINKV, align 4
  store i32 %97, i32* %5, align 4
  br label %130

98:                                               ; preds = %2
  %99 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %100 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  br label %134

106:                                              ; preds = %98
  %107 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %108 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @QIBL_LINKARMED, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %6, align 4
  br label %134

116:                                              ; preds = %106
  %117 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %118 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %117, i32 0, i32 0
  %119 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %118, align 8
  %120 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %121 = load i32, i32* @QIB_IB_CFG_LSTATE, align 4
  %122 = load i32, i32* @IB_LINKCMD_ACTIVE, align 4
  %123 = load i32, i32* @IB_LINKINITCMD_NOP, align 4
  %124 = or i32 %122, %123
  %125 = call i32 %119(%struct.qib_pportdata* %120, i32 %121, i32 %124)
  %126 = load i32, i32* @QIBL_LINKACTIVE, align 4
  store i32 %126, i32* %5, align 4
  br label %130

127:                                              ; preds = %2
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %134

130:                                              ; preds = %116, %73
  %131 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @qib_wait_linkstate(%struct.qib_pportdata* %131, i32 %132, i32 10)
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %130, %127, %113, %105, %70, %60, %43, %33, %23, %13
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qib_wait_linkstate(%struct.qib_pportdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
