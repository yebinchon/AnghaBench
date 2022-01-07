; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c___rh_recovery_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c___rh_recovery_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region_hash = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32*)* }
%struct.dm_region = type { i32, i32, i32 }

@DM_RH_RECOVERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_region_hash*)* @__rh_recovery_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rh_recovery_prepare(%struct.dm_region_hash* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_region_hash*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_region*, align 8
  store %struct.dm_region_hash* %0, %struct.dm_region_hash** %3, align 8
  %7 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %8 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %12, align 8
  %14 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %15 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call i32 %13(%struct.TYPE_4__* %16, i32* %5)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %56

22:                                               ; preds = %1
  %23 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %24 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %23, i32 0, i32 2
  %25 = call i32 @read_lock(i32* %24)
  %26 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.dm_region* @__rh_find(%struct.dm_region_hash* %26, i32 %27)
  store %struct.dm_region* %28, %struct.dm_region** %6, align 8
  %29 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %30 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %29, i32 0, i32 2
  %31 = call i32 @read_unlock(i32* %30)
  %32 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %33 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load i32, i32* @DM_RH_RECOVERING, align 4
  %36 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %37 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %39 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %38, i32 0, i32 1
  %40 = call i64 @atomic_read(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %22
  %43 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %44 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %43, i32 0, i32 0
  %45 = call i32 @list_del_init(i32* %44)
  br label %52

46:                                               ; preds = %22
  %47 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %48 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %47, i32 0, i32 0
  %49 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %50 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %49, i32 0, i32 1
  %51 = call i32 @list_move(i32* %48, i32* %50)
  br label %52

52:                                               ; preds = %46, %42
  %53 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %54 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock_irq(i32* %54)
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %20
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.dm_region* @__rh_find(%struct.dm_region_hash*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
