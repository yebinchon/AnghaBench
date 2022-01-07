; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elan_tp_data = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32*)* }

@ETP_MAX_REPORT_LEN = common dso_local global i32 0, align 4
@ETP_REPORT_ID_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"invalid report id data (%x)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @elan_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.elan_tp_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.elan_tp_data*
  store %struct.elan_tp_data* %11, %struct.elan_tp_data** %5, align 8
  %12 = load %struct.elan_tp_data*, %struct.elan_tp_data** %5, align 8
  %13 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load i32, i32* @ETP_MAX_REPORT_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load %struct.elan_tp_data*, %struct.elan_tp_data** %5, align 8
  %21 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.elan_tp_data*, %struct.elan_tp_data** %5, align 8
  %26 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %25, i32 0, i32 2
  %27 = call i32 @complete(i32* %26)
  br label %60

28:                                               ; preds = %2
  %29 = load %struct.elan_tp_data*, %struct.elan_tp_data** %5, align 8
  %30 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %32, align 8
  %34 = load %struct.elan_tp_data*, %struct.elan_tp_data** %5, align 8
  %35 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 %33(%struct.TYPE_4__* %36, i32* %19)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %60

41:                                               ; preds = %28
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @pm_wakeup_event(%struct.device* %42, i32 0)
  %44 = load i64, i64* @ETP_REPORT_ID_OFFSET, align 8
  %45 = getelementptr inbounds i32, i32* %19, i64 %44
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %53 [
    i32 129, label %47
    i32 128, label %50
  ]

47:                                               ; preds = %41
  %48 = load %struct.elan_tp_data*, %struct.elan_tp_data** %5, align 8
  %49 = call i32 @elan_report_absolute(%struct.elan_tp_data* %48, i32* %19)
  br label %59

50:                                               ; preds = %41
  %51 = load %struct.elan_tp_data*, %struct.elan_tp_data** %5, align 8
  %52 = call i32 @elan_report_trackpoint(%struct.elan_tp_data* %51, i32* %19)
  br label %59

53:                                               ; preds = %41
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load i64, i64* @ETP_REPORT_ID_OFFSET, align 8
  %56 = getelementptr inbounds i32, i32* %19, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %50, %47
  br label %60

60:                                               ; preds = %59, %40, %24
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  %62 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %62)
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @complete(i32*) #2

declare dso_local i32 @pm_wakeup_event(%struct.device*, i32) #2

declare dso_local i32 @elan_report_absolute(%struct.elan_tp_data*, i32*) #2

declare dso_local i32 @elan_report_trackpoint(%struct.elan_tp_data*, i32*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
