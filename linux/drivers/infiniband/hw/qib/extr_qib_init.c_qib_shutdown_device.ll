; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_shutdown_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_shutdown_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32 (%struct.qib_pportdata*)*, i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)*, %struct.qib_pportdata*, i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_devdata*, i32)* }
%struct.qib_pportdata = type { i32, i32*, i32*, i32 }

@QIB_SHUTDOWN = common dso_local global i32 0, align 4
@QIBL_LINKDOWN = common dso_local global i32 0, align 4
@QIBL_LINKINIT = common dso_local global i32 0, align 4
@QIBL_LINKARMED = common dso_local global i32 0, align 4
@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@QIBL_LINKV = common dso_local global i32 0, align 4
@QIB_STATUS_IB_CONF = common dso_local global i32 0, align 4
@QIB_STATUS_IB_READY = common dso_local global i32 0, align 4
@QIB_INITTED = common dso_local global i32 0, align 4
@QIB_RCVCTRL_TAILUPD_DIS = common dso_local global i32 0, align 4
@QIB_RCVCTRL_CTXT_DIS = common dso_local global i32 0, align 4
@QIB_RCVCTRL_INTRAVAIL_DIS = common dso_local global i32 0, align 4
@QIB_RCVCTRL_PKEY_ENB = common dso_local global i32 0, align 4
@QIB_SENDCTRL_CLEAR = common dso_local global i32 0, align 4
@QIB_HAS_SEND_DMA = common dso_local global i32 0, align 4
@QIB_SENDCTRL_AVAIL_DIS = common dso_local global i32 0, align 4
@QIB_SENDCTRL_SEND_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_shutdown_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_shutdown_device(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %5 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @QIB_SHUTDOWN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %169

12:                                               ; preds = %1
  %13 = load i32, i32* @QIB_SHUTDOWN, align 4
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %60, %12
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %21 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %18
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %26 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %25, i32 0, i32 5
  %27 = load %struct.qib_pportdata*, %struct.qib_pportdata** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %27, i64 %29
  store %struct.qib_pportdata* %30, %struct.qib_pportdata** %3, align 8
  %31 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %32 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %31, i32 0, i32 3
  %33 = call i32 @spin_lock_irq(i32* %32)
  %34 = load i32, i32* @QIBL_LINKDOWN, align 4
  %35 = load i32, i32* @QIBL_LINKINIT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @QIBL_LINKARMED, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @QIBL_LINKV, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %45 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %49 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %48, i32 0, i32 3
  %50 = call i32 @spin_unlock_irq(i32* %49)
  %51 = load i32, i32* @QIB_STATUS_IB_CONF, align 4
  %52 = load i32, i32* @QIB_STATUS_IB_READY, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %56 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %54
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %24
  %61 = load i32, i32* %4, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %18

63:                                               ; preds = %18
  %64 = load i32, i32* @QIB_INITTED, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %67 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %71 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %70, i32 0, i32 7
  %72 = load i32 (%struct.qib_devdata*, i32)*, i32 (%struct.qib_devdata*, i32)** %71, align 8
  %73 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %74 = call i32 %72(%struct.qib_devdata* %73, i32 0)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %106, %63
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %78 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %75
  %82 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %83 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %82, i32 0, i32 5
  %84 = load %struct.qib_pportdata*, %struct.qib_pportdata** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %84, i64 %86
  store %struct.qib_pportdata* %87, %struct.qib_pportdata** %3, align 8
  %88 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %89 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %88, i32 0, i32 6
  %90 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %89, align 8
  %91 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %92 = load i32, i32* @QIB_RCVCTRL_TAILUPD_DIS, align 4
  %93 = load i32, i32* @QIB_RCVCTRL_CTXT_DIS, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @QIB_RCVCTRL_INTRAVAIL_DIS, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @QIB_RCVCTRL_PKEY_ENB, align 4
  %98 = or i32 %96, %97
  %99 = call i32 %90(%struct.qib_pportdata* %91, i32 %98, i32 -1)
  %100 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %101 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %100, i32 0, i32 3
  %102 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %101, align 8
  %103 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %104 = load i32, i32* @QIB_SENDCTRL_CLEAR, align 4
  %105 = call i32 %102(%struct.qib_pportdata* %103, i32 %104)
  br label %106

106:                                              ; preds = %81
  %107 = load i32, i32* %4, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %75

109:                                              ; preds = %75
  %110 = call i32 @udelay(i32 20)
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %166, %109
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %114 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ult i32 %112, %115
  br i1 %116, label %117, label %169

117:                                              ; preds = %111
  %118 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %119 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %118, i32 0, i32 5
  %120 = load %struct.qib_pportdata*, %struct.qib_pportdata** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %120, i64 %122
  store %struct.qib_pportdata* %123, %struct.qib_pportdata** %3, align 8
  %124 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %125 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %124, i32 0, i32 4
  %126 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %125, align 8
  %127 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %128 = call i32 %126(%struct.qib_pportdata* %127, i32 0)
  %129 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %130 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @QIB_HAS_SEND_DMA, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %117
  %136 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %137 = call i32 @qib_teardown_sdma(%struct.qib_pportdata* %136)
  br label %138

138:                                              ; preds = %135, %117
  %139 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %140 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %139, i32 0, i32 3
  %141 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %140, align 8
  %142 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %143 = load i32, i32* @QIB_SENDCTRL_AVAIL_DIS, align 4
  %144 = load i32, i32* @QIB_SENDCTRL_SEND_DIS, align 4
  %145 = or i32 %143, %144
  %146 = call i32 %141(%struct.qib_pportdata* %142, i32 %145)
  %147 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %148 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %147, i32 0, i32 2
  %149 = load i32 (%struct.qib_pportdata*)*, i32 (%struct.qib_pportdata*)** %148, align 8
  %150 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %151 = call i32 %149(%struct.qib_pportdata* %150)
  %152 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %153 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %163

156:                                              ; preds = %138
  %157 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %158 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @destroy_workqueue(i32* %159)
  %161 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %162 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %161, i32 0, i32 2
  store i32* null, i32** %162, align 8
  br label %163

163:                                              ; preds = %156, %138
  %164 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %165 = call i32 @qib_free_pportdata(%struct.qib_pportdata* %164)
  br label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %4, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %4, align 4
  br label %111

169:                                              ; preds = %11, %111
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @qib_teardown_sdma(%struct.qib_pportdata*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @qib_free_pportdata(%struct.qib_pportdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
