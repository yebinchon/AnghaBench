; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-delay.c_delay_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-delay.c_delay_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.delay_c* }
%struct.delay_c = type { %struct.delay_class, %struct.delay_class, %struct.delay_class }
%struct.delay_class = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.dm_delay_info = type { %struct.delay_class* }

@WRITE = common dso_local global i64 0, align 8
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*)* @delay_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delay_map(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.delay_c*, align 8
  %6 = alloca %struct.delay_class*, align 8
  %7 = alloca %struct.dm_delay_info*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %8 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %9 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %8, i32 0, i32 0
  %10 = load %struct.delay_c*, %struct.delay_c** %9, align 8
  store %struct.delay_c* %10, %struct.delay_c** %5, align 8
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = call %struct.dm_delay_info* @dm_per_bio_data(%struct.bio* %11, i32 8)
  store %struct.dm_delay_info* %12, %struct.dm_delay_info** %7, align 8
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = call i64 @bio_data_dir(%struct.bio* %13)
  %15 = load i64, i64* @WRITE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.bio*, %struct.bio** %4, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @REQ_PREFLUSH, align 4
  %22 = and i32 %20, %21
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.delay_c*, %struct.delay_c** %5, align 8
  %27 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %26, i32 0, i32 2
  store %struct.delay_class* %27, %struct.delay_class** %6, align 8
  br label %31

28:                                               ; preds = %17
  %29 = load %struct.delay_c*, %struct.delay_c** %5, align 8
  %30 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %29, i32 0, i32 1
  store %struct.delay_class* %30, %struct.delay_class** %6, align 8
  br label %31

31:                                               ; preds = %28, %25
  br label %35

32:                                               ; preds = %2
  %33 = load %struct.delay_c*, %struct.delay_c** %5, align 8
  %34 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %33, i32 0, i32 0
  store %struct.delay_class* %34, %struct.delay_class** %6, align 8
  br label %35

35:                                               ; preds = %32, %31
  %36 = load %struct.delay_class*, %struct.delay_class** %6, align 8
  %37 = load %struct.dm_delay_info*, %struct.dm_delay_info** %7, align 8
  %38 = getelementptr inbounds %struct.dm_delay_info, %struct.dm_delay_info* %37, i32 0, i32 0
  store %struct.delay_class* %36, %struct.delay_class** %38, align 8
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = load %struct.delay_class*, %struct.delay_class** %6, align 8
  %41 = getelementptr inbounds %struct.delay_class, %struct.delay_class* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bio_set_dev(%struct.bio* %39, i32 %44)
  %46 = load %struct.bio*, %struct.bio** %4, align 8
  %47 = call i64 @bio_sectors(%struct.bio* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %35
  %50 = load %struct.delay_class*, %struct.delay_class** %6, align 8
  %51 = getelementptr inbounds %struct.delay_class, %struct.delay_class* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %54 = load %struct.bio*, %struct.bio** %4, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @dm_target_offset(%struct.dm_target* %53, i64 %57)
  %59 = add nsw i64 %52, %58
  %60 = load %struct.bio*, %struct.bio** %4, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  br label %63

63:                                               ; preds = %49, %35
  %64 = load %struct.delay_c*, %struct.delay_c** %5, align 8
  %65 = load %struct.delay_class*, %struct.delay_class** %6, align 8
  %66 = load %struct.bio*, %struct.bio** %4, align 8
  %67 = call i32 @delay_bio(%struct.delay_c* %64, %struct.delay_class* %65, %struct.bio* %66)
  ret i32 %67
}

declare dso_local %struct.dm_delay_info* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local i64 @dm_target_offset(%struct.dm_target*, i64) #1

declare dso_local i32 @delay_bio(%struct.delay_c*, %struct.delay_class*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
