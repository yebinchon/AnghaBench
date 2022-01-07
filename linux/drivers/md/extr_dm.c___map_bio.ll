; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___map_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___map_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target_io = type { %struct.dm_target*, %struct.dm_io*, %struct.bio }
%struct.dm_target = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.dm_target*, %struct.bio*)* }
%struct.dm_io = type { i32, i32, %struct.mapped_device* }
%struct.mapped_device = type { i32 }
%struct.bio = type { %struct.TYPE_6__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@BLK_QC_T_NONE = common dso_local global i32 0, align 4
@clone_endio = common dso_local global i32 0, align 4
@DM_TYPE_NVME_BIO_BASED = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_DM_REQUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unimplemented target map return value: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target_io*)* @__map_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__map_bio(%struct.dm_target_io* %0) #0 {
  %2 = alloca %struct.dm_target_io*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.dm_io*, align 8
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca %struct.dm_target*, align 8
  %9 = alloca i32, align 4
  store %struct.dm_target_io* %0, %struct.dm_target_io** %2, align 8
  %10 = load %struct.dm_target_io*, %struct.dm_target_io** %2, align 8
  %11 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %10, i32 0, i32 2
  store %struct.bio* %11, %struct.bio** %5, align 8
  %12 = load %struct.dm_target_io*, %struct.dm_target_io** %2, align 8
  %13 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %12, i32 0, i32 1
  %14 = load %struct.dm_io*, %struct.dm_io** %13, align 8
  store %struct.dm_io* %14, %struct.dm_io** %6, align 8
  %15 = load %struct.dm_io*, %struct.dm_io** %6, align 8
  %16 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %15, i32 0, i32 2
  %17 = load %struct.mapped_device*, %struct.mapped_device** %16, align 8
  store %struct.mapped_device* %17, %struct.mapped_device** %7, align 8
  %18 = load %struct.dm_target_io*, %struct.dm_target_io** %2, align 8
  %19 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %18, i32 0, i32 0
  %20 = load %struct.dm_target*, %struct.dm_target** %19, align 8
  store %struct.dm_target* %20, %struct.dm_target** %8, align 8
  %21 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @clone_endio, align 4
  %23 = load %struct.bio*, %struct.bio** %5, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dm_io*, %struct.dm_io** %6, align 8
  %26 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %25, i32 0, i32 1
  %27 = call i32 @atomic_inc(i32* %26)
  %28 = load %struct.bio*, %struct.bio** %5, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %4, align 4
  %32 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %33 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dm_target*, %struct.bio*)*, i32 (%struct.dm_target*, %struct.bio*)** %35, align 8
  %37 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %38 = load %struct.bio*, %struct.bio** %5, align 8
  %39 = call i32 %36(%struct.dm_target* %37, %struct.bio* %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  switch i32 %40, label %79 [
    i32 128, label %41
    i32 130, label %42
    i32 131, label %67
    i32 129, label %73
  ]

41:                                               ; preds = %1
  br label %83

42:                                               ; preds = %1
  %43 = load %struct.bio*, %struct.bio** %5, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bio*, %struct.bio** %5, align 8
  %49 = load %struct.dm_io*, %struct.dm_io** %6, align 8
  %50 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @bio_dev(i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @trace_block_bio_remap(i32 %47, %struct.bio* %48, i32 %52, i32 %53)
  %55 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %56 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DM_TYPE_NVME_BIO_BASED, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %42
  %61 = load %struct.bio*, %struct.bio** %5, align 8
  %62 = call i32 @direct_make_request(%struct.bio* %61)
  store i32 %62, i32* %9, align 4
  br label %66

63:                                               ; preds = %42
  %64 = load %struct.bio*, %struct.bio** %5, align 8
  %65 = call i32 @generic_make_request(%struct.bio* %64)
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %60
  br label %83

67:                                               ; preds = %1
  %68 = load %struct.dm_target_io*, %struct.dm_target_io** %2, align 8
  %69 = call i32 @free_tio(%struct.dm_target_io* %68)
  %70 = load %struct.dm_io*, %struct.dm_io** %6, align 8
  %71 = load i32, i32* @BLK_STS_IOERR, align 4
  %72 = call i32 @dec_pending(%struct.dm_io* %70, i32 %71)
  br label %83

73:                                               ; preds = %1
  %74 = load %struct.dm_target_io*, %struct.dm_target_io** %2, align 8
  %75 = call i32 @free_tio(%struct.dm_target_io* %74)
  %76 = load %struct.dm_io*, %struct.dm_io** %6, align 8
  %77 = load i32, i32* @BLK_STS_DM_REQUEUE, align 4
  %78 = call i32 @dec_pending(%struct.dm_io* %76, i32 %77)
  br label %83

79:                                               ; preds = %1
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @DMWARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = call i32 (...) @BUG()
  br label %83

83:                                               ; preds = %79, %73, %67, %66, %41
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @trace_block_bio_remap(i32, %struct.bio*, i32, i32) #1

declare dso_local i32 @bio_dev(i32) #1

declare dso_local i32 @direct_make_request(%struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @free_tio(%struct.dm_target_io*) #1

declare dso_local i32 @dec_pending(%struct.dm_io*, i32) #1

declare dso_local i32 @DMWARN(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
