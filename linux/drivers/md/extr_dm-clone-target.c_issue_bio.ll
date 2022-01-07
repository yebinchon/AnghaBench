; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_issue_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_issue_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone = type { i32, i32 }
%struct.bio = type { i32 }

@CM_READ_ONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clone*, %struct.bio*)* @issue_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @issue_bio(%struct.clone* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.clone*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64, align 8
  store %struct.clone* %0, %struct.clone** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.clone*, %struct.clone** %3, align 8
  %7 = load %struct.bio*, %struct.bio** %4, align 8
  %8 = call i32 @bio_triggers_commit(%struct.clone* %6, %struct.bio* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = call i32 @generic_make_request(%struct.bio* %11)
  br label %39

13:                                               ; preds = %2
  %14 = load %struct.clone*, %struct.clone** %3, align 8
  %15 = call i64 @get_clone_mode(%struct.clone* %14)
  %16 = load i64, i64* @CM_READ_ONLY, align 8
  %17 = icmp sge i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.bio*, %struct.bio** %4, align 8
  %23 = call i32 @bio_io_error(%struct.bio* %22)
  br label %39

24:                                               ; preds = %13
  %25 = load %struct.clone*, %struct.clone** %3, align 8
  %26 = getelementptr inbounds %struct.clone, %struct.clone* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.clone*, %struct.clone** %3, align 8
  %30 = getelementptr inbounds %struct.clone, %struct.clone* %29, i32 0, i32 1
  %31 = load %struct.bio*, %struct.bio** %4, align 8
  %32 = call i32 @bio_list_add(i32* %30, %struct.bio* %31)
  %33 = load %struct.clone*, %struct.clone** %3, align 8
  %34 = getelementptr inbounds %struct.clone, %struct.clone* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.clone*, %struct.clone** %3, align 8
  %38 = call i32 @wake_worker(%struct.clone* %37)
  br label %39

39:                                               ; preds = %24, %21, %10
  ret void
}

declare dso_local i32 @bio_triggers_commit(%struct.clone*, %struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

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
