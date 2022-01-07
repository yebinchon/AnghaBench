; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c_dm_rh_recovery_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c_dm_rh_recovery_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region = type { %struct.dm_region_hash*, i32 }
%struct.dm_region_hash = type { i32, i32 (i32)*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_rh_recovery_end(%struct.dm_region* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_region_hash*, align 8
  store %struct.dm_region* %0, %struct.dm_region** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dm_region*, %struct.dm_region** %3, align 8
  %7 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %6, i32 0, i32 0
  %8 = load %struct.dm_region_hash*, %struct.dm_region_hash** %7, align 8
  store %struct.dm_region_hash* %8, %struct.dm_region_hash** %5, align 8
  %9 = load %struct.dm_region_hash*, %struct.dm_region_hash** %5, align 8
  %10 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %9, i32 0, i32 2
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.dm_region*, %struct.dm_region** %3, align 8
  %16 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %15, i32 0, i32 1
  %17 = load %struct.dm_region*, %struct.dm_region** %3, align 8
  %18 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %17, i32 0, i32 0
  %19 = load %struct.dm_region_hash*, %struct.dm_region_hash** %18, align 8
  %20 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %19, i32 0, i32 4
  %21 = call i32 @list_add(i32* %16, i32* %20)
  br label %30

22:                                               ; preds = %2
  %23 = load %struct.dm_region*, %struct.dm_region** %3, align 8
  %24 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %23, i32 0, i32 1
  %25 = load %struct.dm_region*, %struct.dm_region** %3, align 8
  %26 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %25, i32 0, i32 0
  %27 = load %struct.dm_region_hash*, %struct.dm_region_hash** %26, align 8
  %28 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %27, i32 0, i32 3
  %29 = call i32 @list_add(i32* %24, i32* %28)
  br label %30

30:                                               ; preds = %22, %14
  %31 = load %struct.dm_region_hash*, %struct.dm_region_hash** %5, align 8
  %32 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %31, i32 0, i32 2
  %33 = call i32 @spin_unlock_irq(i32* %32)
  %34 = load %struct.dm_region_hash*, %struct.dm_region_hash** %5, align 8
  %35 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %34, i32 0, i32 1
  %36 = load i32 (i32)*, i32 (i32)** %35, align 8
  %37 = load %struct.dm_region_hash*, %struct.dm_region_hash** %5, align 8
  %38 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %36(i32 %39)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
