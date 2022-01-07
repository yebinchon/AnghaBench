; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_dealloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_dealloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.efa_ucontext = type { i32 }
%struct.efa_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efa_dealloc_ucontext(%struct.ib_ucontext* %0) #0 {
  %2 = alloca %struct.ib_ucontext*, align 8
  %3 = alloca %struct.efa_ucontext*, align 8
  %4 = alloca %struct.efa_dev*, align 8
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %2, align 8
  %5 = load %struct.ib_ucontext*, %struct.ib_ucontext** %2, align 8
  %6 = call %struct.efa_ucontext* @to_eucontext(%struct.ib_ucontext* %5)
  store %struct.efa_ucontext* %6, %struct.efa_ucontext** %3, align 8
  %7 = load %struct.ib_ucontext*, %struct.ib_ucontext** %2, align 8
  %8 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.efa_dev* @to_edev(i32 %9)
  store %struct.efa_dev* %10, %struct.efa_dev** %4, align 8
  %11 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %12 = load %struct.efa_ucontext*, %struct.efa_ucontext** %3, align 8
  %13 = call i32 @mmap_entries_remove_free(%struct.efa_dev* %11, %struct.efa_ucontext* %12)
  %14 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %15 = load %struct.efa_ucontext*, %struct.efa_ucontext** %3, align 8
  %16 = getelementptr inbounds %struct.efa_ucontext, %struct.efa_ucontext* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @efa_dealloc_uar(%struct.efa_dev* %14, i32 %17)
  ret void
}

declare dso_local %struct.efa_ucontext* @to_eucontext(%struct.ib_ucontext*) #1

declare dso_local %struct.efa_dev* @to_edev(i32) #1

declare dso_local i32 @mmap_entries_remove_free(%struct.efa_dev*, %struct.efa_ucontext*) #1

declare dso_local i32 @efa_dealloc_uar(%struct.efa_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
