; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_setup_takeover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_setup_takeover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i32, i32, i64, %struct.TYPE_2__*, i32, i32, %struct.mddev }
%struct.TYPE_2__ = type { %struct.md_rdev }
%struct.md_rdev = type { i32, i64, i32, i64 }
%struct.mddev = type { i32, i32, i64, i8* }

@ALGORITHM_RAID10_FAR = common dso_local global i32 0, align 4
@ALGORITHM_RAID10_NEAR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MD_ARRAY_FIRST_USE = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@In_sync = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*)* @rs_setup_takeover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_setup_takeover(%struct.raid_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.raid_set* %0, %struct.raid_set** %3, align 8
  %8 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %9 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %8, i32 0, i32 6
  store %struct.mddev* %9, %struct.mddev** %4, align 8
  %10 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %11 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.mddev*, %struct.mddev** %4, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  store i32 %12, i32* %6, align 4
  %15 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %16 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %26 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  br label %28

28:                                               ; preds = %24, %23
  %29 = phi i32 [ 0, %23 ], [ %27, %24 ]
  store i32 %29, i32* %7, align 4
  %30 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %31 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @rt_is_raid10(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %28
  %36 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %37 = call i64 @rs_is_raid0(%struct.raid_set* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %41 = call i32 @__reorder_raid_disk_indexes(%struct.raid_set* %40)
  %42 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %43 = load i32, i32* @ALGORITHM_RAID10_FAR, align 4
  %44 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %45 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @raid10_format_to_md_layout(%struct.raid_set* %42, i32 %43, i32 %46)
  %48 = load %struct.mddev*, %struct.mddev** %4, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  br label %67

50:                                               ; preds = %35
  %51 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %52 = call i64 @rs_is_raid1(%struct.raid_set* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %56 = load i32, i32* @ALGORITHM_RAID10_NEAR, align 4
  %57 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %58 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @raid10_format_to_md_layout(%struct.raid_set* %55, i32 %56, i32 %59)
  %61 = load %struct.mddev*, %struct.mddev** %4, align 8
  %62 = getelementptr inbounds %struct.mddev, %struct.mddev* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  br label %66

63:                                               ; preds = %50
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %117

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %39
  br label %68

68:                                               ; preds = %67, %28
  %69 = load i32, i32* @MD_ARRAY_FIRST_USE, align 4
  %70 = load %struct.mddev*, %struct.mddev** %4, align 8
  %71 = getelementptr inbounds %struct.mddev, %struct.mddev* %70, i32 0, i32 1
  %72 = call i32 @clear_bit(i32 %69, i32* %71)
  %73 = load i64, i64* @MaxSector, align 8
  %74 = load %struct.mddev*, %struct.mddev** %4, align 8
  %75 = getelementptr inbounds %struct.mddev, %struct.mddev* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %112, %68
  %77 = load i32, i32* %6, align 4
  %78 = add i32 %77, -1
  store i32 %78, i32* %6, align 4
  %79 = icmp ne i32 %77, 0
  br i1 %79, label %80, label %116

80:                                               ; preds = %76
  %81 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %82 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store %struct.md_rdev* %87, %struct.md_rdev** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %90 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = call i64 @test_bit(i32 %88, i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %80
  %96 = load i32, i32* @In_sync, align 4
  %97 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %98 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %97, i32 0, i32 2
  %99 = call i32 @clear_bit(i32 %96, i32* %98)
  %100 = load i32, i32* @Faulty, align 4
  %101 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %102 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %101, i32 0, i32 2
  %103 = call i32 @clear_bit(i32 %100, i32* %102)
  %104 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %105 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.mddev*, %struct.mddev** %4, align 8
  %107 = getelementptr inbounds %struct.mddev, %struct.mddev* %106, i32 0, i32 2
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* @MD_ARRAY_FIRST_USE, align 4
  %109 = load %struct.mddev*, %struct.mddev** %4, align 8
  %110 = getelementptr inbounds %struct.mddev, %struct.mddev* %109, i32 0, i32 1
  %111 = call i32 @set_bit(i32 %108, i32* %110)
  br label %112

112:                                              ; preds = %95, %80
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %115 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %76

116:                                              ; preds = %76
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %63
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i64 @rt_is_raid10(i32) #1

declare dso_local i64 @rs_is_raid0(%struct.raid_set*) #1

declare dso_local i32 @__reorder_raid_disk_indexes(%struct.raid_set*) #1

declare dso_local i8* @raid10_format_to_md_layout(%struct.raid_set*, i32, i32) #1

declare dso_local i64 @rs_is_raid1(%struct.raid_set*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
