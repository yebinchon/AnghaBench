; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_do_endio_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_do_endio_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32 }
%struct.dm_integrity_io = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*, %struct.dm_integrity_io*)* @do_endio_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_endio_flush(%struct.dm_integrity_c* %0, %struct.dm_integrity_io* %1) #0 {
  %3 = alloca %struct.dm_integrity_c*, align 8
  %4 = alloca %struct.dm_integrity_io*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %3, align 8
  store %struct.dm_integrity_io* %1, %struct.dm_integrity_io** %4, align 8
  %6 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %4, align 8
  %7 = call %struct.bio* @dm_bio_from_per_bio_data(%struct.dm_integrity_io* %6, i32 4)
  store %struct.bio* %7, %struct.bio** %5, align 8
  %8 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %4, align 8
  %9 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load %struct.bio*, %struct.bio** %5, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %13
  %23 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %24 = call i32 @dm_integrity_failed(%struct.dm_integrity_c* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %32 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %4, align 8
  %33 = call i32 @submit_flush_bio(%struct.dm_integrity_c* %31, %struct.dm_integrity_io* %32)
  br label %38

34:                                               ; preds = %22, %13, %2
  %35 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %36 = load %struct.bio*, %struct.bio** %5, align 8
  %37 = call i32 @do_endio(%struct.dm_integrity_c* %35, %struct.bio* %36)
  br label %38

38:                                               ; preds = %34, %30
  ret void
}

declare dso_local %struct.bio* @dm_bio_from_per_bio_data(%struct.dm_integrity_io*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dm_integrity_failed(%struct.dm_integrity_c*) #1

declare dso_local i32 @submit_flush_bio(%struct.dm_integrity_c*, %struct.dm_integrity_io*) #1

declare dso_local i32 @do_endio(%struct.dm_integrity_c*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
