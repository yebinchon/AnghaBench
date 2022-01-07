; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-pm.c_generic_ide_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-pm.c_generic_ide_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32* }
%struct.request = type { i32 }
%struct.ide_pm_state = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.ide_pm_state*, i32 }
%struct.TYPE_11__ = type { i64 }

@REQ_OP_DRV_IN = common dso_local global i32 0, align 4
@ATA_PRIV_PM_SUSPEND = common dso_local global i32 0, align 4
@IDE_PM_START_SUSPEND = common dso_local global i32 0, align 4
@PM_EVENT_PRETHAW = common dso_local global i64 0, align 8
@PM_EVENT_FREEZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_ide_suspend(%struct.device* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca %struct.ide_pm_state, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i64 %1, i64* %11, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.TYPE_10__* @to_ide_device(%struct.device* %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = call %struct.TYPE_10__* @ide_get_pair_dev(%struct.TYPE_10__* %14)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @ide_port_acpi(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = icmp eq %struct.TYPE_10__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %22
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @ide_acpi_get_timing(i32* %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %2
  %36 = call i32 @memset(%struct.ide_pm_state* %9, i32 0, i32 16)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @REQ_OP_DRV_IN, align 4
  %41 = call %struct.request* @blk_get_request(i32 %39, i32 %40, i32 0)
  store %struct.request* %41, %struct.request** %8, align 8
  %42 = load i32, i32* @ATA_PRIV_PM_SUSPEND, align 4
  %43 = load %struct.request*, %struct.request** %8, align 8
  %44 = call %struct.TYPE_12__* @ide_req(%struct.request* %43)
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load %struct.request*, %struct.request** %8, align 8
  %47 = call %struct.TYPE_12__* @ide_req(%struct.request* %46)
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store %struct.ide_pm_state* %9, %struct.ide_pm_state** %48, align 8
  %49 = load i32, i32* @IDE_PM_START_SUSPEND, align 4
  %50 = getelementptr inbounds %struct.ide_pm_state, %struct.ide_pm_state* %9, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PM_EVENT_PRETHAW, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %35
  %56 = load i64, i64* @PM_EVENT_FREEZE, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %35
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.ide_pm_state, %struct.ide_pm_state* %9, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.request*, %struct.request** %8, align 8
  %66 = call i32 @blk_execute_rq(i32 %64, i32* null, %struct.request* %65, i32 0)
  %67 = load %struct.request*, %struct.request** %8, align 8
  %68 = call %struct.TYPE_11__* @scsi_req(%struct.request* %67)
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %58
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  br label %76

75:                                               ; preds = %58
  br label %76

76:                                               ; preds = %75, %72
  %77 = phi i32 [ %74, %72 ], [ 0, %75 ]
  store i32 %77, i32* %10, align 4
  %78 = load %struct.request*, %struct.request** %8, align 8
  %79 = call i32 @blk_put_request(%struct.request* %78)
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %76
  %83 = load i32*, i32** %7, align 8
  %84 = call i64 @ide_port_acpi(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %82
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, 1
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = icmp eq %struct.TYPE_10__* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92, %86
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @ide_acpi_set_state(i32* %96, i32 0)
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98, %82, %76
  %100 = load i32, i32* %10, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_10__* @to_ide_device(%struct.device*) #1

declare dso_local %struct.TYPE_10__* @ide_get_pair_dev(%struct.TYPE_10__*) #1

declare dso_local i64 @ide_port_acpi(i32*) #1

declare dso_local i32 @ide_acpi_get_timing(i32*) #1

declare dso_local i32 @memset(%struct.ide_pm_state*, i32, i32) #1

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @ide_req(%struct.request*) #1

declare dso_local i32 @blk_execute_rq(i32, i32*, %struct.request*, i32) #1

declare dso_local %struct.TYPE_11__* @scsi_req(%struct.request*) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

declare dso_local i32 @ide_acpi_set_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
