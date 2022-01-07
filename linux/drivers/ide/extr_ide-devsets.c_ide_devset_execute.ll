; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-devsets.c_ide_devset_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-devsets.c_ide_devset_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.ide_devset = type { i32, i32 (%struct.TYPE_6__*, i32)* }
%struct.request = type { i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_6__*, i32)*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32* }

@DS_SYNC = common dso_local global i32 0, align 4
@REQ_OP_DRV_IN = common dso_local global i32 0, align 4
@ATA_PRIV_MISC = common dso_local global i32 0, align 4
@REQ_DEVSET_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_devset_execute(%struct.TYPE_6__* %0, %struct.ide_devset* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.ide_devset*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.ide_devset* %1, %struct.ide_devset** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  store %struct.request_queue* %13, %struct.request_queue** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.ide_devset*, %struct.ide_devset** %6, align 8
  %15 = getelementptr inbounds %struct.ide_devset, %struct.ide_devset* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DS_SYNC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = load %struct.ide_devset*, %struct.ide_devset** %6, align 8
  %22 = getelementptr inbounds %struct.ide_devset, %struct.ide_devset* %21, i32 0, i32 1
  %23 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 %23(%struct.TYPE_6__* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %66

27:                                               ; preds = %3
  %28 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %29 = load i32, i32* @REQ_OP_DRV_IN, align 4
  %30 = call %struct.request* @blk_get_request(%struct.request_queue* %28, i32 %29, i32 0)
  store %struct.request* %30, %struct.request** %9, align 8
  %31 = load i32, i32* @ATA_PRIV_MISC, align 4
  %32 = load %struct.request*, %struct.request** %9, align 8
  %33 = call %struct.TYPE_8__* @ide_req(%struct.request* %32)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  %35 = load %struct.request*, %struct.request** %9, align 8
  %36 = call %struct.TYPE_7__* @scsi_req(%struct.request* %35)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 5, i32* %37, align 8
  %38 = load i32, i32* @REQ_DEVSET_EXEC, align 4
  %39 = load %struct.request*, %struct.request** %9, align 8
  %40 = call %struct.TYPE_7__* @scsi_req(%struct.request* %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %38, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.request*, %struct.request** %9, align 8
  %46 = call %struct.TYPE_7__* @scsi_req(%struct.request* %45)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %44, i32* %49, align 4
  %50 = load %struct.ide_devset*, %struct.ide_devset** %6, align 8
  %51 = getelementptr inbounds %struct.ide_devset, %struct.ide_devset* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %51, align 8
  %53 = load %struct.request*, %struct.request** %9, align 8
  %54 = call %struct.TYPE_8__* @ide_req(%struct.request* %53)
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 (%struct.TYPE_6__*, i32)* %52, i32 (%struct.TYPE_6__*, i32)** %55, align 8
  %56 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %57 = load %struct.request*, %struct.request** %9, align 8
  %58 = call i32 @blk_execute_rq(%struct.request_queue* %56, i32* null, %struct.request* %57, i32 0)
  %59 = load %struct.request*, %struct.request** %9, align 8
  %60 = call %struct.TYPE_7__* @scsi_req(%struct.request* %59)
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %10, align 4
  %63 = load %struct.request*, %struct.request** %9, align 8
  %64 = call i32 @blk_put_request(%struct.request* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %27, %20
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.request* @blk_get_request(%struct.request_queue*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @ide_req(%struct.request*) #1

declare dso_local %struct.TYPE_7__* @scsi_req(%struct.request*) #1

declare dso_local i32 @blk_execute_rq(%struct.request_queue*, i32*, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
