; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_new_meta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_new_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_io_unit = type { i32, i32, i8*, %struct.TYPE_3__*, i64, i32, i32, i32, i32, %struct.r5l_log* }
%struct.TYPE_3__ = type { %struct.r5l_io_unit*, i32 }
%struct.r5l_log = type { i32, i32, i32, i32, i32, i32 }
%struct.r5l_meta_block = type { i8*, i8*, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@IO_UNIT_RUNNING = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@R5LOG_MAGIC = common dso_local global i32 0, align 4
@R5LOG_VERSION = common dso_local global i32 0, align 4
@r5l_log_endio = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.r5l_io_unit* (%struct.r5l_log*)* @r5l_new_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.r5l_io_unit* @r5l_new_meta(%struct.r5l_log* %0) #0 {
  %2 = alloca %struct.r5l_io_unit*, align 8
  %3 = alloca %struct.r5l_log*, align 8
  %4 = alloca %struct.r5l_io_unit*, align 8
  %5 = alloca %struct.r5l_meta_block*, align 8
  store %struct.r5l_log* %0, %struct.r5l_log** %3, align 8
  %6 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %7 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %6, i32 0, i32 5
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call i8* @mempool_alloc(i32* %7, i32 %8)
  %10 = bitcast i8* %9 to %struct.r5l_io_unit*
  store %struct.r5l_io_unit* %10, %struct.r5l_io_unit** %4, align 8
  %11 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %12 = icmp ne %struct.r5l_io_unit* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.r5l_io_unit* null, %struct.r5l_io_unit** %2, align 8
  br label %114

14:                                               ; preds = %1
  %15 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %16 = call i32 @memset(%struct.r5l_io_unit* %15, i32 0, i32 56)
  %17 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %18 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %19 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %18, i32 0, i32 9
  store %struct.r5l_log* %17, %struct.r5l_log** %19, align 8
  %20 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %21 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %20, i32 0, i32 1
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %24 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %23, i32 0, i32 8
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %27 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %26, i32 0, i32 7
  %28 = call i32 @bio_list_init(i32* %27)
  %29 = load i32, i32* @IO_UNIT_RUNNING, align 4
  %30 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %31 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %33 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %32, i32 0, i32 4
  %34 = load i32, i32* @GFP_NOIO, align 4
  %35 = call i8* @mempool_alloc(i32* %33, i32 %34)
  %36 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %37 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %39 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call %struct.r5l_meta_block* @page_address(i8* %40)
  store %struct.r5l_meta_block* %41, %struct.r5l_meta_block** %5, align 8
  %42 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %5, align 8
  %43 = call i32 @clear_page(%struct.r5l_meta_block* %42)
  %44 = load i32, i32* @R5LOG_MAGIC, align 4
  %45 = call i32 @cpu_to_le32(i32 %44)
  %46 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %5, align 8
  %47 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @R5LOG_VERSION, align 4
  %49 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %5, align 8
  %50 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %52 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @cpu_to_le64(i32 %53)
  %55 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %5, align 8
  %56 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %58 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @cpu_to_le64(i32 %59)
  %61 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %5, align 8
  %62 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %64 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %67 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %69 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %68, i32 0, i32 0
  store i32 24, i32* %69, align 8
  %70 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %71 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = sext i32 %72 to i64
  %75 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %76 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %75, i32 0, i32 4
  store i64 %74, i64* %76, align 8
  %77 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %78 = call %struct.TYPE_3__* @r5l_bio_alloc(%struct.r5l_log* %77)
  %79 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %80 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %79, i32 0, i32 3
  store %struct.TYPE_3__* %78, %struct.TYPE_3__** %80, align 8
  %81 = load i32, i32* @r5l_log_endio, align 4
  %82 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %83 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %82, i32 0, i32 3
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 8
  %86 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %87 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %88 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %87, i32 0, i32 3
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store %struct.r5l_io_unit* %86, %struct.r5l_io_unit** %90, align 8
  %91 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %92 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %91, i32 0, i32 3
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %95 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* @PAGE_SIZE, align 4
  %98 = call i32 @bio_add_page(%struct.TYPE_3__* %93, i8* %96, i32 %97, i32 0)
  %99 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %100 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %101 = call i32 @r5_reserve_log_entry(%struct.r5l_log* %99, %struct.r5l_io_unit* %100)
  %102 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %103 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %102, i32 0, i32 0
  %104 = call i32 @spin_lock_irq(i32* %103)
  %105 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  %106 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %105, i32 0, i32 1
  %107 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %108 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %107, i32 0, i32 1
  %109 = call i32 @list_add_tail(i32* %106, i32* %108)
  %110 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %111 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %110, i32 0, i32 0
  %112 = call i32 @spin_unlock_irq(i32* %111)
  %113 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %4, align 8
  store %struct.r5l_io_unit* %113, %struct.r5l_io_unit** %2, align 8
  br label %114

114:                                              ; preds = %14, %13
  %115 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %2, align 8
  ret %struct.r5l_io_unit* %115
}

declare dso_local i8* @mempool_alloc(i32*, i32) #1

declare dso_local i32 @memset(%struct.r5l_io_unit*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local %struct.r5l_meta_block* @page_address(i8*) #1

declare dso_local i32 @clear_page(%struct.r5l_meta_block*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local %struct.TYPE_3__* @r5l_bio_alloc(%struct.r5l_log*) #1

declare dso_local i32 @bio_add_page(%struct.TYPE_3__*, i8*, i32, i32) #1

declare dso_local i32 @r5_reserve_log_entry(%struct.r5l_log*, %struct.r5l_io_unit*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
