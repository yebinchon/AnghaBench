; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_rxe_mem_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_rxe_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_mem = type { i32, i32, i32, i8*, i8*, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@IB_ACCESS_REMOTE = common dso_local global i32 0, align 4
@RXE_TYPE_MR = common dso_local global i64 0, align 8
@RXE_MEM_STATE_INVALID = common dso_local global i32 0, align 4
@RXE_MEM_TYPE_NONE = common dso_local global i32 0, align 4
@RXE_BUF_PER_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.rxe_mem*)* @rxe_mem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxe_mem_init(i32 %0, %struct.rxe_mem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxe_mem*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.rxe_mem* %1, %struct.rxe_mem** %4, align 8
  %7 = load %struct.rxe_mem*, %struct.rxe_mem** %4, align 8
  %8 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 %10, 8
  %12 = call i32 (...) @rxe_get_key()
  %13 = or i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @IB_ACCESS_REMOTE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i8* [ %21, %20 ], [ null, %22 ]
  store i8* %24, i8** %6, align 8
  %25 = load %struct.rxe_mem*, %struct.rxe_mem** %4, align 8
  %26 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RXE_TYPE_MR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %23
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.rxe_mem*, %struct.rxe_mem** %4, align 8
  %36 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.rxe_mem*, %struct.rxe_mem** %4, align 8
  %40 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  br label %42

42:                                               ; preds = %33, %23
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.rxe_mem*, %struct.rxe_mem** %4, align 8
  %45 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.rxe_mem*, %struct.rxe_mem** %4, align 8
  %48 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @RXE_MEM_STATE_INVALID, align 4
  %50 = load %struct.rxe_mem*, %struct.rxe_mem** %4, align 8
  %51 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @RXE_MEM_TYPE_NONE, align 4
  %53 = load %struct.rxe_mem*, %struct.rxe_mem** %4, align 8
  %54 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @RXE_BUF_PER_MAP, align 4
  %56 = call i32 @ilog2(i32 %55)
  %57 = load %struct.rxe_mem*, %struct.rxe_mem** %4, align 8
  %58 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  ret void
}

declare dso_local i32 @rxe_get_key(...) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
