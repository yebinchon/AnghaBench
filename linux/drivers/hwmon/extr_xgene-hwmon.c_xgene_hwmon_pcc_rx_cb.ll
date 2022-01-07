; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_pcc_rx_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_pcc_rx_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_client = type { i32 }
%struct.xgene_hwmon_dev = type { i32, i32, i32, i32, %struct.TYPE_2__, i64, %struct.acpi_pcct_shared_memory* }
%struct.TYPE_2__ = type { i8*, i8*, i8* }
%struct.acpi_pcct_shared_memory = type { i32 }
%struct.slimpro_resp_msg = type { i32 }

@PCCS_SCI_DOORBEL = common dso_local global i32 0, align 4
@MSG_TYPE_ERR = common dso_local global i64 0, align 8
@MSG_TYPE_DBG = common dso_local global i64 0, align 8
@DBG_SUBTYPE_SENSOR_READ = common dso_local global i64 0, align 8
@MSG_TYPE_PWRMGMT = common dso_local global i64 0, align 8
@PWRMGMT_SUBTYPE_TPC = common dso_local global i64 0, align 8
@TPC_ALARM = common dso_local global i64 0, align 8
@PCCS_CMD_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_client*, i8*)* @xgene_hwmon_pcc_rx_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_hwmon_pcc_rx_cb(%struct.mbox_client* %0, i8* %1) #0 {
  %3 = alloca %struct.mbox_client*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xgene_hwmon_dev*, align 8
  %6 = alloca %struct.acpi_pcct_shared_memory*, align 8
  %7 = alloca %struct.slimpro_resp_msg, align 4
  store %struct.mbox_client* %0, %struct.mbox_client** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.mbox_client*, %struct.mbox_client** %3, align 8
  %9 = call %struct.xgene_hwmon_dev* @to_xgene_hwmon_dev(%struct.mbox_client* %8)
  store %struct.xgene_hwmon_dev* %9, %struct.xgene_hwmon_dev** %5, align 8
  %10 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %11 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %10, i32 0, i32 6
  %12 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %11, align 8
  store %struct.acpi_pcct_shared_memory* %12, %struct.acpi_pcct_shared_memory** %6, align 8
  %13 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %14 = call i64 @xgene_hwmon_rx_ready(%struct.xgene_hwmon_dev* %13, %struct.slimpro_resp_msg* %7)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %121

17:                                               ; preds = %2
  %18 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %6, align 8
  %19 = getelementptr inbounds %struct.acpi_pcct_shared_memory, %struct.acpi_pcct_shared_memory* %18, i64 1
  %20 = bitcast %struct.acpi_pcct_shared_memory* %19 to i8*
  store i8* %20, i8** %4, align 8
  %21 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %6, align 8
  %22 = getelementptr inbounds %struct.acpi_pcct_shared_memory, %struct.acpi_pcct_shared_memory* %21, i32 0, i32 0
  %23 = load i32, i32* @PCCS_SCI_DOORBEL, align 4
  %24 = call i64 @xgene_word_tst_and_clr(i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %121

27:                                               ; preds = %17
  %28 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %29 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %112

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = bitcast i8* %33 to i8**
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @MSG_TYPE(i8* %36)
  %38 = load i64, i64* @MSG_TYPE_ERR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %80, label %40

40:                                               ; preds = %32
  %41 = load i8*, i8** %4, align 8
  %42 = bitcast i8* %41 to i8**
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @MSG_TYPE(i8* %44)
  %46 = load i64, i64* @MSG_TYPE_DBG, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load i8*, i8** %4, align 8
  %50 = bitcast i8* %49 to i8**
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @MSG_SUBTYPE(i8* %52)
  %54 = load i64, i64* @DBG_SUBTYPE_SENSOR_READ, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %80, label %56

56:                                               ; preds = %48, %40
  %57 = load i8*, i8** %4, align 8
  %58 = bitcast i8* %57 to i8**
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @MSG_TYPE(i8* %60)
  %62 = load i64, i64* @MSG_TYPE_PWRMGMT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %112

64:                                               ; preds = %56
  %65 = load i8*, i8** %4, align 8
  %66 = bitcast i8* %65 to i8**
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @MSG_SUBTYPE(i8* %68)
  %70 = load i64, i64* @PWRMGMT_SUBTYPE_TPC, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %112

72:                                               ; preds = %64
  %73 = load i8*, i8** %4, align 8
  %74 = bitcast i8* %73 to i8**
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @TPC_CMD(i8* %76)
  %78 = load i64, i64* @TPC_ALARM, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %112

80:                                               ; preds = %72, %48, %32
  %81 = load %struct.acpi_pcct_shared_memory*, %struct.acpi_pcct_shared_memory** %6, align 8
  %82 = getelementptr inbounds %struct.acpi_pcct_shared_memory, %struct.acpi_pcct_shared_memory* %81, i32 0, i32 0
  %83 = load i32, i32* @PCCS_CMD_COMPLETE, align 4
  %84 = call i64 @xgene_word_tst_and_clr(i32* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %80
  %87 = load i8*, i8** %4, align 8
  %88 = bitcast i8* %87 to i8**
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %92 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i8* %90, i8** %93, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = bitcast i8* %94 to i8**
  %96 = getelementptr inbounds i8*, i8** %95, i64 1
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %99 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i8* %97, i8** %100, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = bitcast i8* %101 to i8**
  %103 = getelementptr inbounds i8*, i8** %102, i64 2
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %106 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  %108 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %109 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %108, i32 0, i32 3
  %110 = call i32 @complete(i32* %109)
  br label %121

111:                                              ; preds = %80
  br label %112

112:                                              ; preds = %111, %72, %64, %56, %27
  %113 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %114 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %113, i32 0, i32 2
  %115 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %116 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %115, i32 0, i32 1
  %117 = call i32 @kfifo_in_spinlocked(i32* %114, %struct.slimpro_resp_msg* %7, i32 4, i32* %116)
  %118 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %5, align 8
  %119 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %118, i32 0, i32 0
  %120 = call i32 @schedule_work(i32* %119)
  br label %121

121:                                              ; preds = %112, %86, %26, %16
  ret void
}

declare dso_local %struct.xgene_hwmon_dev* @to_xgene_hwmon_dev(%struct.mbox_client*) #1

declare dso_local i64 @xgene_hwmon_rx_ready(%struct.xgene_hwmon_dev*, %struct.slimpro_resp_msg*) #1

declare dso_local i64 @xgene_word_tst_and_clr(i32*, i32) #1

declare dso_local i64 @MSG_TYPE(i8*) #1

declare dso_local i64 @MSG_SUBTYPE(i8*) #1

declare dso_local i64 @TPC_CMD(i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @kfifo_in_spinlocked(i32*, %struct.slimpro_resp_msg*, i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
