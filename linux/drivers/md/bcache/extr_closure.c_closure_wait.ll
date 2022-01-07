; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_closure.c_closure_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_closure.c_closure_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.closure_waitlist = type { i32 }
%struct.closure = type { i32, i32 }

@CLOSURE_WAITING = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @closure_wait(%struct.closure_waitlist* %0, %struct.closure* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.closure_waitlist*, align 8
  %5 = alloca %struct.closure*, align 8
  store %struct.closure_waitlist* %0, %struct.closure_waitlist** %4, align 8
  store %struct.closure* %1, %struct.closure** %5, align 8
  %6 = load %struct.closure*, %struct.closure** %5, align 8
  %7 = getelementptr inbounds %struct.closure, %struct.closure* %6, i32 0, i32 1
  %8 = call i32 @atomic_read(i32* %7)
  %9 = load i32, i32* @CLOSURE_WAITING, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.closure*, %struct.closure** %5, align 8
  %15 = load i32, i32* @_RET_IP_, align 4
  %16 = call i32 @closure_set_waiting(%struct.closure* %14, i32 %15)
  %17 = load i32, i32* @CLOSURE_WAITING, align 4
  %18 = add nsw i32 %17, 1
  %19 = load %struct.closure*, %struct.closure** %5, align 8
  %20 = getelementptr inbounds %struct.closure, %struct.closure* %19, i32 0, i32 1
  %21 = call i32 @atomic_add(i32 %18, i32* %20)
  %22 = load %struct.closure*, %struct.closure** %5, align 8
  %23 = getelementptr inbounds %struct.closure, %struct.closure* %22, i32 0, i32 0
  %24 = load %struct.closure_waitlist*, %struct.closure_waitlist** %4, align 8
  %25 = getelementptr inbounds %struct.closure_waitlist, %struct.closure_waitlist* %24, i32 0, i32 0
  %26 = call i32 @llist_add(i32* %23, i32* %25)
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %13, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @closure_set_waiting(%struct.closure*, i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @llist_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
