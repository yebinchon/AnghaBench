; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_sb_set_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_sb_set_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i8, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@SB_FLAG_DIRTY_BITMAP = common dso_local global i32 0, align 4
@SB_VERSION_3 = common dso_local global i32 0, align 4
@SB_FLAG_RECALCULATING = common dso_local global i32 0, align 4
@SB_VERSION_2 = common dso_local global i32 0, align 4
@SB_VERSION_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*)* @sb_set_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_set_version(%struct.dm_integrity_c* %0) #0 {
  %2 = alloca %struct.dm_integrity_c*, align 8
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %2, align 8
  %3 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %4 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %3, i32 0, i32 0
  %5 = load i8, i8* %4, align 8
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 66
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %10 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SB_FLAG_DIRTY_BITMAP, align 4
  %15 = call i32 @cpu_to_le32(i32 %14)
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %8, %1
  %19 = load i32, i32* @SB_VERSION_3, align 4
  %20 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %21 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 4
  br label %52

24:                                               ; preds = %8
  %25 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %26 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %31 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SB_FLAG_RECALCULATING, align 4
  %36 = call i32 @cpu_to_le32(i32 %35)
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %29, %24
  %40 = load i32, i32* @SB_VERSION_2, align 4
  %41 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %42 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  br label %51

45:                                               ; preds = %29
  %46 = load i32, i32* @SB_VERSION_1, align 4
  %47 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %48 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %18
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
