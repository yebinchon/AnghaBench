; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-path-selector.c_dm_put_path_selector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-path-selector.c_dm_put_path_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_selector_type = type { i32 }
%struct.ps_internal = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@_ps_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_put_path_selector(%struct.path_selector_type* %0) #0 {
  %2 = alloca %struct.path_selector_type*, align 8
  %3 = alloca %struct.ps_internal*, align 8
  store %struct.path_selector_type* %0, %struct.path_selector_type** %2, align 8
  %4 = load %struct.path_selector_type*, %struct.path_selector_type** %2, align 8
  %5 = icmp ne %struct.path_selector_type* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %24

7:                                                ; preds = %1
  %8 = call i32 @down_read(i32* @_ps_lock)
  %9 = load %struct.path_selector_type*, %struct.path_selector_type** %2, align 8
  %10 = getelementptr inbounds %struct.path_selector_type, %struct.path_selector_type* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ps_internal* @__find_path_selector_type(i32 %11)
  store %struct.ps_internal* %12, %struct.ps_internal** %3, align 8
  %13 = load %struct.ps_internal*, %struct.ps_internal** %3, align 8
  %14 = icmp ne %struct.ps_internal* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  br label %22

16:                                               ; preds = %7
  %17 = load %struct.ps_internal*, %struct.ps_internal** %3, align 8
  %18 = getelementptr inbounds %struct.ps_internal, %struct.ps_internal* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @module_put(i32 %20)
  br label %22

22:                                               ; preds = %16, %15
  %23 = call i32 @up_read(i32* @_ps_lock)
  br label %24

24:                                               ; preds = %22, %6
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.ps_internal* @__find_path_selector_type(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
