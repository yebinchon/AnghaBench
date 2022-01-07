; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_mmap_entry_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_mmap_entry_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_mmap_entry = type { i64, i32, i32 }
%struct.efa_dev = type { i32 }
%struct.efa_ucontext = type { i32 }

@EFA_MMAP_PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@U32_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"mmap: obj[0x%p] key[%#llx] addr[%#llx] len[%#llx] removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.efa_mmap_entry* (%struct.efa_dev*, %struct.efa_ucontext*, i64, i64)* @mmap_entry_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.efa_mmap_entry* @mmap_entry_get(%struct.efa_dev* %0, %struct.efa_ucontext* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.efa_mmap_entry*, align 8
  %6 = alloca %struct.efa_dev*, align 8
  %7 = alloca %struct.efa_ucontext*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.efa_mmap_entry*, align 8
  %11 = alloca i64, align 8
  store %struct.efa_dev* %0, %struct.efa_dev** %6, align 8
  store %struct.efa_ucontext* %1, %struct.efa_ucontext** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @EFA_MMAP_PAGE_MASK, align 8
  %14 = and i64 %12, %13
  %15 = load i64, i64* @PAGE_SHIFT, align 8
  %16 = ashr i64 %14, %15
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @U32_MAX, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store %struct.efa_mmap_entry* null, %struct.efa_mmap_entry** %5, align 8
  br label %55

21:                                               ; preds = %4
  %22 = load %struct.efa_ucontext*, %struct.efa_ucontext** %7, align 8
  %23 = getelementptr inbounds %struct.efa_ucontext, %struct.efa_ucontext* %22, i32 0, i32 0
  %24 = load i64, i64* %11, align 8
  %25 = call %struct.efa_mmap_entry* @xa_load(i32* %23, i64 %24)
  store %struct.efa_mmap_entry* %25, %struct.efa_mmap_entry** %10, align 8
  %26 = load %struct.efa_mmap_entry*, %struct.efa_mmap_entry** %10, align 8
  %27 = icmp ne %struct.efa_mmap_entry* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.efa_mmap_entry*, %struct.efa_mmap_entry** %10, align 8
  %30 = call i64 @get_mmap_key(%struct.efa_mmap_entry* %29)
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load %struct.efa_mmap_entry*, %struct.efa_mmap_entry** %10, align 8
  %35 = getelementptr inbounds %struct.efa_mmap_entry, %struct.efa_mmap_entry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %28, %21
  store %struct.efa_mmap_entry* null, %struct.efa_mmap_entry** %5, align 8
  br label %55

40:                                               ; preds = %33
  %41 = load %struct.efa_dev*, %struct.efa_dev** %6, align 8
  %42 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %41, i32 0, i32 0
  %43 = load %struct.efa_mmap_entry*, %struct.efa_mmap_entry** %10, align 8
  %44 = getelementptr inbounds %struct.efa_mmap_entry, %struct.efa_mmap_entry* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.efa_mmap_entry*, %struct.efa_mmap_entry** %10, align 8
  %48 = getelementptr inbounds %struct.efa_mmap_entry, %struct.efa_mmap_entry* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.efa_mmap_entry*, %struct.efa_mmap_entry** %10, align 8
  %51 = getelementptr inbounds %struct.efa_mmap_entry, %struct.efa_mmap_entry* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @ibdev_dbg(i32* %42, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %45, i64 %46, i32 %49, i64 %52)
  %54 = load %struct.efa_mmap_entry*, %struct.efa_mmap_entry** %10, align 8
  store %struct.efa_mmap_entry* %54, %struct.efa_mmap_entry** %5, align 8
  br label %55

55:                                               ; preds = %40, %39, %20
  %56 = load %struct.efa_mmap_entry*, %struct.efa_mmap_entry** %5, align 8
  ret %struct.efa_mmap_entry* %56
}

declare dso_local %struct.efa_mmap_entry* @xa_load(i32*, i64) #1

declare dso_local i64 @get_mmap_key(%struct.efa_mmap_entry*) #1

declare dso_local i32 @ibdev_dbg(i32*, i8*, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
