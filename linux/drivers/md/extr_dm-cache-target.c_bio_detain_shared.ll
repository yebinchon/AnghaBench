; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_bio_detain_shared.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_bio_detain_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.bio = type { i32 }
%struct.per_bio_data = type { %struct.dm_bio_prison_cell_v2* }
%struct.dm_bio_prison_cell_v2 = type { i32 }
%struct.dm_cell_key_v2 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*, i32, %struct.bio*)* @bio_detain_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_detain_shared(%struct.cache* %0, i32 %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.per_bio_data*, align 8
  %10 = alloca %struct.dm_cell_key_v2, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dm_bio_prison_cell_v2*, align 8
  %13 = alloca %struct.dm_bio_prison_cell_v2*, align 8
  store %struct.cache* %0, %struct.cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bio* %2, %struct.bio** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @from_oblock(i32 %14)
  %16 = add i64 %15, 1
  %17 = call i32 @to_oblock(i64 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.cache*, %struct.cache** %5, align 8
  %19 = call %struct.dm_bio_prison_cell_v2* @alloc_prison_cell(%struct.cache* %18)
  store %struct.dm_bio_prison_cell_v2* %19, %struct.dm_bio_prison_cell_v2** %12, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @build_key(i32 %20, i32 %21, %struct.dm_cell_key_v2* %10)
  %23 = load %struct.cache*, %struct.cache** %5, align 8
  %24 = getelementptr inbounds %struct.cache, %struct.cache* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bio*, %struct.bio** %7, align 8
  %27 = call i32 @lock_level(%struct.bio* %26)
  %28 = load %struct.bio*, %struct.bio** %7, align 8
  %29 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %12, align 8
  %30 = call i32 @dm_cell_get_v2(i32 %25, %struct.dm_cell_key_v2* %10, i32 %27, %struct.bio* %28, %struct.dm_bio_prison_cell_v2* %29, %struct.dm_bio_prison_cell_v2** %13)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %3
  %34 = load %struct.cache*, %struct.cache** %5, align 8
  %35 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %12, align 8
  %36 = call i32 @free_prison_cell(%struct.cache* %34, %struct.dm_bio_prison_cell_v2* %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %53

38:                                               ; preds = %3
  %39 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %13, align 8
  %40 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %12, align 8
  %41 = icmp ne %struct.dm_bio_prison_cell_v2* %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.cache*, %struct.cache** %5, align 8
  %44 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %12, align 8
  %45 = call i32 @free_prison_cell(%struct.cache* %43, %struct.dm_bio_prison_cell_v2* %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.bio*, %struct.bio** %7, align 8
  %48 = call %struct.per_bio_data* @get_per_bio_data(%struct.bio* %47)
  store %struct.per_bio_data* %48, %struct.per_bio_data** %9, align 8
  %49 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %13, align 8
  %50 = load %struct.per_bio_data*, %struct.per_bio_data** %9, align 8
  %51 = getelementptr inbounds %struct.per_bio_data, %struct.per_bio_data* %50, i32 0, i32 0
  store %struct.dm_bio_prison_cell_v2* %49, %struct.dm_bio_prison_cell_v2** %51, align 8
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %33
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @to_oblock(i64) #1

declare dso_local i64 @from_oblock(i32) #1

declare dso_local %struct.dm_bio_prison_cell_v2* @alloc_prison_cell(%struct.cache*) #1

declare dso_local i32 @build_key(i32, i32, %struct.dm_cell_key_v2*) #1

declare dso_local i32 @dm_cell_get_v2(i32, %struct.dm_cell_key_v2*, i32, %struct.bio*, %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2**) #1

declare dso_local i32 @lock_level(%struct.bio*) #1

declare dso_local i32 @free_prison_cell(%struct.cache*, %struct.dm_bio_prison_cell_v2*) #1

declare dso_local %struct.per_bio_data* @get_per_bio_data(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
