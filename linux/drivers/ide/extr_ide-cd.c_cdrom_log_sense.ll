; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_cdrom_log_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_cdrom_log_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.request_sense }
%struct.request_sense = type { i32, i32 }
%struct.request = type { i32 }
%struct.TYPE_6__ = type { i32* }

@RQF_QUIET = common dso_local global i32 0, align 4
@IDE_DBG_SENSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sense_key: 0x%x\00", align 1
@GPCMD_START_STOP_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.request*)* @cdrom_log_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_log_sense(%struct.TYPE_5__* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.request_sense*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.request_sense* %9, %struct.request_sense** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.request_sense*, %struct.request_sense** %6, align 8
  %11 = icmp ne %struct.request_sense* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.request*, %struct.request** %5, align 8
  %14 = icmp ne %struct.request* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.request*, %struct.request** %5, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RQF_QUIET, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %12, %2
  store i32 0, i32* %3, align 4
  br label %67

23:                                               ; preds = %15
  %24 = load i32, i32* @IDE_DBG_SENSE, align 4
  %25 = load %struct.request_sense*, %struct.request_sense** %6, align 8
  %26 = getelementptr inbounds %struct.request_sense, %struct.request_sense* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ide_debug_log(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.request_sense*, %struct.request_sense** %6, align 8
  %30 = getelementptr inbounds %struct.request_sense, %struct.request_sense* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %64 [
    i32 130, label %32
    i32 129, label %32
    i32 131, label %33
    i32 132, label %45
    i32 128, label %61
  ]

32:                                               ; preds = %23, %23
  br label %65

33:                                               ; preds = %23
  %34 = load %struct.request_sense*, %struct.request_sense** %6, align 8
  %35 = getelementptr inbounds %struct.request_sense, %struct.request_sense* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 58
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.request_sense*, %struct.request_sense** %6, align 8
  %40 = getelementptr inbounds %struct.request_sense, %struct.request_sense* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %33
  br label %65

44:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  br label %65

45:                                               ; preds = %23
  %46 = load %struct.request*, %struct.request** %5, align 8
  %47 = call %struct.TYPE_6__* @scsi_req(%struct.request* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GPCMD_START_STOP_UNIT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load %struct.request_sense*, %struct.request_sense** %6, align 8
  %56 = getelementptr inbounds %struct.request_sense, %struct.request_sense* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 36
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %65

60:                                               ; preds = %54, %45
  store i32 1, i32* %7, align 4
  br label %65

61:                                               ; preds = %23
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = call i32 @cdrom_saw_media_change(%struct.TYPE_5__* %62)
  br label %65

64:                                               ; preds = %23
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %61, %60, %59, %44, %43, %32
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %22
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @ide_debug_log(i32, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @scsi_req(%struct.request*) #1

declare dso_local i32 @cdrom_saw_media_change(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
