; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_dealloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_dealloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.usnic_ib_ucontext = type { i32, i32 }
%struct.usnic_ib_dev = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usnic_ib_dealloc_ucontext(%struct.ib_ucontext* %0) #0 {
  %2 = alloca %struct.ib_ucontext*, align 8
  %3 = alloca %struct.usnic_ib_ucontext*, align 8
  %4 = alloca %struct.usnic_ib_dev*, align 8
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %2, align 8
  %5 = load %struct.ib_ucontext*, %struct.ib_ucontext** %2, align 8
  %6 = call %struct.usnic_ib_ucontext* @to_uucontext(%struct.ib_ucontext* %5)
  store %struct.usnic_ib_ucontext* %6, %struct.usnic_ib_ucontext** %3, align 8
  %7 = load %struct.ib_ucontext*, %struct.ib_ucontext** %2, align 8
  %8 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.usnic_ib_dev* @to_usdev(i32 %9)
  store %struct.usnic_ib_dev* %10, %struct.usnic_ib_dev** %4, align 8
  %11 = call i32 @usnic_dbg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %4, align 8
  %13 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.usnic_ib_ucontext*, %struct.usnic_ib_ucontext** %3, align 8
  %16 = getelementptr inbounds %struct.usnic_ib_ucontext, %struct.usnic_ib_ucontext* %15, i32 0, i32 1
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON_ONCE(i32 %20)
  %22 = load %struct.usnic_ib_ucontext*, %struct.usnic_ib_ucontext** %3, align 8
  %23 = getelementptr inbounds %struct.usnic_ib_ucontext, %struct.usnic_ib_ucontext* %22, i32 0, i32 0
  %24 = call i32 @list_del(i32* %23)
  %25 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %4, align 8
  %26 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  ret void
}

declare dso_local %struct.usnic_ib_ucontext* @to_uucontext(%struct.ib_ucontext*) #1

declare dso_local %struct.usnic_ib_dev* @to_usdev(i32) #1

declare dso_local i32 @usnic_dbg(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
