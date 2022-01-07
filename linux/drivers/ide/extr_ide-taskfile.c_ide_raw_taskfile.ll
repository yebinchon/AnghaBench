; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-taskfile.c_ide_raw_taskfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-taskfile.c_ide_raw_taskfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ide_cmd = type { i32, %struct.request* }
%struct.request = type { i32 }
%struct.TYPE_7__ = type { %struct.ide_cmd*, i32 }
%struct.TYPE_6__ = type { i64 }

@IDE_TFLAG_WRITE = common dso_local global i32 0, align 4
@REQ_OP_DRV_OUT = common dso_local global i32 0, align 4
@REQ_OP_DRV_IN = common dso_local global i32 0, align 4
@ATA_PRIV_TASKFILE = common dso_local global i32 0, align 4
@SECTOR_SIZE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_raw_taskfile(%struct.TYPE_5__* %0, %struct.ide_cmd* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.ide_cmd*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.request*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.ide_cmd* %1, %struct.ide_cmd** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %15 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IDE_TFLAG_WRITE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @REQ_OP_DRV_OUT, align 4
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @REQ_OP_DRV_IN, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call %struct.request* @blk_get_request(i32 %13, i32 %25, i32 0)
  store %struct.request* %26, %struct.request** %9, align 8
  %27 = load i32, i32* @ATA_PRIV_TASKFILE, align 4
  %28 = load %struct.request*, %struct.request** %9, align 8
  %29 = call %struct.TYPE_7__* @ide_req(%struct.request* %28)
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %24
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.request*, %struct.request** %9, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SECTOR_SIZE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* @GFP_NOIO, align 4
  %43 = call i32 @blk_rq_map_kern(i32 %36, %struct.request* %37, i32* %38, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %72

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %24
  %49 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %50 = load %struct.request*, %struct.request** %9, align 8
  %51 = call %struct.TYPE_7__* @ide_req(%struct.request* %50)
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store %struct.ide_cmd* %49, %struct.ide_cmd** %52, align 8
  %53 = load %struct.request*, %struct.request** %9, align 8
  %54 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %55 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %54, i32 0, i32 1
  store %struct.request* %53, %struct.request** %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.request*, %struct.request** %9, align 8
  %60 = call i32 @blk_execute_rq(i32 %58, i32* null, %struct.request* %59, i32 0)
  %61 = load %struct.request*, %struct.request** %9, align 8
  %62 = call %struct.TYPE_6__* @scsi_req(%struct.request* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %48
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  br label %70

69:                                               ; preds = %48
  br label %70

70:                                               ; preds = %69, %66
  %71 = phi i32 [ %68, %66 ], [ 0, %69 ]
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %70, %46
  %73 = load %struct.request*, %struct.request** %9, align 8
  %74 = call i32 @blk_put_request(%struct.request* %73)
  %75 = load i32, i32* %10, align 4
  ret i32 %75
}

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @ide_req(%struct.request*) #1

declare dso_local i32 @blk_rq_map_kern(i32, %struct.request*, i32*, i32, i32) #1

declare dso_local i32 @blk_execute_rq(i32, i32*, %struct.request*, i32) #1

declare dso_local %struct.TYPE_6__* @scsi_req(%struct.request*) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
