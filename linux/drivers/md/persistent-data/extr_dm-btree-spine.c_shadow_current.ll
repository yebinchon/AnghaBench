; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-spine.c_shadow_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-spine.c_shadow_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block = type { i32 }
%struct.shadow_spine = type { i32, %struct.dm_block** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_block* @shadow_current(%struct.shadow_spine* %0) #0 {
  %2 = alloca %struct.shadow_spine*, align 8
  store %struct.shadow_spine* %0, %struct.shadow_spine** %2, align 8
  %3 = load %struct.shadow_spine*, %struct.shadow_spine** %2, align 8
  %4 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.shadow_spine*, %struct.shadow_spine** %2, align 8
  %11 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %10, i32 0, i32 1
  %12 = load %struct.dm_block**, %struct.dm_block*** %11, align 8
  %13 = load %struct.shadow_spine*, %struct.shadow_spine** %2, align 8
  %14 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.dm_block*, %struct.dm_block** %12, i64 %17
  %19 = load %struct.dm_block*, %struct.dm_block** %18, align 8
  ret %struct.dm_block* %19
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
