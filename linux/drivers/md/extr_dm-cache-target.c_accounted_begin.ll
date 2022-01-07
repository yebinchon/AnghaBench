; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_accounted_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_accounted_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.bio = type { i32 }
%struct.per_bio_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, %struct.bio*)* @accounted_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accounted_begin(%struct.cache* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.per_bio_data*, align 8
  store %struct.cache* %0, %struct.cache** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.cache*, %struct.cache** %3, align 8
  %7 = load %struct.bio*, %struct.bio** %4, align 8
  %8 = call i64 @accountable_bio(%struct.cache* %6, %struct.bio* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = call %struct.per_bio_data* @get_per_bio_data(%struct.bio* %11)
  store %struct.per_bio_data* %12, %struct.per_bio_data** %5, align 8
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = call i32 @bio_sectors(%struct.bio* %13)
  %15 = load %struct.per_bio_data*, %struct.per_bio_data** %5, align 8
  %16 = getelementptr inbounds %struct.per_bio_data, %struct.per_bio_data* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.cache*, %struct.cache** %3, align 8
  %18 = getelementptr inbounds %struct.cache, %struct.cache* %17, i32 0, i32 0
  %19 = load %struct.per_bio_data*, %struct.per_bio_data** %5, align 8
  %20 = getelementptr inbounds %struct.per_bio_data, %struct.per_bio_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @iot_io_begin(i32* %18, i32 %21)
  br label %23

23:                                               ; preds = %10, %2
  ret void
}

declare dso_local i64 @accountable_bio(%struct.cache*, %struct.bio*) #1

declare dso_local %struct.per_bio_data* @get_per_bio_data(%struct.bio*) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @iot_io_begin(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
