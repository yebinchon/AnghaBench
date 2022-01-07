; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_schedule_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_schedule_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { %struct.TYPE_3__*, %struct.pool* }
%struct.TYPE_3__ = type { i32 }
%struct.pool = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.dm_dev = type { i32 }
%struct.dm_bio_prison_cell = type { i32 }
%struct.bio = type { i32 }
%struct.dm_thin_new_mapping = type { i32, i32, i32, i32, i32, %struct.dm_bio_prison_cell*, %struct.thin_c* }
%struct.dm_io_region = type { i32, i32, i32 }

@copy_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, i32, %struct.dm_dev*, i32, i32, %struct.dm_bio_prison_cell*, %struct.bio*, i32)* @schedule_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_copy(%struct.thin_c* %0, i32 %1, %struct.dm_dev* %2, i32 %3, i32 %4, %struct.dm_bio_prison_cell* %5, %struct.bio* %6, i32 %7) #0 {
  %9 = alloca %struct.thin_c*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dm_bio_prison_cell*, align 8
  %15 = alloca %struct.bio*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.pool*, align 8
  %18 = alloca %struct.dm_thin_new_mapping*, align 8
  %19 = alloca %struct.dm_io_region, align 4
  %20 = alloca %struct.dm_io_region, align 4
  store %struct.thin_c* %0, %struct.thin_c** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.dm_dev* %2, %struct.dm_dev** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.dm_bio_prison_cell* %5, %struct.dm_bio_prison_cell** %14, align 8
  store %struct.bio* %6, %struct.bio** %15, align 8
  store i32 %7, i32* %16, align 4
  %21 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %22 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %21, i32 0, i32 1
  %23 = load %struct.pool*, %struct.pool** %22, align 8
  store %struct.pool* %23, %struct.pool** %17, align 8
  %24 = load %struct.pool*, %struct.pool** %17, align 8
  %25 = call %struct.dm_thin_new_mapping* @get_next_mapping(%struct.pool* %24)
  store %struct.dm_thin_new_mapping* %25, %struct.dm_thin_new_mapping** %18, align 8
  %26 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %27 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %18, align 8
  %28 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %27, i32 0, i32 6
  store %struct.thin_c* %26, %struct.thin_c** %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %18, align 8
  %31 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add i32 %32, 1
  %34 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %18, align 8
  %35 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %18, align 8
  %38 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %14, align 8
  %40 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %18, align 8
  %41 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %40, i32 0, i32 5
  store %struct.dm_bio_prison_cell* %39, %struct.dm_bio_prison_cell** %41, align 8
  %42 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %18, align 8
  %43 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %42, i32 0, i32 3
  %44 = call i32 @atomic_set(i32* %43, i32 3)
  %45 = load %struct.pool*, %struct.pool** %17, align 8
  %46 = getelementptr inbounds %struct.pool, %struct.pool* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %18, align 8
  %49 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %48, i32 0, i32 4
  %50 = call i32 @dm_deferred_set_add_work(i32 %47, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %8
  %53 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %18, align 8
  %54 = call i32 @complete_mapping_preparation(%struct.dm_thin_new_mapping* %53)
  br label %55

55:                                               ; preds = %52, %8
  %56 = load %struct.pool*, %struct.pool** %17, align 8
  %57 = load %struct.bio*, %struct.bio** %15, align 8
  %58 = call i64 @io_overwrites_block(%struct.pool* %56, %struct.bio* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %62 = load %struct.bio*, %struct.bio** %15, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %18, align 8
  %65 = call i32 @remap_and_issue_overwrite(%struct.thin_c* %61, %struct.bio* %62, i32 %63, %struct.dm_thin_new_mapping* %64)
  br label %131

66:                                               ; preds = %55
  %67 = load %struct.dm_dev*, %struct.dm_dev** %11, align 8
  %68 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %19, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.pool*, %struct.pool** %17, align 8
  %73 = getelementptr inbounds %struct.pool, %struct.pool* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %71, %74
  %76 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %19, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %16, align 4
  %78 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %19, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %80 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %20, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.pool*, %struct.pool** %17, align 8
  %87 = getelementptr inbounds %struct.pool, %struct.pool* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %85, %88
  %90 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %20, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %16, align 4
  %92 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %20, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = load %struct.pool*, %struct.pool** %17, align 8
  %94 = getelementptr inbounds %struct.pool, %struct.pool* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @copy_complete, align 4
  %97 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %18, align 8
  %98 = call i32 @dm_kcopyd_copy(i32 %95, %struct.dm_io_region* %19, i32 1, %struct.dm_io_region* %20, i32 0, i32 %96, %struct.dm_thin_new_mapping* %97)
  %99 = load i32, i32* %16, align 4
  %100 = load %struct.pool*, %struct.pool** %17, align 8
  %101 = getelementptr inbounds %struct.pool, %struct.pool* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %130

104:                                              ; preds = %66
  %105 = load %struct.pool*, %struct.pool** %17, align 8
  %106 = getelementptr inbounds %struct.pool, %struct.pool* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %104
  %111 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %18, align 8
  %112 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %111, i32 0, i32 3
  %113 = call i32 @atomic_inc(i32* %112)
  %114 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %115 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %18, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.pool*, %struct.pool** %17, align 8
  %118 = getelementptr inbounds %struct.pool, %struct.pool* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %116, %119
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  %125 = load %struct.pool*, %struct.pool** %17, align 8
  %126 = getelementptr inbounds %struct.pool, %struct.pool* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %124, %127
  %129 = call i32 @ll_zero(%struct.thin_c* %114, %struct.dm_thin_new_mapping* %115, i32 %122, i32 %128)
  br label %130

130:                                              ; preds = %110, %104, %66
  br label %131

131:                                              ; preds = %130, %60
  %132 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %18, align 8
  %133 = call i32 @complete_mapping_preparation(%struct.dm_thin_new_mapping* %132)
  ret void
}

declare dso_local %struct.dm_thin_new_mapping* @get_next_mapping(%struct.pool*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dm_deferred_set_add_work(i32, i32*) #1

declare dso_local i32 @complete_mapping_preparation(%struct.dm_thin_new_mapping*) #1

declare dso_local i64 @io_overwrites_block(%struct.pool*, %struct.bio*) #1

declare dso_local i32 @remap_and_issue_overwrite(%struct.thin_c*, %struct.bio*, i32, %struct.dm_thin_new_mapping*) #1

declare dso_local i32 @dm_kcopyd_copy(i32, %struct.dm_io_region*, i32, %struct.dm_io_region*, i32, i32, %struct.dm_thin_new_mapping*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ll_zero(%struct.thin_c*, %struct.dm_thin_new_mapping*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
