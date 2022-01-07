; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_bio_drop_shared_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_bio_drop_shared_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.bio = type { i32 }
%struct.per_bio_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, %struct.bio*)* @bio_drop_shared_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bio_drop_shared_lock(%struct.cache* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.per_bio_data*, align 8
  store %struct.cache* %0, %struct.cache** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.bio*, %struct.bio** %4, align 8
  %7 = call %struct.per_bio_data* @get_per_bio_data(%struct.bio* %6)
  store %struct.per_bio_data* %7, %struct.per_bio_data** %5, align 8
  %8 = load %struct.per_bio_data*, %struct.per_bio_data** %5, align 8
  %9 = getelementptr inbounds %struct.per_bio_data, %struct.per_bio_data* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.cache*, %struct.cache** %3, align 8
  %14 = getelementptr inbounds %struct.cache, %struct.cache* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.per_bio_data*, %struct.per_bio_data** %5, align 8
  %17 = getelementptr inbounds %struct.per_bio_data, %struct.per_bio_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @dm_cell_put_v2(i32 %15, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = load %struct.cache*, %struct.cache** %3, align 8
  %23 = load %struct.per_bio_data*, %struct.per_bio_data** %5, align 8
  %24 = getelementptr inbounds %struct.per_bio_data, %struct.per_bio_data* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @free_prison_cell(%struct.cache* %22, i32* %25)
  br label %27

27:                                               ; preds = %21, %12, %2
  %28 = load %struct.per_bio_data*, %struct.per_bio_data** %5, align 8
  %29 = getelementptr inbounds %struct.per_bio_data, %struct.per_bio_data* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  ret void
}

declare dso_local %struct.per_bio_data* @get_per_bio_data(%struct.bio*) #1

declare dso_local i64 @dm_cell_put_v2(i32, i32*) #1

declare dso_local i32 @free_prison_cell(%struct.cache*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
