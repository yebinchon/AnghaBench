; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_config_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_config_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.mddev }
%struct.mddev = type { i32, i32, i32 }
%struct.rs_layout = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raid_set*, %struct.rs_layout*)* @rs_config_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_config_restore(%struct.raid_set* %0, %struct.rs_layout* %1) #0 {
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca %struct.rs_layout*, align 8
  %5 = alloca %struct.mddev*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %3, align 8
  store %struct.rs_layout* %1, %struct.rs_layout** %4, align 8
  %6 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %7 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %6, i32 0, i32 0
  store %struct.mddev* %7, %struct.mddev** %5, align 8
  %8 = load %struct.rs_layout*, %struct.rs_layout** %4, align 8
  %9 = getelementptr inbounds %struct.rs_layout, %struct.rs_layout* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mddev*, %struct.mddev** %5, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.rs_layout*, %struct.rs_layout** %4, align 8
  %14 = getelementptr inbounds %struct.rs_layout, %struct.rs_layout* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mddev*, %struct.mddev** %5, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.rs_layout*, %struct.rs_layout** %4, align 8
  %19 = getelementptr inbounds %struct.rs_layout, %struct.rs_layout* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mddev*, %struct.mddev** %5, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
