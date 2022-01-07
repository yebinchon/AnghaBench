; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_map_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_map_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_rq_target_io = type { i32*, i32, %struct.dm_target*, %struct.request*, %struct.mapped_device* }
%struct.dm_target = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dm_target*, %struct.request*, i32*, %struct.request**)*, i32 (%struct.request*, i32*)* }
%struct.request = type { i32 }
%struct.mapped_device = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@BLK_STS_DEV_RESOURCE = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unimplemented target map return value: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_rq_target_io*)* @map_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_request(%struct.dm_rq_target_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_rq_target_io*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.mapped_device*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i32, align 4
  store %struct.dm_rq_target_io* %0, %struct.dm_rq_target_io** %3, align 8
  %10 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %3, align 8
  %11 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %10, i32 0, i32 2
  %12 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  store %struct.dm_target* %12, %struct.dm_target** %5, align 8
  %13 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %3, align 8
  %14 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %13, i32 0, i32 4
  %15 = load %struct.mapped_device*, %struct.mapped_device** %14, align 8
  store %struct.mapped_device* %15, %struct.mapped_device** %6, align 8
  %16 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %3, align 8
  %17 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %16, i32 0, i32 3
  %18 = load %struct.request*, %struct.request** %17, align 8
  store %struct.request* %18, %struct.request** %7, align 8
  store %struct.request* null, %struct.request** %8, align 8
  %19 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %20 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.dm_target*, %struct.request*, i32*, %struct.request**)*, i32 (%struct.dm_target*, %struct.request*, i32*, %struct.request**)** %22, align 8
  %24 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %25 = load %struct.request*, %struct.request** %7, align 8
  %26 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %3, align 8
  %27 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %26, i32 0, i32 1
  %28 = call i32 %23(%struct.dm_target* %24, %struct.request* %25, i32* %27, %struct.request** %8)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %96 [
    i32 128, label %30
    i32 130, label %31
    i32 129, label %88
    i32 132, label %89
    i32 131, label %92
  ]

30:                                               ; preds = %1
  br label %100

31:                                               ; preds = %1
  %32 = load %struct.request*, %struct.request** %8, align 8
  %33 = load %struct.request*, %struct.request** %7, align 8
  %34 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %3, align 8
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call i32 @setup_clone(%struct.request* %32, %struct.request* %33, %struct.dm_rq_target_io* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %40 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32 (%struct.request*, i32*)*, i32 (%struct.request*, i32*)** %42, align 8
  %44 = load %struct.request*, %struct.request** %8, align 8
  %45 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %3, align 8
  %46 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %45, i32 0, i32 1
  %47 = call i32 %43(%struct.request* %44, i32* %46)
  store i32 129, i32* %2, align 4
  br label %102

48:                                               ; preds = %31
  %49 = load %struct.request*, %struct.request** %8, align 8
  %50 = getelementptr inbounds %struct.request, %struct.request* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.request*, %struct.request** %8, align 8
  %53 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %54 = call i32 @dm_disk(%struct.mapped_device* %53)
  %55 = call i32 @disk_devt(i32 %54)
  %56 = load %struct.request*, %struct.request** %7, align 8
  %57 = call i32 @blk_rq_pos(%struct.request* %56)
  %58 = call i32 @trace_block_rq_remap(i32 %51, %struct.request* %52, i32 %55, i32 %57)
  %59 = load %struct.request*, %struct.request** %8, align 8
  %60 = load %struct.request*, %struct.request** %7, align 8
  %61 = call i32 @dm_dispatch_clone_request(%struct.request* %59, %struct.request* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @BLK_STS_RESOURCE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %48
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @BLK_STS_DEV_RESOURCE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %65, %48
  %70 = load %struct.request*, %struct.request** %8, align 8
  %71 = call i32 @blk_rq_unprep_clone(%struct.request* %70)
  %72 = load %struct.request*, %struct.request** %8, align 8
  %73 = call i32 @blk_mq_cleanup_rq(%struct.request* %72)
  %74 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %3, align 8
  %75 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %74, i32 0, i32 2
  %76 = load %struct.dm_target*, %struct.dm_target** %75, align 8
  %77 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32 (%struct.request*, i32*)*, i32 (%struct.request*, i32*)** %79, align 8
  %81 = load %struct.request*, %struct.request** %8, align 8
  %82 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %3, align 8
  %83 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %82, i32 0, i32 1
  %84 = call i32 %80(%struct.request* %81, i32* %83)
  %85 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %3, align 8
  %86 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  store i32 129, i32* %2, align 4
  br label %102

87:                                               ; preds = %65
  br label %100

88:                                               ; preds = %1
  br label %100

89:                                               ; preds = %1
  %90 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %3, align 8
  %91 = call i32 @dm_requeue_original_request(%struct.dm_rq_target_io* %90, i32 1)
  br label %100

92:                                               ; preds = %1
  %93 = load %struct.request*, %struct.request** %7, align 8
  %94 = load i32, i32* @BLK_STS_IOERR, align 4
  %95 = call i32 @dm_kill_unmapped_request(%struct.request* %93, i32 %94)
  br label %100

96:                                               ; preds = %1
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @DMWARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = call i32 (...) @BUG()
  br label %100

100:                                              ; preds = %96, %92, %89, %88, %87, %30
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %69, %38
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @setup_clone(%struct.request*, %struct.request*, %struct.dm_rq_target_io*, i32) #1

declare dso_local i32 @trace_block_rq_remap(i32, %struct.request*, i32, i32) #1

declare dso_local i32 @disk_devt(i32) #1

declare dso_local i32 @dm_disk(%struct.mapped_device*) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @dm_dispatch_clone_request(%struct.request*, %struct.request*) #1

declare dso_local i32 @blk_rq_unprep_clone(%struct.request*) #1

declare dso_local i32 @blk_mq_cleanup_rq(%struct.request*) #1

declare dso_local i32 @dm_requeue_original_request(%struct.dm_rq_target_io*, i32) #1

declare dso_local i32 @dm_kill_unmapped_request(%struct.request*, i32) #1

declare dso_local i32 @DMWARN(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
