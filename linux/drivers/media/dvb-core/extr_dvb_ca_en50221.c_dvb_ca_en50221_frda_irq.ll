; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_frda_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_frda_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.dvb_ca_private* }
%struct.dvb_ca_private = type { i32, %struct.TYPE_2__*, %struct.dvb_ca_slot* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_ca_en50221*, i32, i32)* }
%struct.dvb_ca_slot = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"FR/DA IRQ slot:%i\0A\00", align 1
@CTRLIF_STATUS = common dso_local global i32 0, align 4
@STATUSREG_DA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"CAM supports DA IRQ\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvb_ca_en50221_frda_irq(%struct.dvb_ca_en50221* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_ca_en50221*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_ca_private*, align 8
  %6 = alloca %struct.dvb_ca_slot*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %8, i32 0, i32 0
  %10 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %9, align 8
  store %struct.dvb_ca_private* %10, %struct.dvb_ca_private** %5, align 8
  %11 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %11, i32 0, i32 2
  %13 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %13, i64 %15
  store %struct.dvb_ca_slot* %16, %struct.dvb_ca_slot** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %20 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %50 [
    i32 129, label %22
    i32 128, label %41
  ]

22:                                               ; preds = %2
  %23 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %24 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.dvb_ca_en50221*, i32, i32)*, i32 (%struct.dvb_ca_en50221*, i32, i32)** %26, align 8
  %28 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @CTRLIF_STATUS, align 4
  %31 = call i32 %27(%struct.dvb_ca_en50221* %28, i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @STATUSREG_DA, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %22
  %37 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %39 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %22
  br label %50

41:                                               ; preds = %2
  %42 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %43 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %48 = call i32 @dvb_ca_en50221_thread_wakeup(%struct.dvb_ca_private* %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %2, %49, %40
  ret void
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @dvb_ca_en50221_thread_wakeup(%struct.dvb_ca_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
