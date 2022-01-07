; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c___load_dirty_region_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c___load_dirty_region_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i32, i32 }

@RT_FLAG_RS_BITMAP_LOADED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to load bitmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*)* @__load_dirty_region_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__load_dirty_region_bitmap(%struct.raid_set* %0) #0 {
  %2 = alloca %struct.raid_set*, align 8
  %3 = alloca i32, align 4
  store %struct.raid_set* %0, %struct.raid_set** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %5 = call i32 @rs_is_raid0(%struct.raid_set* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @RT_FLAG_RS_BITMAP_LOADED, align 4
  %9 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %10 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %9, i32 0, i32 1
  %11 = call i32 @test_and_set_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  %14 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %15 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %14, i32 0, i32 0
  %16 = call i32 @md_bitmap_load(i32* %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @DMERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  br label %22

22:                                               ; preds = %21, %7, %1
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @rs_is_raid0(%struct.raid_set*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @md_bitmap_load(i32*) #1

declare dso_local i32 @DMERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
