; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_set_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_set_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i32, %struct.mddev }
%struct.mddev = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raid_set*)* @rs_set_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_set_new(%struct.raid_set* %0) #0 {
  %2 = alloca %struct.raid_set*, align 8
  %3 = alloca %struct.mddev*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %2, align 8
  %4 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %5 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %4, i32 0, i32 1
  store %struct.mddev* %5, %struct.mddev** %3, align 8
  %6 = load %struct.mddev*, %struct.mddev** %3, align 8
  %7 = getelementptr inbounds %struct.mddev, %struct.mddev* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mddev*, %struct.mddev** %3, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 8
  %11 = load %struct.mddev*, %struct.mddev** %3, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mddev*, %struct.mddev** %3, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load %struct.mddev*, %struct.mddev** %3, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mddev*, %struct.mddev** %3, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.raid_set*, %struct.raid_set** %2, align 8
  %22 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mddev*, %struct.mddev** %3, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mddev*, %struct.mddev** %3, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
