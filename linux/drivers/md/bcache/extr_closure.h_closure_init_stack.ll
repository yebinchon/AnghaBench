; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_closure.h_closure_init_stack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_closure.h_closure_init_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.closure = type { i32 }

@CLOSURE_REMAINING_INITIALIZER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.closure*)* @closure_init_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @closure_init_stack(%struct.closure* %0) #0 {
  %2 = alloca %struct.closure*, align 8
  store %struct.closure* %0, %struct.closure** %2, align 8
  %3 = load %struct.closure*, %struct.closure** %2, align 8
  %4 = call i32 @memset(%struct.closure* %3, i32 0, i32 4)
  %5 = load %struct.closure*, %struct.closure** %2, align 8
  %6 = getelementptr inbounds %struct.closure, %struct.closure* %5, i32 0, i32 0
  %7 = load i32, i32* @CLOSURE_REMAINING_INITIALIZER, align 4
  %8 = call i32 @atomic_set(i32* %6, i32 %7)
  ret void
}

declare dso_local i32 @memset(%struct.closure*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
