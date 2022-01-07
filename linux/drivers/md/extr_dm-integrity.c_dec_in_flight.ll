; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dec_in_flight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dec_in_flight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_io = type { i32, i32, i32, %struct.TYPE_2__, %struct.dm_integrity_c*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dm_integrity_c = type { i32 }
%struct.bio = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@integrity_bio_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_io*)* @dec_in_flight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dec_in_flight(%struct.dm_integrity_io* %0) #0 {
  %2 = alloca %struct.dm_integrity_io*, align 8
  %3 = alloca %struct.dm_integrity_c*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.dm_integrity_io* %0, %struct.dm_integrity_io** %2, align 8
  %5 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %2, align 8
  %6 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %5, i32 0, i32 5
  %7 = call i64 @atomic_dec_and_test(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %96

9:                                                ; preds = %1
  %10 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %2, align 8
  %11 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %10, i32 0, i32 4
  %12 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %11, align 8
  store %struct.dm_integrity_c* %12, %struct.dm_integrity_c** %3, align 8
  %13 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %14 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %2, align 8
  %15 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %14, i32 0, i32 3
  %16 = call i32 @remove_range(%struct.dm_integrity_c* %13, %struct.TYPE_2__* %15)
  %17 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %2, align 8
  %18 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %9
  %23 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %24 = call i32 @schedule_autocommit(%struct.dm_integrity_c* %23)
  br label %25

25:                                               ; preds = %22, %9
  %26 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %2, align 8
  %27 = call %struct.bio* @dm_bio_from_per_bio_data(%struct.dm_integrity_io* %26, i32 40)
  store %struct.bio* %27, %struct.bio** %4, align 8
  %28 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %2, align 8
  %29 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  %34 = load %struct.bio*, %struct.bio** %4, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %2, align 8
  %40 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bio*, %struct.bio** %4, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %33, %25
  %45 = load %struct.bio*, %struct.bio** %4, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %92

53:                                               ; preds = %44
  %54 = load %struct.bio*, %struct.bio** %4, align 8
  %55 = call i32 @bio_sectors(%struct.bio* %54)
  %56 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %2, align 8
  %57 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %55, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %53
  %65 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %2, align 8
  %66 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %2, align 8
  %70 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %68
  store i32 %73, i32* %71, align 4
  %74 = load %struct.bio*, %struct.bio** %4, align 8
  %75 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %2, align 8
  %76 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SECTOR_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = call i32 @bio_advance(%struct.bio* %74, i32 %80)
  %82 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %2, align 8
  %83 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %82, i32 0, i32 2
  %84 = load i32, i32* @integrity_bio_wait, align 4
  %85 = call i32 @INIT_WORK(i32* %83, i32 %84)
  %86 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %87 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %2, align 8
  %90 = getelementptr inbounds %struct.dm_integrity_io, %struct.dm_integrity_io* %89, i32 0, i32 2
  %91 = call i32 @queue_work(i32 %88, i32* %90)
  br label %96

92:                                               ; preds = %53, %44
  %93 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %94 = load %struct.dm_integrity_io*, %struct.dm_integrity_io** %2, align 8
  %95 = call i32 @do_endio_flush(%struct.dm_integrity_c* %93, %struct.dm_integrity_io* %94)
  br label %96

96:                                               ; preds = %64, %92, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @remove_range(%struct.dm_integrity_c*, %struct.TYPE_2__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @schedule_autocommit(%struct.dm_integrity_c*) #1

declare dso_local %struct.bio* @dm_bio_from_per_bio_data(%struct.dm_integrity_io*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @bio_advance(%struct.bio*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @do_endio_flush(%struct.dm_integrity_c*, %struct.dm_integrity_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
