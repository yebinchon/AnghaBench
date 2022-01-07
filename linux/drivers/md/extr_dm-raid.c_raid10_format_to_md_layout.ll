; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid10_format_to_md_layout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid10_format_to_md_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i32 }

@ALGORITHM_RAID10_DEFAULT = common dso_local global i32 0, align 4
@ALGORITHM_RAID10_NEAR = common dso_local global i32 0, align 4
@ALGORITHM_RAID10_OFFSET = common dso_local global i32 0, align 4
@RAID10_OFFSET = common dso_local global i32 0, align 4
@__CTR_FLAG_RAID10_USE_NEAR_SETS = common dso_local global i32 0, align 4
@RAID10_USE_FAR_SETS = common dso_local global i32 0, align 4
@ALGORITHM_RAID10_FAR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RAID10_FAR_COPIES_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*, i32, i32)* @raid10_format_to_md_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid10_format_to_md_layout(%struct.raid_set* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.raid_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.raid_set* %0, %struct.raid_set** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ALGORITHM_RAID10_DEFAULT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ALGORITHM_RAID10_NEAR, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %3
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %8, align 4
  br label %62

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ALGORITHM_RAID10_OFFSET, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @RAID10_OFFSET, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @__CTR_FLAG_RAID10_USE_NEAR_SETS, align 4
  %28 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %29 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %28, i32 0, i32 0
  %30 = call i32 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @RAID10_USE_FAR_SETS, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %32, %24
  br label %61

37:                                               ; preds = %20
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ALGORITHM_RAID10_FAR, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* @RAID10_OFFSET, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @__CTR_FLAG_RAID10_USE_NEAR_SETS, align 4
  %48 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %49 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %48, i32 0, i32 0
  %50 = call i32 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* @RAID10_USE_FAR_SETS, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %52, %41
  br label %60

57:                                               ; preds = %37
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %70

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60, %36
  br label %62

62:                                               ; preds = %61, %18
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @RAID10_FAR_COPIES_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = or i32 %63, %66
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %62, %57
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
