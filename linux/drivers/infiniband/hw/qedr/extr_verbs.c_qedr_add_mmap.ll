; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_add_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_add_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_ucontext = type { i32, i32, i32 }
%struct.qedr_mm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@QEDR_MSG_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"added (addr=0x%llx,len=0x%lx) for ctx=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_ucontext*, i64, i64)* @qedr_add_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_add_mmap(%struct.qedr_ucontext* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qedr_ucontext*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qedr_mm*, align 8
  store %struct.qedr_ucontext* %0, %struct.qedr_ucontext** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.qedr_mm* @kzalloc(i32 24, i32 %9)
  store %struct.qedr_mm* %10, %struct.qedr_mm** %8, align 8
  %11 = load %struct.qedr_mm*, %struct.qedr_mm** %8, align 8
  %12 = icmp ne %struct.qedr_mm* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %55

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.qedr_mm*, %struct.qedr_mm** %8, align 8
  %19 = getelementptr inbounds %struct.qedr_mm, %struct.qedr_mm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i64 %17, i64* %20, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = call i64 @roundup(i64 %21, i32 %22)
  %24 = load %struct.qedr_mm*, %struct.qedr_mm** %8, align 8
  %25 = getelementptr inbounds %struct.qedr_mm, %struct.qedr_mm* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.qedr_mm*, %struct.qedr_mm** %8, align 8
  %28 = getelementptr inbounds %struct.qedr_mm, %struct.qedr_mm* %27, i32 0, i32 1
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %5, align 8
  %31 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.qedr_mm*, %struct.qedr_mm** %8, align 8
  %34 = getelementptr inbounds %struct.qedr_mm, %struct.qedr_mm* %33, i32 0, i32 1
  %35 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %5, align 8
  %36 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %35, i32 0, i32 2
  %37 = call i32 @list_add(i32* %34, i32* %36)
  %38 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %5, align 8
  %39 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %5, align 8
  %42 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @QEDR_MSG_MISC, align 4
  %45 = load %struct.qedr_mm*, %struct.qedr_mm** %8, align 8
  %46 = getelementptr inbounds %struct.qedr_mm, %struct.qedr_mm* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.qedr_mm*, %struct.qedr_mm** %8, align 8
  %50 = getelementptr inbounds %struct.qedr_mm, %struct.qedr_mm* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %5, align 8
  %54 = call i32 @DP_DEBUG(i32 %43, i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %48, i64 %52, %struct.qedr_ucontext* %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %16, %13
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.qedr_mm* @kzalloc(i32, i32) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DP_DEBUG(i32, i32, i8*, i64, i64, %struct.qedr_ucontext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
