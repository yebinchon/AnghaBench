; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_camready_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_camready_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.dvb_ca_private* }
%struct.dvb_ca_private = type { %struct.dvb_ca_slot* }
%struct.dvb_ca_slot = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"CAMREADY IRQ slot:%i\0A\00", align 1
@DVB_CA_SLOTSTATE_WAITREADY = common dso_local global i64 0, align 8
@DVB_CA_SLOTSTATE_VALIDATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvb_ca_en50221_camready_irq(%struct.dvb_ca_en50221* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_ca_en50221*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_ca_private*, align 8
  %6 = alloca %struct.dvb_ca_slot*, align 8
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %7, i32 0, i32 0
  %9 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %8, align 8
  store %struct.dvb_ca_private* %9, %struct.dvb_ca_private** %5, align 8
  %10 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %10, i32 0, i32 0
  %12 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %12, i64 %14
  store %struct.dvb_ca_slot* %15, %struct.dvb_ca_slot** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %19 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DVB_CA_SLOTSTATE_WAITREADY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i64, i64* @DVB_CA_SLOTSTATE_VALIDATE, align 8
  %25 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %26 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %28 = call i32 @dvb_ca_en50221_thread_wakeup(%struct.dvb_ca_private* %27)
  br label %29

29:                                               ; preds = %23, %2
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @dvb_ca_en50221_thread_wakeup(%struct.dvb_ca_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
