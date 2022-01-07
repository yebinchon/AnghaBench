; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_rx_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_rx_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_client = type { i32 }
%struct.xgene_hwmon_dev = type { i32, i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i8*, i8*, i8* }

@MSG_TYPE_ERR = common dso_local global i64 0, align 8
@MSG_TYPE_DBG = common dso_local global i64 0, align 8
@DBG_SUBTYPE_SENSOR_READ = common dso_local global i64 0, align 8
@MSG_TYPE_PWRMGMT = common dso_local global i64 0, align 8
@PWRMGMT_SUBTYPE_TPC = common dso_local global i64 0, align 8
@TPC_ALARM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_client*, i8*)* @xgene_hwmon_rx_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_hwmon_rx_cb(%struct.mbox_client* %0, i8* %1) #0 {
  %3 = alloca %struct.mbox_client*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xgene_hwmon_dev*, align 8
  store %struct.mbox_client* %0, %struct.mbox_client** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.mbox_client*, %struct.mbox_client** %3, align 8
  %7 = call %struct.xgene_hwmon_dev* @to_xgene_hwmon_dev(%struct.mbox_client* %6)
  store %struct.xgene_hwmon_dev* %7, %struct.xgene_hwmon_dev** %5, align 8
  %8 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @xgene_hwmon_rx_ready(%struct.xgene_hwmon_dev* %8, i8* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %101

13:                                               ; preds = %2
  %14 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %15 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %91

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to i8**
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @MSG_TYPE(i8* %22)
  %24 = load i64, i64* @MSG_TYPE_ERR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %66, label %26

26:                                               ; preds = %18
  %27 = load i8*, i8** %4, align 8
  %28 = bitcast i8* %27 to i8**
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @MSG_TYPE(i8* %30)
  %32 = load i64, i64* @MSG_TYPE_DBG, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load i8*, i8** %4, align 8
  %36 = bitcast i8* %35 to i8**
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @MSG_SUBTYPE(i8* %38)
  %40 = load i64, i64* @DBG_SUBTYPE_SENSOR_READ, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %66, label %42

42:                                               ; preds = %34, %26
  %43 = load i8*, i8** %4, align 8
  %44 = bitcast i8* %43 to i8**
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @MSG_TYPE(i8* %46)
  %48 = load i64, i64* @MSG_TYPE_PWRMGMT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %91

50:                                               ; preds = %42
  %51 = load i8*, i8** %4, align 8
  %52 = bitcast i8* %51 to i8**
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @MSG_SUBTYPE(i8* %54)
  %56 = load i64, i64* @PWRMGMT_SUBTYPE_TPC, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %50
  %59 = load i8*, i8** %4, align 8
  %60 = bitcast i8* %59 to i8**
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @TPC_CMD(i8* %62)
  %64 = load i64, i64* @TPC_ALARM, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %58, %34, %18
  %67 = load i8*, i8** %4, align 8
  %68 = bitcast i8* %67 to i8**
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %72 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i8* %70, i8** %73, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = bitcast i8* %74 to i8**
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %79 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = bitcast i8* %81 to i8**
  %83 = getelementptr inbounds i8*, i8** %82, i64 2
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %86 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i8* %84, i8** %87, align 8
  %88 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %89 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %88, i32 0, i32 3
  %90 = call i32 @complete(i32* %89)
  br label %101

91:                                               ; preds = %58, %50, %42, %13
  %92 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %93 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %92, i32 0, i32 2
  %94 = load i8*, i8** %4, align 8
  %95 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %96 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %95, i32 0, i32 1
  %97 = call i32 @kfifo_in_spinlocked(i32* %93, i8* %94, i32 4, i32* %96)
  %98 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %99 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %98, i32 0, i32 0
  %100 = call i32 @schedule_work(i32* %99)
  br label %101

101:                                              ; preds = %91, %66, %12
  ret void
}

declare dso_local %struct.xgene_hwmon_dev* @to_xgene_hwmon_dev(%struct.mbox_client*) #1

declare dso_local i64 @xgene_hwmon_rx_ready(%struct.xgene_hwmon_dev*, i8*) #1

declare dso_local i64 @MSG_TYPE(i8*) #1

declare dso_local i64 @MSG_SUBTYPE(i8*) #1

declare dso_local i64 @TPC_CMD(i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @kfifo_in_spinlocked(i32*, i8*, i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
