; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-eh.c_ide_atapi_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-eh.c_ide_atapi_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*, i32)* }
%struct.request = type { i32 }
%struct.TYPE_13__ = type { i32 }

@ATA_BUSY = common dso_local global i32 0, align 4
@ATA_DF = common dso_local global i32 0, align 4
@IDE_DFLAG_NOWERR = common dso_local global i32 0, align 4
@ERROR_RESET = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@ATA_CMD_IDLEIMMEDIATE = common dso_local global i32 0, align 4
@ERROR_MAX = common dso_local global i32 0, align 4
@ide_stopped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.request*, i32, i32)* @ide_atapi_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_atapi_error(%struct.TYPE_12__* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @ATA_BUSY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ATA_DF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IDE_DFLAG_NOWERR, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23, %4
  %31 = load i32, i32* @ERROR_RESET, align 4
  %32 = load %struct.request*, %struct.request** %7, align 8
  %33 = call %struct.TYPE_13__* @scsi_req(%struct.request* %32)
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 4
  br label %38

37:                                               ; preds = %23, %18
  br label %38

38:                                               ; preds = %37, %30
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %42, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = call i32 %43(%struct.TYPE_11__* %44)
  %46 = load i32, i32* @ATA_BUSY, align 4
  %47 = load i32, i32* @ATA_DRQ, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %38
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %55, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = load i32, i32* @ATA_CMD_IDLEIMMEDIATE, align 4
  %59 = call i32 %56(%struct.TYPE_11__* %57, i32 %58)
  br label %60

60:                                               ; preds = %51, %38
  %61 = load %struct.request*, %struct.request** %7, align 8
  %62 = call %struct.TYPE_13__* @scsi_req(%struct.request* %61)
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ERROR_MAX, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = load %struct.request*, %struct.request** %7, align 8
  %70 = call i32 @ide_kill_rq(%struct.TYPE_12__* %68, %struct.request* %69)
  br label %94

71:                                               ; preds = %60
  %72 = load %struct.request*, %struct.request** %7, align 8
  %73 = call %struct.TYPE_13__* @scsi_req(%struct.request* %72)
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ERROR_RESET, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @ERROR_RESET, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %71
  %81 = load %struct.request*, %struct.request** %7, align 8
  %82 = call %struct.TYPE_13__* @scsi_req(%struct.request* %81)
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = call i32 @ide_do_reset(%struct.TYPE_12__* %86)
  store i32 %87, i32* %5, align 4
  br label %96

88:                                               ; preds = %71
  %89 = load %struct.request*, %struct.request** %7, align 8
  %90 = call %struct.TYPE_13__* @scsi_req(%struct.request* %89)
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %88, %67
  %95 = load i32, i32* @ide_stopped, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %80
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.TYPE_13__* @scsi_req(%struct.request*) #1

declare dso_local i32 @ide_kill_rq(%struct.TYPE_12__*, %struct.request*) #1

declare dso_local i32 @ide_do_reset(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
