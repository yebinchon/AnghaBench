; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_prepared_discard_passdown_pt1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_prepared_discard_passdown_pt1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_thin_new_mapping = type { i64, i64, i32, i32, i64, i64, %struct.thin_c* }
%struct.thin_c = type { %struct.pool*, i32 }
%struct.pool = type { i32, i32, i32 }
%struct.bio = type { %struct.dm_thin_new_mapping*, i32 }
%struct.discard_op = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"dm_thin_remove_range\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"dm_pool_inc_data_range\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"%s: unable to allocate top level discard bio for passdown. Skipping passdown.\00", align 1
@passdown_endio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_thin_new_mapping*)* @process_prepared_discard_passdown_pt1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_prepared_discard_passdown_pt1(%struct.dm_thin_new_mapping* %0) #0 {
  %2 = alloca %struct.dm_thin_new_mapping*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.thin_c*, align 8
  %5 = alloca %struct.pool*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.discard_op, align 4
  store %struct.dm_thin_new_mapping* %0, %struct.dm_thin_new_mapping** %2, align 8
  %9 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %10 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %9, i32 0, i32 6
  %11 = load %struct.thin_c*, %struct.thin_c** %10, align 8
  store %struct.thin_c* %11, %struct.thin_c** %4, align 8
  %12 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %13 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %12, i32 0, i32 0
  %14 = load %struct.pool*, %struct.pool** %13, align 8
  store %struct.pool* %14, %struct.pool** %5, align 8
  %15 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %16 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %19 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %22 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = add nsw i64 %17, %24
  store i64 %25, i64* %7, align 8
  %26 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %27 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %30 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %33 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dm_thin_remove_range(i32 %28, i64 %31, i64 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %1
  %39 = load %struct.pool*, %struct.pool** %5, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @metadata_operation_failed(%struct.pool* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %43 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bio_io_error(i32 %44)
  %46 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %47 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %48 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @cell_defer_no_holder(%struct.thin_c* %46, i32 %49)
  %51 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %52 = load %struct.pool*, %struct.pool** %5, align 8
  %53 = getelementptr inbounds %struct.pool, %struct.pool* %52, i32 0, i32 1
  %54 = call i32 @mempool_free(%struct.dm_thin_new_mapping* %51, i32* %53)
  br label %125

55:                                               ; preds = %1
  %56 = load %struct.pool*, %struct.pool** %5, align 8
  %57 = getelementptr inbounds %struct.pool, %struct.pool* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %60 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @dm_pool_inc_data_range(i32 %58, i64 %61, i64 %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %55
  %67 = load %struct.pool*, %struct.pool** %5, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @metadata_operation_failed(%struct.pool* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %71 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @bio_io_error(i32 %72)
  %74 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %75 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %76 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @cell_defer_no_holder(%struct.thin_c* %74, i32 %77)
  %79 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %80 = load %struct.pool*, %struct.pool** %5, align 8
  %81 = getelementptr inbounds %struct.pool, %struct.pool* %80, i32 0, i32 1
  %82 = call i32 @mempool_free(%struct.dm_thin_new_mapping* %79, i32* %81)
  br label %125

83:                                               ; preds = %55
  %84 = load i32, i32* @GFP_NOIO, align 4
  %85 = call %struct.bio* @bio_alloc(i32 %84, i32 1)
  store %struct.bio* %85, %struct.bio** %6, align 8
  %86 = load %struct.bio*, %struct.bio** %6, align 8
  %87 = icmp ne %struct.bio* %86, null
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %90 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %89, i32 0, i32 0
  %91 = load %struct.pool*, %struct.pool** %90, align 8
  %92 = getelementptr inbounds %struct.pool, %struct.pool* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dm_device_name(i32 %93)
  %95 = call i32 @DMWARN(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %97 = call i32 @queue_passdown_pt2(%struct.dm_thin_new_mapping* %96)
  br label %125

98:                                               ; preds = %83
  %99 = load i32, i32* @passdown_endio, align 4
  %100 = load %struct.bio*, %struct.bio** %6, align 8
  %101 = getelementptr inbounds %struct.bio, %struct.bio* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %103 = load %struct.bio*, %struct.bio** %6, align 8
  %104 = getelementptr inbounds %struct.bio, %struct.bio* %103, i32 0, i32 0
  store %struct.dm_thin_new_mapping* %102, %struct.dm_thin_new_mapping** %104, align 8
  %105 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %106 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %98
  %110 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %111 = load %struct.bio*, %struct.bio** %6, align 8
  %112 = call i32 @passdown_double_checking_shared_status(%struct.dm_thin_new_mapping* %110, %struct.bio* %111)
  br label %124

113:                                              ; preds = %98
  %114 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %115 = load %struct.bio*, %struct.bio** %6, align 8
  %116 = call i32 @begin_discard(%struct.discard_op* %8, %struct.thin_c* %114, %struct.bio* %115)
  %117 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %118 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @issue_discard(%struct.discard_op* %8, i64 %119, i64 %120)
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @end_discard(%struct.discard_op* %8, i32 %122)
  br label %124

124:                                              ; preds = %113, %109
  br label %125

125:                                              ; preds = %38, %66, %124, %88
  ret void
}

declare dso_local i32 @dm_thin_remove_range(i32, i64, i64) #1

declare dso_local i32 @metadata_operation_failed(%struct.pool*, i8*, i32) #1

declare dso_local i32 @bio_io_error(i32) #1

declare dso_local i32 @cell_defer_no_holder(%struct.thin_c*, i32) #1

declare dso_local i32 @mempool_free(%struct.dm_thin_new_mapping*, i32*) #1

declare dso_local i32 @dm_pool_inc_data_range(i32, i64, i64) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @DMWARN(i8*, i32) #1

declare dso_local i32 @dm_device_name(i32) #1

declare dso_local i32 @queue_passdown_pt2(%struct.dm_thin_new_mapping*) #1

declare dso_local i32 @passdown_double_checking_shared_status(%struct.dm_thin_new_mapping*, %struct.bio*) #1

declare dso_local i32 @begin_discard(%struct.discard_op*, %struct.thin_c*, %struct.bio*) #1

declare dso_local i32 @issue_discard(%struct.discard_op*, i64, i64) #1

declare dso_local i32 @end_discard(%struct.discard_op*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
