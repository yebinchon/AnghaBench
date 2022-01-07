; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ib_uverbs_file* }
%struct.ib_uverbs_file = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.ib_ucontext = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ib_ucontext*, %struct.vm_area_struct*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @ib_uverbs_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.ib_uverbs_file*, align 8
  %6 = alloca %struct.ib_ucontext*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %10, align 8
  store %struct.ib_uverbs_file* %11, %struct.ib_uverbs_file** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %13 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @srcu_read_lock(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %18 = call %struct.ib_ucontext* @ib_uverbs_get_ucontext_file(%struct.ib_uverbs_file* %17)
  store %struct.ib_ucontext* %18, %struct.ib_ucontext** %6, align 8
  %19 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %20 = call i64 @IS_ERR(%struct.ib_ucontext* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %24 = call i32 @PTR_ERR(%struct.ib_ucontext* %23)
  store i32 %24, i32* %7, align 4
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %27 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.ib_ucontext*, %struct.vm_area_struct*)*, i32 (%struct.ib_ucontext*, %struct.vm_area_struct*)** %30, align 8
  %32 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %34 = call i32 %31(%struct.ib_ucontext* %32, %struct.vm_area_struct* %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %25, %22
  %36 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %37 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @srcu_read_unlock(i32* %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local %struct.ib_ucontext* @ib_uverbs_get_ucontext_file(%struct.ib_uverbs_file*) #1

declare dso_local i64 @IS_ERR(%struct.ib_ucontext*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_ucontext*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
