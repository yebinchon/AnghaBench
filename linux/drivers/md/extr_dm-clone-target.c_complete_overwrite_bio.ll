; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_complete_overwrite_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_complete_overwrite_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone = type { i32, i32 }
%struct.bio = type { i32 }

@REQ_FUA = common dso_local global i32 0, align 4
@CM_READ_ONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clone*, %struct.bio*)* @complete_overwrite_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_overwrite_bio(%struct.clone* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.clone*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64, align 8
  store %struct.clone* %0, %struct.clone** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.bio*, %struct.bio** %4, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @REQ_FUA, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = call i32 @bio_endio(%struct.bio* %13)
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.clone*, %struct.clone** %3, align 8
  %17 = call i64 @get_clone_mode(%struct.clone* %16)
  %18 = load i64, i64* @CM_READ_ONLY, align 8
  %19 = icmp sge i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.bio*, %struct.bio** %4, align 8
  %25 = call i32 @bio_io_error(%struct.bio* %24)
  br label %41

26:                                               ; preds = %15
  %27 = load %struct.clone*, %struct.clone** %3, align 8
  %28 = getelementptr inbounds %struct.clone, %struct.clone* %27, i32 0, i32 0
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.clone*, %struct.clone** %3, align 8
  %32 = getelementptr inbounds %struct.clone, %struct.clone* %31, i32 0, i32 1
  %33 = load %struct.bio*, %struct.bio** %4, align 8
  %34 = call i32 @bio_list_add(i32* %32, %struct.bio* %33)
  %35 = load %struct.clone*, %struct.clone** %3, align 8
  %36 = getelementptr inbounds %struct.clone, %struct.clone* %35, i32 0, i32 0
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.clone*, %struct.clone** %3, align 8
  %40 = call i32 @wake_worker(%struct.clone* %39)
  br label %41

41:                                               ; preds = %26, %23, %12
  ret void
}

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @get_clone_mode(%struct.clone*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

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
