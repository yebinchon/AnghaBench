; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_poll_cam_gone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_poll_cam_gone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_private = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32)* }

@DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE = common dso_local global i32 0, align 4
@DVB_CA_EN50221_POLL_CAM_PRESENT = common dso_local global i32 0, align 4
@DVB_CA_SLOTSTATE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_private*, i32)* @dvb_ca_en50221_poll_cam_gone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_ca_en50221_poll_cam_gone(%struct.dvb_ca_private* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_ca_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_ca_private* %0, %struct.dvb_ca_private** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %2
  %14 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.TYPE_4__*, i32, i32)* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %13
  %21 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %24, align 8
  %26 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %3, align 8
  %27 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 %25(%struct.TYPE_4__* %28, i32 %29, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_PRESENT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %20
  %36 = load i32, i32* @DVB_CA_SLOTSTATE_NONE, align 4
  %37 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %3, align 8
  %38 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %36, i32* %43, align 4
  %44 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %3, align 8
  %45 = call i32 @dvb_ca_en50221_thread_update_delay(%struct.dvb_ca_private* %44)
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %35, %20
  br label %47

47:                                               ; preds = %46, %13, %2
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @dvb_ca_en50221_thread_update_delay(%struct.dvb_ca_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
