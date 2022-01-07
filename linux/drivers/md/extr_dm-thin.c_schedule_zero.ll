; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_schedule_zero.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_schedule_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { %struct.pool* }
%struct.pool = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dm_bio_prison_cell = type { i32 }
%struct.bio = type { i32 }
%struct.dm_thin_new_mapping = type { i32, i32, i32, %struct.dm_bio_prison_cell*, %struct.thin_c*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, i32, i32, %struct.dm_bio_prison_cell*, %struct.bio*)* @schedule_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_zero(%struct.thin_c* %0, i32 %1, i32 %2, %struct.dm_bio_prison_cell* %3, %struct.bio* %4) #0 {
  %6 = alloca %struct.thin_c*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_bio_prison_cell*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca %struct.pool*, align 8
  %12 = alloca %struct.dm_thin_new_mapping*, align 8
  store %struct.thin_c* %0, %struct.thin_c** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dm_bio_prison_cell* %3, %struct.dm_bio_prison_cell** %9, align 8
  store %struct.bio* %4, %struct.bio** %10, align 8
  %13 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %14 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %13, i32 0, i32 0
  %15 = load %struct.pool*, %struct.pool** %14, align 8
  store %struct.pool* %15, %struct.pool** %11, align 8
  %16 = load %struct.pool*, %struct.pool** %11, align 8
  %17 = call %struct.dm_thin_new_mapping* @get_next_mapping(%struct.pool* %16)
  store %struct.dm_thin_new_mapping* %17, %struct.dm_thin_new_mapping** %12, align 8
  %18 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %12, align 8
  %19 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %18, i32 0, i32 5
  %20 = call i32 @atomic_set(i32* %19, i32 1)
  %21 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %22 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %12, align 8
  %23 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %22, i32 0, i32 4
  store %struct.thin_c* %21, %struct.thin_c** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %12, align 8
  %26 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %27, 1
  %29 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %12, align 8
  %30 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %12, align 8
  %33 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %9, align 8
  %35 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %12, align 8
  %36 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %35, i32 0, i32 3
  store %struct.dm_bio_prison_cell* %34, %struct.dm_bio_prison_cell** %36, align 8
  %37 = load %struct.pool*, %struct.pool** %11, align 8
  %38 = getelementptr inbounds %struct.pool, %struct.pool* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %5
  %43 = load %struct.pool*, %struct.pool** %11, align 8
  %44 = load %struct.bio*, %struct.bio** %10, align 8
  %45 = call i64 @io_overwrites_block(%struct.pool* %43, %struct.bio* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %49 = load %struct.bio*, %struct.bio** %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %12, align 8
  %52 = call i32 @remap_and_issue_overwrite(%struct.thin_c* %48, %struct.bio* %49, i32 %50, %struct.dm_thin_new_mapping* %51)
  br label %68

53:                                               ; preds = %42
  %54 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %55 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %12, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.pool*, %struct.pool** %11, align 8
  %58 = getelementptr inbounds %struct.pool, %struct.pool* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %56, %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  %63 = load %struct.pool*, %struct.pool** %11, align 8
  %64 = getelementptr inbounds %struct.pool, %struct.pool* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %62, %65
  %67 = call i32 @ll_zero(%struct.thin_c* %54, %struct.dm_thin_new_mapping* %55, i32 %60, i32 %66)
  br label %68

68:                                               ; preds = %53, %47
  br label %72

69:                                               ; preds = %5
  %70 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %12, align 8
  %71 = call i32 @process_prepared_mapping(%struct.dm_thin_new_mapping* %70)
  br label %72

72:                                               ; preds = %69, %68
  ret void
}

declare dso_local %struct.dm_thin_new_mapping* @get_next_mapping(%struct.pool*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @io_overwrites_block(%struct.pool*, %struct.bio*) #1

declare dso_local i32 @remap_and_issue_overwrite(%struct.thin_c*, %struct.bio*, i32, %struct.dm_thin_new_mapping*) #1

declare dso_local i32 @ll_zero(%struct.thin_c*, %struct.dm_thin_new_mapping*, i32, i32) #1

declare dso_local i32 @process_prepared_mapping(%struct.dm_thin_new_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
