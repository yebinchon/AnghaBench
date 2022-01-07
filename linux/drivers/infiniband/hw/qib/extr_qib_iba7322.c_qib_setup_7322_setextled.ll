; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_setup_7322_setextled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_setup_7322_setextled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, i32, %struct.qib_devdata* }
%struct.qib_devdata = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@QIB_LED_PHYS = common dso_local global i32 0, align 4
@QIB_LED_LOG = common dso_local global i32 0, align 4
@krp_ibcstatus_a = common dso_local global i32 0, align 4
@IB_PHYSPORTSTATE_LINKUP = common dso_local global i64 0, align 8
@IB_PORT_ACTIVE = common dso_local global i64 0, align 8
@ExtLED_IB1_MASK = common dso_local global i32 0, align 4
@ExtLED_IB2_MASK = common dso_local global i32 0, align 4
@ExtLED_IB1_GRN = common dso_local global i32 0, align 4
@ExtLED_IB2_GRN = common dso_local global i32 0, align 4
@IBA7322_LEDBLINK_ON_SHIFT = common dso_local global i32 0, align 4
@IBA7322_LEDBLINK_OFF_SHIFT = common dso_local global i32 0, align 4
@ExtLED_IB1_YEL = common dso_local global i32 0, align 4
@ExtLED_IB2_YEL = common dso_local global i32 0, align 4
@kr_extctrl = common dso_local global i32 0, align 4
@krp_rcvpktledcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i64)* @qib_setup_7322_setextled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_setup_7322_setextled(%struct.qib_pportdata* %0, i64 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %13 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %12, i32 0, i32 2
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %13, align 8
  store %struct.qib_devdata* %14, %struct.qib_devdata** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %146

20:                                               ; preds = %2
  %21 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %22 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %27 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @QIB_LED_PHYS, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %32 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @QIB_LED_LOG, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %10, align 4
  br label %55

36:                                               ; preds = %20
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %41 = load i32, i32* @krp_ibcstatus_a, align 4
  %42 = call i32 @qib_read_kreg_port(%struct.qib_pportdata* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @qib_7322_phys_portstate(i32 %43)
  %45 = load i64, i64* @IB_PHYSPORTSTATE_LINKUP, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @qib_7322_iblink_state(i32 %48)
  %50 = load i64, i64* @IB_PORT_ACTIVE, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %10, align 4
  br label %54

53:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %53, %39
  br label %55

55:                                               ; preds = %54, %25
  %56 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %57 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %63 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %68 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %55
  %72 = load i32, i32* @ExtLED_IB1_MASK, align 4
  %73 = xor i32 %72, -1
  br label %77

74:                                               ; preds = %55
  %75 = load i32, i32* @ExtLED_IB2_MASK, align 4
  %76 = xor i32 %75, -1
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i32 [ %73, %71 ], [ %76, %74 ]
  %79 = and i32 %66, %78
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %77
  %83 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %84 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @ExtLED_IB1_GRN, align 4
  br label %91

89:                                               ; preds = %82
  %90 = load i32, i32* @ExtLED_IB2_GRN, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* @IBA7322_LEDBLINK_ON_SHIFT, align 4
  %96 = zext i32 %95 to i64
  %97 = shl i64 16650000, %96
  %98 = load i32, i32* @IBA7322_LEDBLINK_OFF_SHIFT, align 4
  %99 = zext i32 %98 to i64
  %100 = shl i64 46875000, %99
  %101 = or i64 %97, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %91, %77
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %103
  %107 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %108 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* @ExtLED_IB1_YEL, align 4
  br label %115

113:                                              ; preds = %106
  %114 = load i32, i32* @ExtLED_IB2_YEL, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %115, %103
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %122 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store i32 %120, i32* %124, align 4
  %125 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %126 = load i32, i32* @kr_extctrl, align 4
  %127 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %128 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @qib_write_kreg(%struct.qib_devdata* %125, i32 %126, i32 %131)
  %133 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %134 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i64, i64* %9, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %119
  %142 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %143 = load i32, i32* @krp_rcvpktledcnt, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %19, %141, %119
  ret void
}

declare dso_local i32 @qib_read_kreg_port(%struct.qib_pportdata*, i32) #1

declare dso_local i64 @qib_7322_phys_portstate(i32) #1

declare dso_local i64 @qib_7322_iblink_state(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qib_write_kreg_port(%struct.qib_pportdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
