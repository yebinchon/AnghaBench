; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-eh.c_ide_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-eh.c_ide_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.request* }
%struct.request = type { i32 }
%struct.ide_cmd = type { i32 }
%struct.TYPE_14__ = type { %struct.ide_cmd* }
%struct.TYPE_13__ = type { i32 }

@ide_stopped = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_error(%struct.TYPE_12__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ide_cmd*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @ide_dump_status(%struct.TYPE_12__* %11, i8* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.request*, %struct.request** %18, align 8
  store %struct.request* %19, %struct.request** %8, align 8
  %20 = load %struct.request*, %struct.request** %8, align 8
  %21 = icmp eq %struct.request* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @ide_stopped, align 4
  store i32 %23, i32* %4, align 4
  br label %83

24:                                               ; preds = %3
  %25 = load %struct.request*, %struct.request** %8, align 8
  %26 = call i64 @blk_rq_is_passthrough(%struct.request* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %77

28:                                               ; preds = %24
  %29 = load %struct.request*, %struct.request** %8, align 8
  %30 = call i64 @ata_taskfile_request(%struct.request* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.request*, %struct.request** %8, align 8
  %34 = call %struct.TYPE_14__* @ide_req(%struct.request* %33)
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load %struct.ide_cmd*, %struct.ide_cmd** %35, align 8
  store %struct.ide_cmd* %36, %struct.ide_cmd** %10, align 8
  %37 = load %struct.ide_cmd*, %struct.ide_cmd** %10, align 8
  %38 = icmp ne %struct.ide_cmd* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = load %struct.ide_cmd*, %struct.ide_cmd** %10, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @ide_complete_cmd(%struct.TYPE_12__* %40, %struct.ide_cmd* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %32
  br label %59

46:                                               ; preds = %28
  %47 = load %struct.request*, %struct.request** %8, align 8
  %48 = call i64 @ata_pm_request(%struct.request* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.request*, %struct.request** %8, align 8
  %52 = call %struct.TYPE_13__* @scsi_req(%struct.request* %51)
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = load %struct.request*, %struct.request** %8, align 8
  %56 = call i32 @ide_complete_pm_rq(%struct.TYPE_12__* %54, %struct.request* %55)
  %57 = load i32, i32* @ide_stopped, align 4
  store i32 %57, i32* %4, align 4
  br label %83

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %45
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.request*, %struct.request** %8, align 8
  %62 = call %struct.TYPE_13__* @scsi_req(%struct.request* %61)
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @BLK_STS_IOERR, align 4
  br label %71

69:                                               ; preds = %59
  %70 = load i32, i32* @BLK_STS_OK, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = load %struct.request*, %struct.request** %8, align 8
  %74 = call i32 @blk_rq_bytes(%struct.request* %73)
  %75 = call i32 @ide_complete_rq(%struct.TYPE_12__* %64, i32 %72, i32 %74)
  %76 = load i32, i32* @ide_stopped, align 4
  store i32 %76, i32* %4, align 4
  br label %83

77:                                               ; preds = %24
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = load %struct.request*, %struct.request** %8, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @__ide_error(%struct.TYPE_12__* %78, %struct.request* %79, i32 %80, i32 %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %77, %71, %50, %22
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @ide_dump_status(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i64 @blk_rq_is_passthrough(%struct.request*) #1

declare dso_local i64 @ata_taskfile_request(%struct.request*) #1

declare dso_local %struct.TYPE_14__* @ide_req(%struct.request*) #1

declare dso_local i32 @ide_complete_cmd(%struct.TYPE_12__*, %struct.ide_cmd*, i32, i32) #1

declare dso_local i64 @ata_pm_request(%struct.request*) #1

declare dso_local %struct.TYPE_13__* @scsi_req(%struct.request*) #1

declare dso_local i32 @ide_complete_pm_rq(%struct.TYPE_12__*, %struct.request*) #1

declare dso_local i32 @ide_complete_rq(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @__ide_error(%struct.TYPE_12__*, %struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
