; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_dm_jiffies_to_msec64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_dm_jiffies_to_msec64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_stat = type { i32 }

@STAT_PRECISE_TIMESTAMPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dm_stat*, i64)* @dm_jiffies_to_msec64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dm_jiffies_to_msec64(%struct.dm_stat* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.dm_stat*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dm_stat* %0, %struct.dm_stat** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.dm_stat*, %struct.dm_stat** %4, align 8
  %9 = getelementptr inbounds %struct.dm_stat, %struct.dm_stat* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @STAT_PRECISE_TIMESTAMPS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %3, align 8
  br label %58

16:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, 4194303
  %22 = call i8* @jiffies_to_msecs(i64 %21)
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %19, %16
  %25 = load i64, i64* %5, align 8
  %26 = icmp uge i64 %25, 4194304
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = call i8* @jiffies_to_msecs(i64 4194304)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* %5, align 8
  %33 = lshr i64 %32, 22
  %34 = and i64 %33, 4194303
  %35 = call i8* @jiffies_to_msecs(i64 %34)
  %36 = ptrtoint i8* %35 to i64
  %37 = mul i64 %31, %36
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %27, %24
  %41 = load i64, i64* %5, align 8
  %42 = icmp uge i64 %41, 17592186044416
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = mul i64 %45, %47
  %49 = load i64, i64* %5, align 8
  %50 = lshr i64 %49, 44
  %51 = call i8* @jiffies_to_msecs(i64 %50)
  %52 = ptrtoint i8* %51 to i64
  %53 = mul i64 %48, %52
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %43, %40
  %57 = load i64, i64* %6, align 8
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %56, %14
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local i8* @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
