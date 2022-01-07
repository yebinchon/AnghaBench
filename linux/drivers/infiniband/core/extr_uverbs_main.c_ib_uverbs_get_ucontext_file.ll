; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_get_ucontext_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_get_ucontext_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.ib_uverbs_file = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_ucontext* @ib_uverbs_get_ucontext_file(%struct.ib_uverbs_file* %0) #0 {
  %2 = alloca %struct.ib_ucontext*, align 8
  %3 = alloca %struct.ib_uverbs_file*, align 8
  %4 = alloca %struct.ib_ucontext*, align 8
  store %struct.ib_uverbs_file* %0, %struct.ib_uverbs_file** %3, align 8
  %5 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %6 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %5, i32 0, i32 1
  %7 = call %struct.ib_ucontext* @smp_load_acquire(i32* %6)
  store %struct.ib_ucontext* %7, %struct.ib_ucontext** %4, align 8
  %8 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %9 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %3, align 8
  %14 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @srcu_dereference(i32 %12, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.ib_ucontext* @ERR_PTR(i32 %21)
  store %struct.ib_ucontext* %22, %struct.ib_ucontext** %2, align 8
  br label %32

23:                                               ; preds = %1
  %24 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %25 = icmp ne %struct.ib_ucontext* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.ib_ucontext* @ERR_PTR(i32 %28)
  store %struct.ib_ucontext* %29, %struct.ib_ucontext** %2, align 8
  br label %32

30:                                               ; preds = %23
  %31 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  store %struct.ib_ucontext* %31, %struct.ib_ucontext** %2, align 8
  br label %32

32:                                               ; preds = %30, %26, %19
  %33 = load %struct.ib_ucontext*, %struct.ib_ucontext** %2, align 8
  ret %struct.ib_ucontext* %33
}

declare dso_local %struct.ib_ucontext* @smp_load_acquire(i32*) #1

declare dso_local i32 @srcu_dereference(i32, i32*) #1

declare dso_local %struct.ib_ucontext* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
