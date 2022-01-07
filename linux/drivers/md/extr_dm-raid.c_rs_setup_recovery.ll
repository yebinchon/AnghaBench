; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_setup_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_setup_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i32 }

@MaxSector = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raid_set*, i64)* @rs_setup_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_setup_recovery(%struct.raid_set* %0, i64 %1) #0 {
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca i64, align 8
  store %struct.raid_set* %0, %struct.raid_set** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %9 = call i32 @__rs_setup_recovery(%struct.raid_set* %8, i64 0)
  br label %34

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @MaxSector, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %16 = load i64, i64* @MaxSector, align 8
  %17 = call i32 @__rs_setup_recovery(%struct.raid_set* %15, i64 %16)
  br label %33

18:                                               ; preds = %10
  %19 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %20 = call i64 @__rdev_sectors(%struct.raid_set* %19)
  %21 = load i64, i64* %4, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %25 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %26 = call i64 @__rdev_sectors(%struct.raid_set* %25)
  %27 = call i32 @__rs_setup_recovery(%struct.raid_set* %24, i64 %26)
  br label %32

28:                                               ; preds = %18
  %29 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %30 = load i64, i64* @MaxSector, align 8
  %31 = call i32 @__rs_setup_recovery(%struct.raid_set* %29, i64 %30)
  br label %32

32:                                               ; preds = %28, %23
  br label %33

33:                                               ; preds = %32, %14
  br label %34

34:                                               ; preds = %33, %7
  ret void
}

declare dso_local i32 @__rs_setup_recovery(%struct.raid_set*, i64) #1

declare dso_local i64 @__rdev_sectors(%struct.raid_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
