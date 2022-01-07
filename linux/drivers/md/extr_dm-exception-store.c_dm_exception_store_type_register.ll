; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-exception-store.c_dm_exception_store_type_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-exception-store.c_dm_exception_store_type_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_exception_store_type = type { i32, i32 }

@_lock = common dso_local global i32 0, align 4
@_exception_store_types = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_exception_store_type_register(%struct.dm_exception_store_type* %0) #0 {
  %2 = alloca %struct.dm_exception_store_type*, align 8
  %3 = alloca i32, align 4
  store %struct.dm_exception_store_type* %0, %struct.dm_exception_store_type** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @spin_lock(i32* @_lock)
  %5 = load %struct.dm_exception_store_type*, %struct.dm_exception_store_type** %2, align 8
  %6 = getelementptr inbounds %struct.dm_exception_store_type, %struct.dm_exception_store_type* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @__find_exception_store_type(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.dm_exception_store_type*, %struct.dm_exception_store_type** %2, align 8
  %12 = getelementptr inbounds %struct.dm_exception_store_type, %struct.dm_exception_store_type* %11, i32 0, i32 0
  %13 = call i32 @list_add(i32* %12, i32* @_exception_store_types)
  br label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EEXIST, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = call i32 @spin_unlock(i32* @_lock)
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__find_exception_store_type(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
