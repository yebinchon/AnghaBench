; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_enable_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_enable_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.catu_drvdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.etr_buf = type { i64, %struct.catu_etr_buf* }
%struct.catu_etr_buf = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Timeout while waiting for READY\0A\00", align 1
@CATU_CONTROL_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"CATU is already enabled\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ETR_MODE_CATU = common dso_local global i64 0, align 8
@CATU_MODE_TRANSLATE = common dso_local global i32 0, align 4
@CATU_OS_AXICTRL = common dso_local global i32 0, align 4
@CATU_DEFAULT_INADDR = common dso_local global i32 0, align 4
@CATU_MODE_PASS_THROUGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Enabled in %s mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Pass through\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Translate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.catu_drvdata*, i8*)* @catu_enable_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @catu_enable_hw(%struct.catu_drvdata* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.catu_drvdata*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.etr_buf*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.catu_etr_buf*, align 8
  store %struct.catu_drvdata* %0, %struct.catu_drvdata** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.etr_buf*
  store %struct.etr_buf* %13, %struct.etr_buf** %9, align 8
  %14 = load %struct.catu_drvdata*, %struct.catu_drvdata** %4, align 8
  %15 = getelementptr inbounds %struct.catu_drvdata, %struct.catu_drvdata* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %10, align 8
  %18 = load %struct.catu_drvdata*, %struct.catu_drvdata** %4, align 8
  %19 = call i64 @catu_wait_for_ready(%struct.catu_drvdata* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %10, align 8
  %23 = call i32 @dev_warn(%struct.device* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.catu_drvdata*, %struct.catu_drvdata** %4, align 8
  %26 = call i32 @catu_read_control(%struct.catu_drvdata* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @CATU_CONTROL_ENABLE, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %10, align 8
  %34 = call i32 @dev_warn(%struct.device* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %97

37:                                               ; preds = %24
  %38 = load %struct.catu_drvdata*, %struct.catu_drvdata** %4, align 8
  %39 = getelementptr inbounds %struct.catu_drvdata, %struct.catu_drvdata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @coresight_claim_device_unlocked(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %97

46:                                               ; preds = %37
  %47 = load i32, i32* @CATU_CONTROL_ENABLE, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load %struct.etr_buf*, %struct.etr_buf** %9, align 8
  %52 = icmp ne %struct.etr_buf* %51, null
  br i1 %52, label %53, label %75

53:                                               ; preds = %46
  %54 = load %struct.etr_buf*, %struct.etr_buf** %9, align 8
  %55 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ETR_MODE_CATU, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = load %struct.etr_buf*, %struct.etr_buf** %9, align 8
  %61 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %60, i32 0, i32 1
  %62 = load %struct.catu_etr_buf*, %struct.catu_etr_buf** %61, align 8
  store %struct.catu_etr_buf* %62, %struct.catu_etr_buf** %11, align 8
  %63 = load i32, i32* @CATU_MODE_TRANSLATE, align 4
  store i32 %63, i32* %8, align 4
  %64 = load %struct.catu_drvdata*, %struct.catu_drvdata** %4, align 8
  %65 = load i32, i32* @CATU_OS_AXICTRL, align 4
  %66 = call i32 @catu_write_axictrl(%struct.catu_drvdata* %64, i32 %65)
  %67 = load %struct.catu_drvdata*, %struct.catu_drvdata** %4, align 8
  %68 = load %struct.catu_etr_buf*, %struct.catu_etr_buf** %11, align 8
  %69 = getelementptr inbounds %struct.catu_etr_buf, %struct.catu_etr_buf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @catu_write_sladdr(%struct.catu_drvdata* %67, i32 %70)
  %72 = load %struct.catu_drvdata*, %struct.catu_drvdata** %4, align 8
  %73 = load i32, i32* @CATU_DEFAULT_INADDR, align 4
  %74 = call i32 @catu_write_inaddr(%struct.catu_drvdata* %72, i32 %73)
  br label %81

75:                                               ; preds = %53, %46
  %76 = load i32, i32* @CATU_MODE_PASS_THROUGH, align 4
  store i32 %76, i32* %8, align 4
  %77 = load %struct.catu_drvdata*, %struct.catu_drvdata** %4, align 8
  %78 = call i32 @catu_write_sladdr(%struct.catu_drvdata* %77, i32 0)
  %79 = load %struct.catu_drvdata*, %struct.catu_drvdata** %4, align 8
  %80 = call i32 @catu_write_inaddr(%struct.catu_drvdata* %79, i32 0)
  br label %81

81:                                               ; preds = %75, %59
  %82 = load %struct.catu_drvdata*, %struct.catu_drvdata** %4, align 8
  %83 = call i32 @catu_write_irqen(%struct.catu_drvdata* %82, i32 0)
  %84 = load %struct.catu_drvdata*, %struct.catu_drvdata** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @catu_write_mode(%struct.catu_drvdata* %84, i32 %85)
  %87 = load %struct.catu_drvdata*, %struct.catu_drvdata** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @catu_write_control(%struct.catu_drvdata* %87, i32 %88)
  %90 = load %struct.device*, %struct.device** %10, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @CATU_MODE_PASS_THROUGH, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  %96 = call i32 @dev_dbg(%struct.device* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %81, %44, %32
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @catu_wait_for_ready(%struct.catu_drvdata*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @catu_read_control(%struct.catu_drvdata*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @coresight_claim_device_unlocked(i32) #1

declare dso_local i32 @catu_write_axictrl(%struct.catu_drvdata*, i32) #1

declare dso_local i32 @catu_write_sladdr(%struct.catu_drvdata*, i32) #1

declare dso_local i32 @catu_write_inaddr(%struct.catu_drvdata*, i32) #1

declare dso_local i32 @catu_write_irqen(%struct.catu_drvdata*, i32) #1

declare dso_local i32 @catu_write_mode(%struct.catu_drvdata*, i32) #1

declare dso_local i32 @catu_write_control(%struct.catu_drvdata*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
