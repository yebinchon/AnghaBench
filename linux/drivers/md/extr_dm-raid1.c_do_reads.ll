; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_do_reads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_do_reads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { i32 }
%struct.bio_list = type { i32 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mirror = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mirror_set*, %struct.bio_list*)* @do_reads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_reads(%struct.mirror_set* %0, %struct.bio_list* %1) #0 {
  %3 = alloca %struct.mirror_set*, align 8
  %4 = alloca %struct.bio_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.mirror*, align 8
  store %struct.mirror_set* %0, %struct.mirror_set** %3, align 8
  store %struct.bio_list* %1, %struct.bio_list** %4, align 8
  br label %8

8:                                                ; preds = %53, %2
  %9 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %10 = call %struct.bio* @bio_list_pop(%struct.bio_list* %9)
  store %struct.bio* %10, %struct.bio** %6, align 8
  %11 = icmp ne %struct.bio* %10, null
  br i1 %11, label %12, label %54

12:                                               ; preds = %8
  %13 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %14 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bio*, %struct.bio** %6, align 8
  %17 = call i32 @dm_rh_bio_to_region(i32 %15, %struct.bio* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %19 = call %struct.mirror* @get_default_mirror(%struct.mirror_set* %18)
  store %struct.mirror* %19, %struct.mirror** %7, align 8
  %20 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.mirror* @region_in_sync(%struct.mirror_set* %20, i32 %21, i32 1)
  %23 = call i64 @likely(%struct.mirror* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %12
  %26 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %27 = load %struct.bio*, %struct.bio** %6, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.mirror* @choose_mirror(%struct.mirror_set* %26, i32 %30)
  store %struct.mirror* %31, %struct.mirror** %7, align 8
  br label %42

32:                                               ; preds = %12
  %33 = load %struct.mirror*, %struct.mirror** %7, align 8
  %34 = icmp ne %struct.mirror* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.mirror*, %struct.mirror** %7, align 8
  %37 = getelementptr inbounds %struct.mirror, %struct.mirror* %36, i32 0, i32 0
  %38 = call i64 @atomic_read(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store %struct.mirror* null, %struct.mirror** %7, align 8
  br label %41

41:                                               ; preds = %40, %35, %32
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.mirror*, %struct.mirror** %7, align 8
  %44 = call i64 @likely(%struct.mirror* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.mirror*, %struct.mirror** %7, align 8
  %48 = load %struct.bio*, %struct.bio** %6, align 8
  %49 = call i32 @read_async_bio(%struct.mirror* %47, %struct.bio* %48)
  br label %53

50:                                               ; preds = %42
  %51 = load %struct.bio*, %struct.bio** %6, align 8
  %52 = call i32 @bio_io_error(%struct.bio* %51)
  br label %53

53:                                               ; preds = %50, %46
  br label %8

54:                                               ; preds = %8
  ret void
}

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @dm_rh_bio_to_region(i32, %struct.bio*) #1

declare dso_local %struct.mirror* @get_default_mirror(%struct.mirror_set*) #1

declare dso_local i64 @likely(%struct.mirror*) #1

declare dso_local %struct.mirror* @region_in_sync(%struct.mirror_set*, i32, i32) #1

declare dso_local %struct.mirror* @choose_mirror(%struct.mirror_set*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @read_async_bio(%struct.mirror*, %struct.bio*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
