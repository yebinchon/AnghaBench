; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_metadata_set_read_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_metadata_set_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_metadata = type { i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_clone_metadata_set_read_write(%struct.dm_clone_metadata* %0) #0 {
  %2 = alloca %struct.dm_clone_metadata*, align 8
  %3 = alloca i64, align 8
  store %struct.dm_clone_metadata* %0, %struct.dm_clone_metadata** %2, align 8
  %4 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %5 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %4, i32 0, i32 0
  %6 = call i32 @down_write(i32* %5)
  %7 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %8 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %7, i32 0, i32 3
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %12 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %14 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %13, i32 0, i32 3
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* %14, i64 %15)
  %17 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %18 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %23 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dm_bm_set_read_write(i32 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %28 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %27, i32 0, i32 0
  %29 = call i32 @up_write(i32* %28)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dm_bm_set_read_write(i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
