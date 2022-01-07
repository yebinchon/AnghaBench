; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop.c_flexcop_dvb_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop.c_flexcop_dvb_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32, i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32*)*, i32 (%struct.TYPE_5__*)* }

@FC_STATE_DVB_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"deinitialized dvb stuff\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flexcop_device*)* @flexcop_dvb_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flexcop_dvb_exit(%struct.flexcop_device* %0) #0 {
  %2 = alloca %struct.flexcop_device*, align 8
  store %struct.flexcop_device* %0, %struct.flexcop_device** %2, align 8
  %3 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %4 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @FC_STATE_DVB_INIT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %54

9:                                                ; preds = %1
  %10 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %11 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %10, i32 0, i32 6
  %12 = call i32 @dvb_net_release(i32* %11)
  %13 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %14 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %16, align 8
  %18 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %19 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 %17(%struct.TYPE_5__* %20)
  %22 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %23 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_5__*, i32*)*, i32 (%struct.TYPE_5__*, i32*)** %25, align 8
  %27 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %28 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %31 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %30, i32 0, i32 5
  %32 = call i32 %26(%struct.TYPE_5__* %29, i32* %31)
  %33 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %34 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_5__*, i32*)*, i32 (%struct.TYPE_5__*, i32*)** %36, align 8
  %38 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %39 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %42 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %41, i32 0, i32 4
  %43 = call i32 %37(%struct.TYPE_5__* %40, i32* %42)
  %44 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %45 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %44, i32 0, i32 3
  %46 = call i32 @dvb_dmxdev_release(i32* %45)
  %47 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %48 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %47, i32 0, i32 2
  %49 = call i32 @dvb_dmx_release(%struct.TYPE_6__* %48)
  %50 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %51 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %50, i32 0, i32 1
  %52 = call i32 @dvb_unregister_adapter(i32* %51)
  %53 = call i32 @deb_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %9, %1
  %55 = load i32, i32* @FC_STATE_DVB_INIT, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %58 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  ret void
}

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_6__*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

declare dso_local i32 @deb_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
