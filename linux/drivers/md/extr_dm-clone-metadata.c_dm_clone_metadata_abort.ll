; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_metadata_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_metadata_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_metadata = type { i32, i32, i32 }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_clone_metadata_abort(%struct.dm_clone_metadata* %0) #0 {
  %2 = alloca %struct.dm_clone_metadata*, align 8
  %3 = alloca i32, align 4
  store %struct.dm_clone_metadata* %0, %struct.dm_clone_metadata** %2, align 8
  %4 = load i32, i32* @EPERM, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %7 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %6, i32 0, i32 1
  %8 = call i32 @down_write(i32* %7)
  %9 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %10 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %15 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @dm_bm_is_read_only(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %1
  br label %31

20:                                               ; preds = %13
  %21 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %22 = call i32 @__destroy_persistent_data_structures(%struct.dm_clone_metadata* %21)
  %23 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %24 = call i32 @__create_persistent_data_structures(%struct.dm_clone_metadata* %23, i32 0)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %29 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %20
  br label %31

31:                                               ; preds = %30, %19
  %32 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %33 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %32, i32 0, i32 1
  %34 = call i32 @up_write(i32* %33)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @dm_bm_is_read_only(i32) #1

declare dso_local i32 @__destroy_persistent_data_structures(%struct.dm_clone_metadata*) #1

declare dso_local i32 @__create_persistent_data_structures(%struct.dm_clone_metadata*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
