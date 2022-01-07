; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid_end_bio_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid_end_bio_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1bio = type { i32, %struct.bio* }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@R1BIO_Returned = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"raid1: sync end %s on sectors %llu-%llu\0A\00", align 1
@WRITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1bio*)* @raid_end_bio_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid_end_bio_io(%struct.r1bio* %0) #0 {
  %2 = alloca %struct.r1bio*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.r1bio* %0, %struct.r1bio** %2, align 8
  %4 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %5 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %4, i32 0, i32 1
  %6 = load %struct.bio*, %struct.bio** %5, align 8
  store %struct.bio* %6, %struct.bio** %3, align 8
  %7 = load i32, i32* @R1BIO_Returned, align 4
  %8 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %9 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %8, i32 0, i32 0
  %10 = call i32 @test_and_set_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %1
  %13 = load %struct.bio*, %struct.bio** %3, align 8
  %14 = call i64 @bio_data_dir(%struct.bio* %13)
  %15 = load i64, i64* @WRITE, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %19 = load %struct.bio*, %struct.bio** %3, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.bio*, %struct.bio** %3, align 8
  %24 = call i64 @bio_end_sector(%struct.bio* %23)
  %25 = sub i64 %24, 1
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %18, i64 %22, i64 %25)
  %27 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %28 = call i32 @call_bio_endio(%struct.r1bio* %27)
  br label %29

29:                                               ; preds = %12, %1
  %30 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %31 = call i32 @free_r1bio(%struct.r1bio* %30)
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i64, i64) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @bio_end_sector(%struct.bio*) #1

declare dso_local i32 @call_bio_endio(%struct.r1bio*) #1

declare dso_local i32 @free_r1bio(%struct.r1bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
