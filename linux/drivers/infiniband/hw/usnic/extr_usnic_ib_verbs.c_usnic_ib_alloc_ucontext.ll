; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_alloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_alloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_udata = type { i32 }
%struct.usnic_ib_ucontext = type { i32, i32 }
%struct.usnic_ib_dev = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usnic_ib_alloc_ucontext(%struct.ib_ucontext* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_ucontext*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.usnic_ib_ucontext*, align 8
  %7 = alloca %struct.usnic_ib_dev*, align 8
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %8 = load %struct.ib_ucontext*, %struct.ib_ucontext** %3, align 8
  %9 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %8, i32 0, i32 0
  %10 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  store %struct.ib_device* %10, %struct.ib_device** %5, align 8
  %11 = load %struct.ib_ucontext*, %struct.ib_ucontext** %3, align 8
  %12 = call %struct.usnic_ib_ucontext* @to_ucontext(%struct.ib_ucontext* %11)
  store %struct.usnic_ib_ucontext* %12, %struct.usnic_ib_ucontext** %6, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %14 = call %struct.usnic_ib_dev* @to_usdev(%struct.ib_device* %13)
  store %struct.usnic_ib_dev* %14, %struct.usnic_ib_dev** %7, align 8
  %15 = call i32 @usnic_dbg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.usnic_ib_ucontext*, %struct.usnic_ib_ucontext** %6, align 8
  %17 = getelementptr inbounds %struct.usnic_ib_ucontext, %struct.usnic_ib_ucontext* %16, i32 0, i32 1
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %7, align 8
  %20 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.usnic_ib_ucontext*, %struct.usnic_ib_ucontext** %6, align 8
  %23 = getelementptr inbounds %struct.usnic_ib_ucontext, %struct.usnic_ib_ucontext* %22, i32 0, i32 0
  %24 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %7, align 8
  %25 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %24, i32 0, i32 1
  %26 = call i32 @list_add_tail(i32* %23, i32* %25)
  %27 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %7, align 8
  %28 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  ret i32 0
}

declare dso_local %struct.usnic_ib_ucontext* @to_ucontext(%struct.ib_ucontext*) #1

declare dso_local %struct.usnic_ib_dev* @to_usdev(%struct.ib_device*) #1

declare dso_local i32 @usnic_dbg(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
