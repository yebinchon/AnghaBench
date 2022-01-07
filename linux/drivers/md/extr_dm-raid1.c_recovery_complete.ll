; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_recovery_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_recovery_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region = type { i32 }
%struct.mirror_set = type { i32, i32* }

@.str = private unnamed_addr constant [46 x i8] c"Unable to read primary mirror during recovery\00", align 1
@DM_RAID1_SYNC_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Write error during recovery (error = 0x%lx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*)* @recovery_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recovery_complete(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dm_region*, align 8
  %8 = alloca %struct.mirror_set*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.dm_region*
  store %struct.dm_region* %12, %struct.dm_region** %7, align 8
  %13 = load %struct.dm_region*, %struct.dm_region** %7, align 8
  %14 = call %struct.mirror_set* @dm_rh_region_context(%struct.dm_region* %13)
  store %struct.mirror_set* %14, %struct.mirror_set** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @DMERR_LIMIT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.mirror_set*, %struct.mirror_set** %8, align 8
  %20 = call i32* @get_default_mirror(%struct.mirror_set* %19)
  %21 = load i32, i32* @DM_RAID1_SYNC_ERROR, align 4
  %22 = call i32 @fail_mirror(i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %3
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %66

26:                                               ; preds = %23
  %27 = load i64, i64* %5, align 8
  %28 = call i32 (i8*, ...) @DMERR_LIMIT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %62, %26
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.mirror_set*, %struct.mirror_set** %8, align 8
  %32 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %29
  %36 = load %struct.mirror_set*, %struct.mirror_set** %8, align 8
  %37 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load %struct.mirror_set*, %struct.mirror_set** %8, align 8
  %43 = call i32* @get_default_mirror(%struct.mirror_set* %42)
  %44 = icmp eq i32* %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %62

46:                                               ; preds = %35
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @test_bit(i32 %47, i64* %5)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load %struct.mirror_set*, %struct.mirror_set** %8, align 8
  %52 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* @DM_RAID1_SYNC_ERROR, align 4
  %58 = call i32 @fail_mirror(i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %46
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %59, %45
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %29

65:                                               ; preds = %29
  br label %66

66:                                               ; preds = %65, %23
  %67 = load %struct.dm_region*, %struct.dm_region** %7, align 8
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %5, align 8
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %70, %66
  %74 = phi i1 [ true, %66 ], [ %72, %70 ]
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @dm_rh_recovery_end(%struct.dm_region* %67, i32 %76)
  ret void
}

declare dso_local %struct.mirror_set* @dm_rh_region_context(%struct.dm_region*) #1

declare dso_local i32 @DMERR_LIMIT(i8*, ...) #1

declare dso_local i32 @fail_mirror(i32*, i32) #1

declare dso_local i32* @get_default_mirror(%struct.mirror_set*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @dm_rh_recovery_end(%struct.dm_region*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
