; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_metadata_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_metadata_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.era_metadata = type { i32, i32, i32 }
%struct.metadata_stats = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [30 x i8] c"dm_sm_get_nr_free returned %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"dm_pool_get_metadata_dev_size returned %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.era_metadata*, i8*)* @metadata_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metadata_get_stats(%struct.era_metadata* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.era_metadata*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.metadata_stats*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.era_metadata* %0, %struct.era_metadata** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.metadata_stats*
  store %struct.metadata_stats* %11, %struct.metadata_stats** %7, align 8
  %12 = load %struct.era_metadata*, %struct.era_metadata** %4, align 8
  %13 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dm_sm_get_nr_free(i32 %14, i8** %8)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @DMERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %55

22:                                               ; preds = %2
  %23 = load %struct.era_metadata*, %struct.era_metadata** %4, align 8
  %24 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dm_sm_get_nr_blocks(i32 %25, i8** %9)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @DMERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %55

33:                                               ; preds = %22
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.metadata_stats*, %struct.metadata_stats** %7, align 8
  %41 = getelementptr inbounds %struct.metadata_stats, %struct.metadata_stats* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.metadata_stats*, %struct.metadata_stats** %7, align 8
  %44 = getelementptr inbounds %struct.metadata_stats, %struct.metadata_stats* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.era_metadata*, %struct.era_metadata** %4, align 8
  %46 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.metadata_stats*, %struct.metadata_stats** %7, align 8
  %49 = getelementptr inbounds %struct.metadata_stats, %struct.metadata_stats* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.era_metadata*, %struct.era_metadata** %4, align 8
  %51 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.metadata_stats*, %struct.metadata_stats** %7, align 8
  %54 = getelementptr inbounds %struct.metadata_stats, %struct.metadata_stats* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %33, %29, %18
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @dm_sm_get_nr_free(i32, i8**) #1

declare dso_local i32 @DMERR(i8*, i32) #1

declare dso_local i32 @dm_sm_get_nr_blocks(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
