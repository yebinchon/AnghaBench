; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_create_fresh_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_create_fresh_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.era_metadata = type { i32, i32, i32, i32, i32, i32, i32 }

@SUPERBLOCK_LOCATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"dm_tm_create_with_sm failed\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"couldn't create new writeset tree\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"couldn't create era array\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.era_metadata*)* @create_fresh_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_fresh_metadata(%struct.era_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.era_metadata*, align 8
  %4 = alloca i32, align 4
  store %struct.era_metadata* %0, %struct.era_metadata** %3, align 8
  %5 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %6 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SUPERBLOCK_LOCATION, align 4
  %9 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %10 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %9, i32 0, i32 0
  %11 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %12 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %11, i32 0, i32 1
  %13 = call i32 @dm_tm_create_with_sm(i32 %7, i32 %8, i32* %10, i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = call i32 @DMERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %52

19:                                               ; preds = %1
  %20 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %21 = call i32 @setup_infos(%struct.era_metadata* %20)
  %22 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %23 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %22, i32 0, i32 5
  %24 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %25 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %24, i32 0, i32 4
  %26 = call i32 @dm_btree_empty(i32* %23, i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = call i32 @DMERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %42

31:                                               ; preds = %19
  %32 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %33 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %32, i32 0, i32 3
  %34 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %35 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %34, i32 0, i32 2
  %36 = call i32 @dm_array_empty(i32* %33, i32* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 @DMERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %52

42:                                               ; preds = %39, %29
  %43 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %44 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dm_sm_destroy(i32 %45)
  %47 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %48 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dm_tm_destroy(i32 %49)
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %42, %41, %16
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @dm_tm_create_with_sm(i32, i32, i32*, i32*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @setup_infos(%struct.era_metadata*) #1

declare dso_local i32 @dm_btree_empty(i32*, i32*) #1

declare dso_local i32 @dm_array_empty(i32*, i32*) #1

declare dso_local i32 @dm_sm_destroy(i32) #1

declare dso_local i32 @dm_tm_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
