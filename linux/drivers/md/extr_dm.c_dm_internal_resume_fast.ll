; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_internal_resume_fast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_internal_resume_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_internal_resume_fast(%struct.mapped_device* %0) #0 {
  %2 = alloca %struct.mapped_device*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %2, align 8
  %3 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %4 = call i64 @dm_suspended_md(%struct.mapped_device* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %8 = call i64 @dm_suspended_internally_md(%struct.mapped_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  br label %14

11:                                               ; preds = %6
  %12 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %13 = call i32 @dm_queue_flush(%struct.mapped_device* %12)
  br label %14

14:                                               ; preds = %11, %10
  %15 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %16 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %15, i32 0, i32 0
  %17 = call i32 @mutex_unlock(i32* %16)
  ret void
}

declare dso_local i64 @dm_suspended_md(%struct.mapped_device*) #1

declare dso_local i64 @dm_suspended_internally_md(%struct.mapped_device*) #1

declare dso_local i32 @dm_queue_flush(%struct.mapped_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
