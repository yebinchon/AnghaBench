; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_hydration_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_hydration_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_region_hydration = type { i64, i32, i64, %struct.clone* }
%struct.clone = type { i32 }

@BLK_STS_OK = common dso_local global i64 0, align 8
@BLK_STS_IOERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_clone_region_hydration*)* @hydration_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hydration_complete(%struct.dm_clone_region_hydration* %0) #0 {
  %2 = alloca %struct.dm_clone_region_hydration*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.clone*, align 8
  store %struct.dm_clone_region_hydration* %0, %struct.dm_clone_region_hydration** %2, align 8
  %6 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %2, align 8
  %7 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %6, i32 0, i32 3
  %8 = load %struct.clone*, %struct.clone** %7, align 8
  store %struct.clone* %8, %struct.clone** %5, align 8
  %9 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %2, align 8
  %10 = call i32 @hydration_update_metadata(%struct.dm_clone_region_hydration* %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %2, align 8
  %12 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BLK_STS_OK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %16
  %24 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %2, align 8
  %25 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.clone*, %struct.clone** %5, align 8
  %30 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %2, align 8
  %31 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @complete_overwrite_bio(%struct.clone* %29, i64 %32)
  br label %34

34:                                               ; preds = %28, %23
  %35 = load %struct.clone*, %struct.clone** %5, align 8
  %36 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %2, align 8
  %37 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %36, i32 0, i32 1
  %38 = call i32 @issue_deferred_bios(%struct.clone* %35, i32* %37)
  br label %66

39:                                               ; preds = %16, %1
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i64, i64* @BLK_STS_IOERR, align 8
  br label %48

44:                                               ; preds = %39
  %45 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %2, align 8
  %46 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi i64 [ %43, %42 ], [ %47, %44 ]
  store i64 %49, i64* %4, align 8
  %50 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %2, align 8
  %51 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %2, align 8
  %56 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %55, i32 0, i32 1
  %57 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %2, align 8
  %58 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @bio_list_add(i32* %56, i64 %59)
  br label %61

61:                                               ; preds = %54, %48
  %62 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %2, align 8
  %63 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %62, i32 0, i32 1
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @fail_bios(i32* %63, i64 %64)
  br label %66

66:                                               ; preds = %61, %34
  %67 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %2, align 8
  %68 = call i32 @free_hydration(%struct.dm_clone_region_hydration* %67)
  %69 = load %struct.clone*, %struct.clone** %5, align 8
  %70 = getelementptr inbounds %struct.clone, %struct.clone* %69, i32 0, i32 0
  %71 = call i64 @atomic_dec_and_test(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.clone*, %struct.clone** %5, align 8
  %75 = call i32 @wakeup_hydration_waiters(%struct.clone* %74)
  br label %76

76:                                               ; preds = %73, %66
  ret void
}

declare dso_local i32 @hydration_update_metadata(%struct.dm_clone_region_hydration*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @complete_overwrite_bio(%struct.clone*, i64) #1

declare dso_local i32 @issue_deferred_bios(%struct.clone*, i32*) #1

declare dso_local i32 @bio_list_add(i32*, i64) #1

declare dso_local i32 @fail_bios(i32*, i64) #1

declare dso_local i32 @free_hydration(%struct.dm_clone_region_hydration*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wakeup_hydration_waiters(%struct.clone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
