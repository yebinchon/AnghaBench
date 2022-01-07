; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_pending_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_pending_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snap_pending_exception = type { i32, %struct.bio*, i32, i32, %struct.dm_exception, %struct.dm_snapshot* }
%struct.bio = type { i32 }
%struct.dm_exception = type { i32 }
%struct.dm_snapshot = type { i32, i32, i32 }
%struct.dm_exception_table_lock = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @pending_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pending_complete(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_snap_pending_exception*, align 8
  %6 = alloca %struct.dm_exception*, align 8
  %7 = alloca %struct.dm_snapshot*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca %struct.dm_exception_table_lock, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.dm_snap_pending_exception*
  store %struct.dm_snap_pending_exception* %14, %struct.dm_snap_pending_exception** %5, align 8
  %15 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %5, align 8
  %16 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %15, i32 0, i32 5
  %17 = load %struct.dm_snapshot*, %struct.dm_snapshot** %16, align 8
  store %struct.dm_snapshot* %17, %struct.dm_snapshot** %7, align 8
  store %struct.bio* null, %struct.bio** %8, align 8
  store %struct.bio* null, %struct.bio** %9, align 8
  store %struct.bio* null, %struct.bio** %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %19 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %5, align 8
  %20 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dm_exception_table_lock_init(%struct.dm_snapshot* %18, i32 %22, %struct.dm_exception_table_lock* %11)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i32 @invalidate_snapshot(%struct.dm_snapshot* %27, i32 %29)
  store i32 1, i32* %12, align 4
  %31 = call i32 @dm_exception_table_lock(%struct.dm_exception_table_lock* %11)
  br label %88

32:                                               ; preds = %2
  %33 = load i32, i32* @GFP_NOIO, align 4
  %34 = call %struct.dm_exception* @alloc_completed_exception(i32 %33)
  store %struct.dm_exception* %34, %struct.dm_exception** %6, align 8
  %35 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %36 = icmp ne %struct.dm_exception* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call i32 @invalidate_snapshot(%struct.dm_snapshot* %38, i32 %40)
  store i32 1, i32* %12, align 4
  %42 = call i32 @dm_exception_table_lock(%struct.dm_exception_table_lock* %11)
  br label %88

43:                                               ; preds = %32
  %44 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %45 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %5, align 8
  %46 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %45, i32 0, i32 4
  %47 = bitcast %struct.dm_exception* %44 to i8*
  %48 = bitcast %struct.dm_exception* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 8 %48, i64 4, i1 false)
  %49 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %50 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %49, i32 0, i32 0
  %51 = call i32 @down_read(i32* %50)
  %52 = call i32 @dm_exception_table_lock(%struct.dm_exception_table_lock* %11)
  %53 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %54 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %43
  %58 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %59 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %58, i32 0, i32 0
  %60 = call i32 @up_read(i32* %59)
  %61 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %62 = call i32 @free_completed_exception(%struct.dm_exception* %61)
  store i32 1, i32* %12, align 4
  br label %88

63:                                               ; preds = %43
  %64 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %65 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %64, i32 0, i32 1
  %66 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %67 = call i32 @dm_insert_exception(i32* %65, %struct.dm_exception* %66)
  %68 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %69 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %68, i32 0, i32 0
  %70 = call i32 @up_read(i32* %69)
  %71 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %72 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %5, align 8
  %73 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @__chunk_is_tracked(%struct.dm_snapshot* %71, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %63
  %79 = call i32 @dm_exception_table_unlock(%struct.dm_exception_table_lock* %11)
  %80 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %81 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %5, align 8
  %82 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @__check_for_conflicting_io(%struct.dm_snapshot* %80, i32 %84)
  %86 = call i32 @dm_exception_table_lock(%struct.dm_exception_table_lock* %11)
  br label %87

87:                                               ; preds = %78, %63
  br label %88

88:                                               ; preds = %87, %57, %37, %26
  %89 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %5, align 8
  %90 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %89, i32 0, i32 4
  %91 = call i32 @dm_remove_exception(%struct.dm_exception* %90)
  %92 = call i32 @dm_exception_table_unlock(%struct.dm_exception_table_lock* %11)
  %93 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %5, align 8
  %94 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %93, i32 0, i32 3
  %95 = call %struct.bio* @bio_list_get(i32* %94)
  store %struct.bio* %95, %struct.bio** %9, align 8
  %96 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %5, align 8
  %97 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %96, i32 0, i32 2
  %98 = call %struct.bio* @bio_list_get(i32* %97)
  store %struct.bio* %98, %struct.bio** %8, align 8
  %99 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %5, align 8
  %100 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %99, i32 0, i32 1
  %101 = load %struct.bio*, %struct.bio** %100, align 8
  store %struct.bio* %101, %struct.bio** %10, align 8
  %102 = load %struct.bio*, %struct.bio** %10, align 8
  %103 = icmp ne %struct.bio* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %88
  %105 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %5, align 8
  %106 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.bio*, %struct.bio** %10, align 8
  %109 = getelementptr inbounds %struct.bio, %struct.bio* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %104, %88
  %111 = call i32 (...) @increment_pending_exceptions_done_count()
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load %struct.bio*, %struct.bio** %10, align 8
  %116 = icmp ne %struct.bio* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.bio*, %struct.bio** %10, align 8
  %119 = call i32 @bio_io_error(%struct.bio* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.bio*, %struct.bio** %9, align 8
  %122 = call i32 @error_bios(%struct.bio* %121)
  br label %132

123:                                              ; preds = %110
  %124 = load %struct.bio*, %struct.bio** %10, align 8
  %125 = icmp ne %struct.bio* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.bio*, %struct.bio** %10, align 8
  %128 = call i32 @bio_endio(%struct.bio* %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load %struct.bio*, %struct.bio** %9, align 8
  %131 = call i32 @flush_bios(%struct.bio* %130)
  br label %132

132:                                              ; preds = %129, %120
  %133 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %134 = load %struct.bio*, %struct.bio** %8, align 8
  %135 = call i32 @retry_origin_bios(%struct.dm_snapshot* %133, %struct.bio* %134)
  %136 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %5, align 8
  %137 = call i32 @free_pending_exception(%struct.dm_snap_pending_exception* %136)
  ret void
}

declare dso_local i32 @dm_exception_table_lock_init(%struct.dm_snapshot*, i32, %struct.dm_exception_table_lock*) #1

declare dso_local i32 @invalidate_snapshot(%struct.dm_snapshot*, i32) #1

declare dso_local i32 @dm_exception_table_lock(%struct.dm_exception_table_lock*) #1

declare dso_local %struct.dm_exception* @alloc_completed_exception(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @free_completed_exception(%struct.dm_exception*) #1

declare dso_local i32 @dm_insert_exception(i32*, %struct.dm_exception*) #1

declare dso_local i64 @__chunk_is_tracked(%struct.dm_snapshot*, i32) #1

declare dso_local i32 @dm_exception_table_unlock(%struct.dm_exception_table_lock*) #1

declare dso_local i32 @__check_for_conflicting_io(%struct.dm_snapshot*, i32) #1

declare dso_local i32 @dm_remove_exception(%struct.dm_exception*) #1

declare dso_local %struct.bio* @bio_list_get(i32*) #1

declare dso_local i32 @increment_pending_exceptions_done_count(...) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i32 @error_bios(%struct.bio*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i32 @flush_bios(%struct.bio*) #1

declare dso_local i32 @retry_origin_bios(%struct.dm_snapshot*, %struct.bio*) #1

declare dso_local i32 @free_pending_exception(%struct.dm_snap_pending_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
