; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-pm.c_generic_ide_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-pm.c_generic_ide_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.request = type { i32 }
%struct.ide_pm_state = type { i32, i32 }
%struct.ide_driver = type { i32 (%struct.TYPE_8__*)* }
%struct.TYPE_9__ = type { %struct.ide_pm_state*, i32 }

@REQ_OP_DRV_IN = common dso_local global i32 0, align 4
@BLK_MQ_REQ_PREEMPT = common dso_local global i32 0, align 4
@ATA_PRIV_PM_RESUME = common dso_local global i32 0, align 4
@IDE_PM_START_RESUME = common dso_local global i32 0, align 4
@PM_EVENT_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_ide_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.ide_pm_state, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ide_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call %struct.TYPE_8__* @to_ide_device(%struct.device* %10)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = call %struct.TYPE_8__* @ide_get_pair_dev(%struct.TYPE_8__* %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @blk_mq_start_stopped_hw_queues(i32 %19, i32 1)
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @ide_port_acpi(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = icmp eq %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30, %24
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @ide_acpi_set_state(i32* %34, i32 1)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @ide_acpi_push_timing(i32* %36)
  br label %38

38:                                               ; preds = %33, %30
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = call i32 @ide_acpi_exec_tfs(%struct.TYPE_8__* %39)
  br label %41

41:                                               ; preds = %38, %1
  %42 = call i32 @memset(%struct.ide_pm_state* %7, i32 0, i32 8)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @REQ_OP_DRV_IN, align 4
  %47 = load i32, i32* @BLK_MQ_REQ_PREEMPT, align 4
  %48 = call %struct.request* @blk_get_request(i32 %45, i32 %46, i32 %47)
  store %struct.request* %48, %struct.request** %6, align 8
  %49 = load i32, i32* @ATA_PRIV_PM_RESUME, align 4
  %50 = load %struct.request*, %struct.request** %6, align 8
  %51 = call %struct.TYPE_9__* @ide_req(%struct.request* %50)
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  %53 = load %struct.request*, %struct.request** %6, align 8
  %54 = call %struct.TYPE_9__* @ide_req(%struct.request* %53)
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store %struct.ide_pm_state* %7, %struct.ide_pm_state** %55, align 8
  %56 = load i32, i32* @IDE_PM_START_RESUME, align 4
  %57 = getelementptr inbounds %struct.ide_pm_state, %struct.ide_pm_state* %7, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @PM_EVENT_ON, align 4
  %59 = getelementptr inbounds %struct.ide_pm_state, %struct.ide_pm_state* %7, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.request*, %struct.request** %6, align 8
  %61 = call i32 @ide_pm_execute_rq(%struct.request* %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.request*, %struct.request** %6, align 8
  %63 = call i32 @blk_put_request(%struct.request* %62)
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %41
  %67 = load %struct.device*, %struct.device** %2, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = load %struct.device*, %struct.device** %2, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call %struct.ide_driver* @to_ide_driver(i64 %74)
  store %struct.ide_driver* %75, %struct.ide_driver** %9, align 8
  %76 = load %struct.ide_driver*, %struct.ide_driver** %9, align 8
  %77 = getelementptr inbounds %struct.ide_driver, %struct.ide_driver* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %77, align 8
  %79 = icmp ne i32 (%struct.TYPE_8__*)* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  %81 = load %struct.ide_driver*, %struct.ide_driver** %9, align 8
  %82 = getelementptr inbounds %struct.ide_driver, %struct.ide_driver* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %82, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = call i32 %83(%struct.TYPE_8__* %84)
  br label %86

86:                                               ; preds = %80, %71
  br label %87

87:                                               ; preds = %86, %66, %41
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_8__* @to_ide_device(%struct.device*) #1

declare dso_local %struct.TYPE_8__* @ide_get_pair_dev(%struct.TYPE_8__*) #1

declare dso_local i32 @blk_mq_start_stopped_hw_queues(i32, i32) #1

declare dso_local i64 @ide_port_acpi(i32*) #1

declare dso_local i32 @ide_acpi_set_state(i32*, i32) #1

declare dso_local i32 @ide_acpi_push_timing(i32*) #1

declare dso_local i32 @ide_acpi_exec_tfs(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.ide_pm_state*, i32, i32) #1

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @ide_req(%struct.request*) #1

declare dso_local i32 @ide_pm_execute_rq(%struct.request*) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

declare dso_local %struct.ide_driver* @to_ide_driver(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
