; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_process_discard_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_process_discard_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone = type { i64, i32, i32, i32 }
%struct.bio = type { i32 }

@CM_READ_ONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clone*, %struct.bio*)* @process_discard_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_discard_bio(%struct.clone* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.clone*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.clone* %0, %struct.clone** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %8 = load %struct.clone*, %struct.clone** %3, align 8
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = call i32 @bio_region_range(%struct.clone* %8, %struct.bio* %9, i64* %5, i64* %6)
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.clone*, %struct.clone** %3, align 8
  %13 = getelementptr inbounds %struct.clone, %struct.clone* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ugt i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.bio*, %struct.bio** %4, align 8
  %26 = call i32 @bio_endio(%struct.bio* %25)
  br label %67

27:                                               ; preds = %2
  %28 = load %struct.clone*, %struct.clone** %3, align 8
  %29 = getelementptr inbounds %struct.clone, %struct.clone* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = sub i64 %32, %33
  %35 = call i64 @dm_clone_is_range_hydrated(i32 %30, i64 %31, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.clone*, %struct.clone** %3, align 8
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = call i32 @complete_discard_bio(%struct.clone* %38, %struct.bio* %39, i32 1)
  br label %67

41:                                               ; preds = %27
  %42 = load %struct.clone*, %struct.clone** %3, align 8
  %43 = call i64 @get_clone_mode(%struct.clone* %42)
  %44 = load i64, i64* @CM_READ_ONLY, align 8
  %45 = icmp sge i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.bio*, %struct.bio** %4, align 8
  %51 = call i32 @bio_endio(%struct.bio* %50)
  br label %67

52:                                               ; preds = %41
  %53 = load %struct.clone*, %struct.clone** %3, align 8
  %54 = getelementptr inbounds %struct.clone, %struct.clone* %53, i32 0, i32 1
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.clone*, %struct.clone** %3, align 8
  %58 = getelementptr inbounds %struct.clone, %struct.clone* %57, i32 0, i32 2
  %59 = load %struct.bio*, %struct.bio** %4, align 8
  %60 = call i32 @bio_list_add(i32* %58, %struct.bio* %59)
  %61 = load %struct.clone*, %struct.clone** %3, align 8
  %62 = getelementptr inbounds %struct.clone, %struct.clone* %61, i32 0, i32 1
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.clone*, %struct.clone** %3, align 8
  %66 = call i32 @wake_worker(%struct.clone* %65)
  br label %67

67:                                               ; preds = %52, %49, %37, %24
  ret void
}

declare dso_local i32 @bio_region_range(%struct.clone*, %struct.bio*, i64*, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i64 @dm_clone_is_range_hydrated(i32, i64, i64) #1

declare dso_local i32 @complete_discard_bio(%struct.clone*, %struct.bio*, i32) #1

declare dso_local i64 @get_clone_mode(%struct.clone*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_worker(%struct.clone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
