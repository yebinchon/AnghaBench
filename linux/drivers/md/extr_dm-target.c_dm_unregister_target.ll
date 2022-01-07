; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-target.c_dm_unregister_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-target.c_dm_unregister_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_type = type { i32, i32 }

@_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unregistering unrecognised target: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_unregister_target(%struct.target_type* %0) #0 {
  %2 = alloca %struct.target_type*, align 8
  store %struct.target_type* %0, %struct.target_type** %2, align 8
  %3 = call i32 @down_write(i32* @_lock)
  %4 = load %struct.target_type*, %struct.target_type** %2, align 8
  %5 = getelementptr inbounds %struct.target_type, %struct.target_type* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @__find_target_type(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.target_type*, %struct.target_type** %2, align 8
  %11 = getelementptr inbounds %struct.target_type, %struct.target_type* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @DMCRIT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 (...) @BUG()
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.target_type*, %struct.target_type** %2, align 8
  %17 = getelementptr inbounds %struct.target_type, %struct.target_type* %16, i32 0, i32 0
  %18 = call i32 @list_del(i32* %17)
  %19 = call i32 @up_write(i32* @_lock)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @__find_target_type(i32) #1

declare dso_local i32 @DMCRIT(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
