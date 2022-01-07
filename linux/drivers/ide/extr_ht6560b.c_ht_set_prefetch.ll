; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ht6560b.c_ht_set_prefetch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ht6560b.c_ht_set_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@HT_PREFETCH_MODE = common dso_local global i32 0, align 4
@ht6560b_lock = common dso_local global i32 0, align 4
@IDE_DFLAG_NO_UNMASK = common dso_local global i32 0, align 4
@IDE_DFLAG_UNMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64)* @ht_set_prefetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ht_set_prefetch(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @HT_PREFETCH_MODE, align 4
  %9 = shl i32 %8, 8
  store i32 %9, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @ht6560b_lock, i64 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = call i64 @ide_get_drivedata(%struct.TYPE_5__* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %6, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %6, align 8
  %21 = load i32, i32* @IDE_DFLAG_NO_UNMASK, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @IDE_DFLAG_UNMASK, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %44

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = xor i32 %33, -1
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %6, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %6, align 8
  %38 = load i32, i32* @IDE_DFLAG_NO_UNMASK, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %32, %16
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = load i64, i64* %6, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @ide_set_drivedata(%struct.TYPE_5__* %45, i8* %47)
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* @ht6560b_lock, i64 %49)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ide_get_drivedata(%struct.TYPE_5__*) #1

declare dso_local i32 @ide_set_drivedata(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
