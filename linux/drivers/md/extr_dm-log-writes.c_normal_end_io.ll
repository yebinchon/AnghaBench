; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_normal_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_normal_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.log_writes_c* }
%struct.log_writes_c = type { i32, i32, i32, i32 }
%struct.bio = type { i32 }
%struct.per_bio_data = type { %struct.pending_block* }
%struct.pending_block = type { i32, i32 }

@WRITE = common dso_local global i64 0, align 8
@LOG_FLUSH_FLAG = common dso_local global i32 0, align 4
@LOG_FUA_FLAG = common dso_local global i32 0, align 4
@DM_ENDIO_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, i32*)* @normal_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @normal_end_io(%struct.dm_target* %0, %struct.bio* %1, i32* %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.log_writes_c*, align 8
  %8 = alloca %struct.per_bio_data*, align 8
  %9 = alloca %struct.pending_block*, align 8
  %10 = alloca i64, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %12 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %11, i32 0, i32 0
  %13 = load %struct.log_writes_c*, %struct.log_writes_c** %12, align 8
  store %struct.log_writes_c* %13, %struct.log_writes_c** %7, align 8
  %14 = load %struct.bio*, %struct.bio** %5, align 8
  %15 = call %struct.per_bio_data* @dm_per_bio_data(%struct.bio* %14, i32 8)
  store %struct.per_bio_data* %15, %struct.per_bio_data** %8, align 8
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = call i64 @bio_data_dir(%struct.bio* %16)
  %18 = load i64, i64* @WRITE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %83

20:                                               ; preds = %3
  %21 = load %struct.per_bio_data*, %struct.per_bio_data** %8, align 8
  %22 = getelementptr inbounds %struct.per_bio_data, %struct.per_bio_data* %21, i32 0, i32 0
  %23 = load %struct.pending_block*, %struct.pending_block** %22, align 8
  %24 = icmp ne %struct.pending_block* %23, null
  br i1 %24, label %25, label %83

25:                                               ; preds = %20
  %26 = load %struct.per_bio_data*, %struct.per_bio_data** %8, align 8
  %27 = getelementptr inbounds %struct.per_bio_data, %struct.per_bio_data* %26, i32 0, i32 0
  %28 = load %struct.pending_block*, %struct.pending_block** %27, align 8
  store %struct.pending_block* %28, %struct.pending_block** %9, align 8
  %29 = load %struct.log_writes_c*, %struct.log_writes_c** %7, align 8
  %30 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %29, i32 0, i32 0
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.pending_block*, %struct.pending_block** %9, align 8
  %34 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @LOG_FLUSH_FLAG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %25
  %40 = load %struct.pending_block*, %struct.pending_block** %9, align 8
  %41 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %40, i32 0, i32 1
  %42 = load %struct.log_writes_c*, %struct.log_writes_c** %7, align 8
  %43 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %42, i32 0, i32 3
  %44 = call i32 @list_splice_tail_init(i32* %41, i32* %43)
  %45 = load %struct.pending_block*, %struct.pending_block** %9, align 8
  %46 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %45, i32 0, i32 1
  %47 = load %struct.log_writes_c*, %struct.log_writes_c** %7, align 8
  %48 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %47, i32 0, i32 3
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  %50 = load %struct.log_writes_c*, %struct.log_writes_c** %7, align 8
  %51 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @wake_up_process(i32 %52)
  br label %78

54:                                               ; preds = %25
  %55 = load %struct.pending_block*, %struct.pending_block** %9, align 8
  %56 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LOG_FUA_FLAG, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load %struct.pending_block*, %struct.pending_block** %9, align 8
  %63 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %62, i32 0, i32 1
  %64 = load %struct.log_writes_c*, %struct.log_writes_c** %7, align 8
  %65 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %64, i32 0, i32 3
  %66 = call i32 @list_add_tail(i32* %63, i32* %65)
  %67 = load %struct.log_writes_c*, %struct.log_writes_c** %7, align 8
  %68 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @wake_up_process(i32 %69)
  br label %77

71:                                               ; preds = %54
  %72 = load %struct.pending_block*, %struct.pending_block** %9, align 8
  %73 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %72, i32 0, i32 1
  %74 = load %struct.log_writes_c*, %struct.log_writes_c** %7, align 8
  %75 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %74, i32 0, i32 1
  %76 = call i32 @list_add_tail(i32* %73, i32* %75)
  br label %77

77:                                               ; preds = %71, %61
  br label %78

78:                                               ; preds = %77, %39
  %79 = load %struct.log_writes_c*, %struct.log_writes_c** %7, align 8
  %80 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %79, i32 0, i32 0
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  br label %83

83:                                               ; preds = %78, %20, %3
  %84 = load i32, i32* @DM_ENDIO_DONE, align 4
  ret i32 %84
}

declare dso_local %struct.per_bio_data* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
