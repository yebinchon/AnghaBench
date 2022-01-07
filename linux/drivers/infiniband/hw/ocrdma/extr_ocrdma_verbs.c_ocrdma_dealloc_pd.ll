; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_dealloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_dealloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ocrdma_pd = type { i32, %struct.ocrdma_ucontext*, i64 }
%struct.ocrdma_ucontext = type { i32 }
%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocrdma_dealloc_pd(%struct.ib_pd* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.ocrdma_pd*, align 8
  %6 = alloca %struct.ocrdma_dev*, align 8
  %7 = alloca %struct.ocrdma_ucontext*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %10 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %11 = call %struct.ocrdma_pd* @get_ocrdma_pd(%struct.ib_pd* %10)
  store %struct.ocrdma_pd* %11, %struct.ocrdma_pd** %5, align 8
  %12 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %13 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %14)
  store %struct.ocrdma_dev* %15, %struct.ocrdma_dev** %6, align 8
  store %struct.ocrdma_ucontext* null, %struct.ocrdma_ucontext** %7, align 8
  %16 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %17 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %16, i32 0, i32 1
  %18 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %17, align 8
  store %struct.ocrdma_ucontext* %18, %struct.ocrdma_ucontext** %7, align 8
  %19 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %20 = icmp ne %struct.ocrdma_ucontext* %19, null
  br i1 %20, label %21, label %67

21:                                               ; preds = %2
  %22 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %23 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %27 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %25, %31
  store i64 %32, i64* %9, align 8
  %33 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %34 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %21
  %38 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %39 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %38, i32 0, i32 1
  %40 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = call i32 @ocrdma_del_mmap(%struct.ocrdma_ucontext* %40, i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %21
  %45 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %46 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %47 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ocrdma_get_db_addr(%struct.ocrdma_dev* %45, i32 %48)
  store i64 %49, i64* %8, align 8
  %50 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %51 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %50, i32 0, i32 1
  %52 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %55 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ocrdma_del_mmap(%struct.ocrdma_ucontext* %52, i64 %53, i32 %57)
  %59 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %60 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %61 = call i64 @is_ucontext_pd(%struct.ocrdma_ucontext* %59, %struct.ocrdma_pd* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %44
  %64 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %7, align 8
  %65 = call i32 @ocrdma_release_ucontext_pd(%struct.ocrdma_ucontext* %64)
  br label %71

66:                                               ; preds = %44
  br label %67

67:                                               ; preds = %66, %2
  %68 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %69 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %70 = call i32 @_ocrdma_dealloc_pd(%struct.ocrdma_dev* %68, %struct.ocrdma_pd* %69)
  br label %71

71:                                               ; preds = %67, %63
  ret void
}

declare dso_local %struct.ocrdma_pd* @get_ocrdma_pd(%struct.ib_pd*) #1

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local i32 @ocrdma_del_mmap(%struct.ocrdma_ucontext*, i64, i32) #1

declare dso_local i64 @ocrdma_get_db_addr(%struct.ocrdma_dev*, i32) #1

declare dso_local i64 @is_ucontext_pd(%struct.ocrdma_ucontext*, %struct.ocrdma_pd*) #1

declare dso_local i32 @ocrdma_release_ucontext_pd(%struct.ocrdma_ucontext*) #1

declare dso_local i32 @_ocrdma_dealloc_pd(%struct.ocrdma_dev*, %struct.ocrdma_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
