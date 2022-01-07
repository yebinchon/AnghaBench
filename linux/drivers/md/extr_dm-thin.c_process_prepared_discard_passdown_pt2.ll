; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_prepared_discard_passdown_pt2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_prepared_discard_passdown_pt2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_thin_new_mapping = type { i32, i32, i64, i64, i64, %struct.thin_c* }
%struct.thin_c = type { %struct.pool* }
%struct.pool = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"dm_pool_dec_data_range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_thin_new_mapping*)* @process_prepared_discard_passdown_pt2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_prepared_discard_passdown_pt2(%struct.dm_thin_new_mapping* %0) #0 {
  %2 = alloca %struct.dm_thin_new_mapping*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.thin_c*, align 8
  %5 = alloca %struct.pool*, align 8
  store %struct.dm_thin_new_mapping* %0, %struct.dm_thin_new_mapping** %2, align 8
  %6 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %7 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %6, i32 0, i32 5
  %8 = load %struct.thin_c*, %struct.thin_c** %7, align 8
  store %struct.thin_c* %8, %struct.thin_c** %4, align 8
  %9 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %10 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %9, i32 0, i32 0
  %11 = load %struct.pool*, %struct.pool** %10, align 8
  store %struct.pool* %11, %struct.pool** %5, align 8
  %12 = load %struct.pool*, %struct.pool** %5, align 8
  %13 = getelementptr inbounds %struct.pool, %struct.pool* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %16 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %19 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %22 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %25 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = add nsw i64 %20, %27
  %29 = call i32 @dm_pool_dec_data_range(i32 %14, i64 %17, i64 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %1
  %33 = load %struct.pool*, %struct.pool** %5, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @metadata_operation_failed(%struct.pool* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %37 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bio_io_error(i32 %38)
  br label %45

40:                                               ; preds = %1
  %41 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %42 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bio_endio(i32 %43)
  br label %45

45:                                               ; preds = %40, %32
  %46 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %47 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %48 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @cell_defer_no_holder(%struct.thin_c* %46, i32 %49)
  %51 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %52 = load %struct.pool*, %struct.pool** %5, align 8
  %53 = getelementptr inbounds %struct.pool, %struct.pool* %52, i32 0, i32 0
  %54 = call i32 @mempool_free(%struct.dm_thin_new_mapping* %51, i32* %53)
  ret void
}

declare dso_local i32 @dm_pool_dec_data_range(i32, i64, i64) #1

declare dso_local i32 @metadata_operation_failed(%struct.pool*, i8*, i32) #1

declare dso_local i32 @bio_io_error(i32) #1

declare dso_local i32 @bio_endio(i32) #1

declare dso_local i32 @cell_defer_no_holder(%struct.thin_c*, i32) #1

declare dso_local i32 @mempool_free(%struct.dm_thin_new_mapping*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
