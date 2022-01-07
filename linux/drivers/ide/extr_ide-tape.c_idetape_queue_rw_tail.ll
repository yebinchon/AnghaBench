; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_idetape_queue_rw_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_idetape_queue_rw_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.request = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i64, i64 }

@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cmd: 0x%x, size: %d\00", align 1
@REQ_IDETAPE_READ = common dso_local global i32 0, align 4
@REQ_IDETAPE_WRITE = common dso_local global i32 0, align 4
@REQ_OP_DRV_IN = common dso_local global i32 0, align 4
@ATA_PRIV_MISC = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@IDE_DRV_ERROR_GENERAL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32)* @idetape_queue_rw_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idetape_queue_rw_tail(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %7, align 8
  %13 = load i32, i32* @IDE_DBG_FUNC, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ide_debug_log(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @REQ_IDETAPE_READ, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @REQ_IDETAPE_WRITE, align 4
  %23 = icmp ne i32 %21, %22
  br label %24

24:                                               ; preds = %20, %3
  %25 = phi i1 [ false, %3 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = srem i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %30, %24
  %38 = phi i1 [ true, %24 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @REQ_OP_DRV_IN, align 4
  %45 = call %struct.request* @blk_get_request(i32 %43, i32 %44, i32 0)
  store %struct.request* %45, %struct.request** %8, align 8
  %46 = load i32, i32* @ATA_PRIV_MISC, align 4
  %47 = load %struct.request*, %struct.request** %8, align 8
  %48 = call %struct.TYPE_9__* @ide_req(%struct.request* %47)
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.request*, %struct.request** %8, align 8
  %52 = call %struct.TYPE_8__* @scsi_req(%struct.request* %51)
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 13
  store i32 %50, i32* %55, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.request*, %struct.request** %8, align 8
  %60 = getelementptr inbounds %struct.request, %struct.request* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.request*, %struct.request** %8, align 8
  %65 = getelementptr inbounds %struct.request, %struct.request* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %37
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.request*, %struct.request** %8, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @GFP_NOIO, align 4
  %78 = call i32 @blk_rq_map_kern(i32 %71, %struct.request* %72, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %127

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %37
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.request*, %struct.request** %8, align 8
  %91 = call i32 @blk_execute_rq(i32 %86, i32 %89, %struct.request* %90, i32 0)
  %92 = load %struct.request*, %struct.request** %8, align 8
  %93 = call %struct.TYPE_8__* @scsi_req(%struct.request* %92)
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = sub nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %6, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @REQ_IDETAPE_READ, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %83
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %115

112:                                              ; preds = %83
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  br label %115

115:                                              ; preds = %112, %108
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %9, align 4
  %117 = load %struct.request*, %struct.request** %8, align 8
  %118 = call %struct.TYPE_8__* @scsi_req(%struct.request* %117)
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @IDE_DRV_ERROR_GENERAL, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load i32, i32* @EIO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %123, %115
  br label %127

127:                                              ; preds = %126, %81
  %128 = load %struct.request*, %struct.request** %8, align 8
  %129 = call i32 @blk_put_request(%struct.request* %128)
  %130 = load i32, i32* %9, align 4
  ret i32 %130
}

declare dso_local i32 @ide_debug_log(i32, i8*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @ide_req(%struct.request*) #1

declare dso_local %struct.TYPE_8__* @scsi_req(%struct.request*) #1

declare dso_local i32 @blk_rq_map_kern(i32, %struct.request*, i32, i32, i32) #1

declare dso_local i32 @blk_execute_rq(i32, i32, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
