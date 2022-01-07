; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_make_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32 }
%struct.bio = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REQ_PREFLUSH = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.bio*)* @raid1_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid1_make_request(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %7 = load %struct.bio*, %struct.bio** %5, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @REQ_PREFLUSH, align 4
  %11 = and i32 %9, %10
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.mddev*, %struct.mddev** %4, align 8
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = call i32 @md_flush_request(%struct.mddev* %15, %struct.bio* %16)
  store i32 1, i32* %3, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bio*, %struct.bio** %5, align 8
  %24 = call i32 @bio_sectors(%struct.bio* %23)
  %25 = call i32 @align_to_barrier_unit_end(i32 %22, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = call i64 @bio_data_dir(%struct.bio* %26)
  %28 = load i64, i64* @READ, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load %struct.mddev*, %struct.mddev** %4, align 8
  %32 = load %struct.bio*, %struct.bio** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @raid1_read_request(%struct.mddev* %31, %struct.bio* %32, i32 %33, i32* null)
  br label %46

35:                                               ; preds = %18
  %36 = load %struct.mddev*, %struct.mddev** %4, align 8
  %37 = load %struct.bio*, %struct.bio** %5, align 8
  %38 = call i32 @md_write_start(%struct.mddev* %36, %struct.bio* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %47

41:                                               ; preds = %35
  %42 = load %struct.mddev*, %struct.mddev** %4, align 8
  %43 = load %struct.bio*, %struct.bio** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @raid1_write_request(%struct.mddev* %42, %struct.bio* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %30
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %40, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @md_flush_request(%struct.mddev*, %struct.bio*) #1

declare dso_local i32 @align_to_barrier_unit_end(i32, i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @raid1_read_request(%struct.mddev*, %struct.bio*, i32, i32*) #1

declare dso_local i32 @md_write_start(%struct.mddev*, %struct.bio*) #1

declare dso_local i32 @raid1_write_request(%struct.mddev*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
