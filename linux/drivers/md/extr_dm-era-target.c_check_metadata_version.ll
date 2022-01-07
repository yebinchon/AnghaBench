; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_check_metadata_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_check_metadata_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.superblock_disk = type { i32 }

@MIN_ERA_VERSION = common dso_local global i64 0, align 8
@MAX_ERA_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"Era metadata version %u found, but only versions between %u and %u supported.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.superblock_disk*)* @check_metadata_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_metadata_version(%struct.superblock_disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.superblock_disk*, align 8
  %4 = alloca i64, align 8
  store %struct.superblock_disk* %0, %struct.superblock_disk** %3, align 8
  %5 = load %struct.superblock_disk*, %struct.superblock_disk** %3, align 8
  %6 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @le32_to_cpu(i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @MIN_ERA_VERSION, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @MAX_ERA_VERSION, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12, %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @MIN_ERA_VERSION, align 8
  %19 = load i64, i64* @MAX_ERA_VERSION, align 8
  %20 = call i32 @DMERR(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %18, i64 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @DMERR(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
