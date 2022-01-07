; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid_set_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid_set_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__, %struct.raid_type*, %struct.dm_target*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.dm_target = type { i8* }
%struct.raid_type = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Insufficient number of devices\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot allocate raid context\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.raid_set* (%struct.dm_target*, %struct.raid_type*, i32)* @raid_set_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.raid_set* @raid_set_alloc(%struct.dm_target* %0, %struct.raid_type* %1, i32 %2) #0 {
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.raid_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.raid_set*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.raid_type* %1, %struct.raid_type** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.raid_type*, %struct.raid_type** %6, align 8
  %12 = getelementptr inbounds %struct.raid_type, %struct.raid_type* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ule i32 %10, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %17 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.raid_set* @ERR_PTR(i32 %19)
  store %struct.raid_set* %20, %struct.raid_set** %4, align 8
  br label %108

21:                                               ; preds = %3
  %22 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %23 = load i32, i32* @dev, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @struct_size(%struct.raid_set* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.raid_set* @kzalloc(i32 %25, i32 %26)
  store %struct.raid_set* %27, %struct.raid_set** %9, align 8
  %28 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %29 = icmp ne %struct.raid_set* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %21
  %31 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %32 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %32, align 8
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.raid_set* @ERR_PTR(i32 %34)
  store %struct.raid_set* %35, %struct.raid_set** %4, align 8
  br label %108

36:                                               ; preds = %21
  %37 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %38 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %37, i32 0, i32 3
  %39 = call i32 @mddev_init(%struct.TYPE_4__* %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %42 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %44 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  %45 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %46 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %47 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %46, i32 0, i32 5
  store %struct.dm_target* %45, %struct.dm_target** %47, align 8
  %48 = load %struct.raid_type*, %struct.raid_type** %6, align 8
  %49 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %50 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %49, i32 0, i32 4
  store %struct.raid_type* %48, %struct.raid_type** %50, align 8
  %51 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %52 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %51, i32 0, i32 1
  store i32 256, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %55 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.raid_type*, %struct.raid_type** %6, align 8
  %58 = getelementptr inbounds %struct.raid_type, %struct.raid_type* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %61 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  store i32 %59, i32* %62, align 8
  %63 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %64 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %68 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 6
  store i32 %66, i32* %69, align 4
  %70 = load %struct.raid_type*, %struct.raid_type** %6, align 8
  %71 = getelementptr inbounds %struct.raid_type, %struct.raid_type* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %74 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 8
  %76 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %77 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %81 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  store i32 %79, i32* %82, align 4
  %83 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %84 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @MaxSector, align 4
  %87 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %88 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %103, %36
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %96 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = call i32 @md_rdev_init(i32* %101)
  br label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %8, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %90

106:                                              ; preds = %90
  %107 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  store %struct.raid_set* %107, %struct.raid_set** %4, align 8
  br label %108

108:                                              ; preds = %106, %30, %15
  %109 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  ret %struct.raid_set* %109
}

declare dso_local %struct.raid_set* @ERR_PTR(i32) #1

declare dso_local %struct.raid_set* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.raid_set*, i32, i32) #1

declare dso_local i32 @mddev_init(%struct.TYPE_4__*) #1

declare dso_local i32 @md_rdev_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
