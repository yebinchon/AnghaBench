; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_cdrom_do_block_pc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_cdrom_do_block_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.request = type { i64, i32, i32, i32* }

@IDE_DBG_PC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"rq->cmd[0]: 0x%x, rq->cmd_type: 0x%x\00", align 1
@RQF_QUIET = common dso_local global i32 0, align 4
@RQF_FAILED = common dso_local global i32 0, align 4
@IDE_DFLAG_USING_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.request*)* @cdrom_do_block_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdrom_do_block_pc(%struct.TYPE_3__* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %8 = load i32, i32* @IDE_DBG_PC, align 4
  %9 = load %struct.request*, %struct.request** %4, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.request*, %struct.request** %4, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ide_debug_log(i32 %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.request*, %struct.request** %4, align 8
  %19 = call i64 @blk_rq_is_scsi(%struct.request* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @RQF_QUIET, align 4
  %23 = load %struct.request*, %struct.request** %4, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %34

27:                                               ; preds = %2
  %28 = load i32, i32* @RQF_FAILED, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.request*, %struct.request** %4, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.request*, %struct.request** %4, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %88

41:                                               ; preds = %34
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load %struct.request_queue*, %struct.request_queue** %43, align 8
  store %struct.request_queue* %44, %struct.request_queue** %5, align 8
  %45 = load %struct.request*, %struct.request** %4, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i8* @bio_data(i64 %47)
  store i8* %48, i8** %6, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IDE_DFLAG_USING_DMA, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %61 = call i32 @queue_dma_alignment(%struct.request_queue* %60)
  %62 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %63 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %61, %64
  store i32 %65, i32* %7, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = and i64 %67, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %41
  %73 = load %struct.request*, %struct.request** %4, align 8
  %74 = call i32 @blk_rq_bytes(%struct.request* %73)
  %75 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %76 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %72
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @object_is_on_stack(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80, %72, %41
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %80
  br label %88

88:                                               ; preds = %87, %34
  ret void
}

declare dso_local i32 @ide_debug_log(i32, i8*, i32, i32) #1

declare dso_local i64 @blk_rq_is_scsi(%struct.request*) #1

declare dso_local i8* @bio_data(i64) #1

declare dso_local i32 @queue_dma_alignment(%struct.request_queue*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i64 @object_is_on_stack(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
