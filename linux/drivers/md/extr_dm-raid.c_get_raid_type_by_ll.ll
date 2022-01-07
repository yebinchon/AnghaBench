; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_get_raid_type_by_ll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_get_raid_type_by_ll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_type = type { i32, i32 }

@raid_types = common dso_local global %struct.raid_type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.raid_type* (i32, i32)* @get_raid_type_by_ll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.raid_type* @get_raid_type_by_ll(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.raid_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.raid_type*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.raid_type*, %struct.raid_type** @raid_types, align 8
  %8 = load %struct.raid_type*, %struct.raid_type** @raid_types, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.raid_type* %8)
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.raid_type, %struct.raid_type* %7, i64 %10
  store %struct.raid_type* %11, %struct.raid_type** %6, align 8
  br label %12

12:                                               ; preds = %36, %2
  %13 = load %struct.raid_type*, %struct.raid_type** %6, align 8
  %14 = getelementptr inbounds %struct.raid_type, %struct.raid_type* %13, i32 -1
  store %struct.raid_type* %14, %struct.raid_type** %6, align 8
  %15 = load %struct.raid_type*, %struct.raid_type** @raid_types, align 8
  %16 = icmp ugt %struct.raid_type* %13, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = load %struct.raid_type*, %struct.raid_type** %6, align 8
  %19 = getelementptr inbounds %struct.raid_type, %struct.raid_type* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load %struct.raid_type*, %struct.raid_type** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @__got_raid10(%struct.raid_type* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.raid_type*, %struct.raid_type** %6, align 8
  %30 = getelementptr inbounds %struct.raid_type, %struct.raid_type* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28, %23
  %35 = load %struct.raid_type*, %struct.raid_type** %6, align 8
  store %struct.raid_type* %35, %struct.raid_type** %3, align 8
  br label %38

36:                                               ; preds = %28, %17
  br label %12

37:                                               ; preds = %12
  store %struct.raid_type* null, %struct.raid_type** %3, align 8
  br label %38

38:                                               ; preds = %37, %34
  %39 = load %struct.raid_type*, %struct.raid_type** %3, align 8
  ret %struct.raid_type* %39
}

declare dso_local i32 @ARRAY_SIZE(%struct.raid_type*) #1

declare dso_local i64 @__got_raid10(%struct.raid_type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
