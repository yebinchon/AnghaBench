; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_setup_7220_setextled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_setup_7220_setextled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, %struct.qib_devdata* }
%struct.qib_devdata = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@QIB_LED_PHYS = common dso_local global i32 0, align 4
@IB_PHYSPORTSTATE_LINKUP = common dso_local global i64 0, align 8
@IB_PHYSPORTSTATE_DISABLED = common dso_local global i64 0, align 8
@QIB_LED_LOG = common dso_local global i32 0, align 4
@IB_PORT_ACTIVE = common dso_local global i64 0, align 8
@IB_PORT_DOWN = common dso_local global i64 0, align 8
@kr_ibcstatus = common dso_local global i32 0, align 4
@EXTCtrl = common dso_local global i32 0, align 4
@LEDPriPortGreenOn = common dso_local global i32 0, align 4
@LEDPriPortYellowOn = common dso_local global i32 0, align 4
@IBA7220_LEDBLINK_ON_SHIFT = common dso_local global i32 0, align 4
@IBA7220_LEDBLINK_OFF_SHIFT = common dso_local global i32 0, align 4
@kr_extctrl = common dso_local global i32 0, align 4
@kr_rcvpktledcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i64)* @qib_setup_7220_setextled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_setup_7220_setextled(%struct.qib_pportdata* %0, i64 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %13 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %12, i32 0, i32 1
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %13, align 8
  store %struct.qib_devdata* %14, %struct.qib_devdata** %5, align 8
  store i64 0, i64* %7, align 8
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %133

20:                                               ; preds = %2
  %21 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %22 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %20
  %26 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %27 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @QIB_LED_PHYS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* @IB_PHYSPORTSTATE_LINKUP, align 8
  br label %36

34:                                               ; preds = %25
  %35 = load i64, i64* @IB_PHYSPORTSTATE_DISABLED, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  store i64 %37, i64* %10, align 8
  %38 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %39 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @QIB_LED_LOG, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i64, i64* @IB_PORT_ACTIVE, align 8
  br label %48

46:                                               ; preds = %36
  %47 = load i64, i64* @IB_PORT_DOWN, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i64 [ %45, %44 ], [ %47, %46 ]
  store i64 %49, i64* %9, align 8
  br label %63

50:                                               ; preds = %20
  %51 = load i64, i64* %4, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %55 = load i32, i32* @kr_ibcstatus, align 4
  %56 = call i64 @qib_read_kreg64(%struct.qib_devdata* %54, i32 %55)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @qib_7220_phys_portstate(i64 %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @qib_7220_iblink_state(i64 %59)
  store i64 %60, i64* %9, align 8
  br label %62

61:                                               ; preds = %50
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %62

62:                                               ; preds = %61, %53
  br label %63

63:                                               ; preds = %62, %48
  %64 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %65 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %71 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @EXTCtrl, align 4
  %76 = load i32, i32* @LEDPriPortGreenOn, align 4
  %77 = call i64 @SYM_MASK(i32 %75, i32 %76)
  %78 = load i32, i32* @EXTCtrl, align 4
  %79 = load i32, i32* @LEDPriPortYellowOn, align 4
  %80 = call i64 @SYM_MASK(i32 %78, i32 %79)
  %81 = or i64 %77, %80
  %82 = xor i64 %81, -1
  %83 = and i64 %74, %82
  store i64 %83, i64* %6, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @IB_PHYSPORTSTATE_LINKUP, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %63
  %88 = load i32, i32* @EXTCtrl, align 4
  %89 = load i32, i32* @LEDPriPortGreenOn, align 4
  %90 = call i64 @SYM_MASK(i32 %88, i32 %89)
  %91 = load i64, i64* %6, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %6, align 8
  %93 = load i32, i32* @IBA7220_LEDBLINK_ON_SHIFT, align 4
  %94 = zext i32 %93 to i64
  %95 = shl i64 16650000, %94
  %96 = load i32, i32* @IBA7220_LEDBLINK_OFF_SHIFT, align 4
  %97 = zext i32 %96 to i64
  %98 = shl i64 46875000, %97
  %99 = or i64 %95, %98
  store i64 %99, i64* %7, align 8
  br label %100

100:                                              ; preds = %87, %63
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* @IB_PORT_ACTIVE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i32, i32* @EXTCtrl, align 4
  %106 = load i32, i32* @LEDPriPortYellowOn, align 4
  %107 = call i64 @SYM_MASK(i32 %105, i32 %106)
  %108 = load i64, i64* %6, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %6, align 8
  br label %110

110:                                              ; preds = %104, %100
  %111 = load i64, i64* %6, align 8
  %112 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %113 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i64 %111, i64* %115, align 8
  %116 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %117 = load i32, i32* @kr_extctrl, align 4
  %118 = load i64, i64* %6, align 8
  %119 = call i32 @qib_write_kreg(%struct.qib_devdata* %116, i32 %117, i64 %118)
  %120 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %121 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i64, i64* %11, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  %126 = load i64, i64* %7, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %110
  %129 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %130 = load i32, i32* @kr_rcvpktledcnt, align 4
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @qib_write_kreg(%struct.qib_devdata* %129, i32 %130, i64 %131)
  br label %133

133:                                              ; preds = %19, %128, %110
  ret void
}

declare dso_local i64 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i64 @qib_7220_phys_portstate(i64) #1

declare dso_local i64 @qib_7220_iblink_state(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @SYM_MASK(i32, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
