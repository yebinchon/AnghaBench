; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_lookup_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_lookup_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_mem = type { i32, i32, i32, i64, %struct.rxe_pd* }
%struct.rxe_pd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rxe_dev = type { i32 }

@lookup_local = common dso_local global i32 0, align 4
@lookup_remote = common dso_local global i32 0, align 4
@RXE_MEM_STATE_VALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rxe_mem* @lookup_mem(%struct.rxe_pd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rxe_mem*, align 8
  %6 = alloca %struct.rxe_pd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rxe_mem*, align 8
  %11 = alloca %struct.rxe_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.rxe_pd* %0, %struct.rxe_pd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.rxe_pd*, %struct.rxe_pd** %6, align 8
  %14 = getelementptr inbounds %struct.rxe_pd, %struct.rxe_pd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.rxe_dev* @to_rdev(i32 %16)
  store %struct.rxe_dev* %17, %struct.rxe_dev** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = ashr i32 %18, 8
  store i32 %19, i32* %12, align 4
  %20 = load %struct.rxe_dev*, %struct.rxe_dev** %11, align 8
  %21 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %12, align 4
  %23 = call %struct.rxe_mem* @rxe_pool_get_index(i32* %21, i32 %22)
  store %struct.rxe_mem* %23, %struct.rxe_mem** %10, align 8
  %24 = load %struct.rxe_mem*, %struct.rxe_mem** %10, align 8
  %25 = icmp ne %struct.rxe_mem* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store %struct.rxe_mem* null, %struct.rxe_mem** %5, align 8
  br label %79

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @lookup_local, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.rxe_mem*, %struct.rxe_mem** %10, align 8
  %33 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %69, label %37

37:                                               ; preds = %31, %27
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @lookup_remote, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.rxe_mem*, %struct.rxe_mem** %10, align 8
  %43 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %69, label %47

47:                                               ; preds = %41, %37
  %48 = load %struct.rxe_mem*, %struct.rxe_mem** %10, align 8
  %49 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %48, i32 0, i32 4
  %50 = load %struct.rxe_pd*, %struct.rxe_pd** %49, align 8
  %51 = load %struct.rxe_pd*, %struct.rxe_pd** %6, align 8
  %52 = icmp ne %struct.rxe_pd* %50, %51
  br i1 %52, label %69, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.rxe_mem*, %struct.rxe_mem** %10, align 8
  %59 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56, %53
  %64 = load %struct.rxe_mem*, %struct.rxe_mem** %10, align 8
  %65 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RXE_MEM_STATE_VALID, align 8
  %68 = icmp ne i64 %66, %67
  br label %69

69:                                               ; preds = %63, %56, %47, %41, %31
  %70 = phi i1 [ true, %56 ], [ true, %47 ], [ true, %41 ], [ true, %31 ], [ %68, %63 ]
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.rxe_mem*, %struct.rxe_mem** %10, align 8
  %76 = call i32 @rxe_drop_ref(%struct.rxe_mem* %75)
  store %struct.rxe_mem* null, %struct.rxe_mem** %10, align 8
  br label %77

77:                                               ; preds = %74, %69
  %78 = load %struct.rxe_mem*, %struct.rxe_mem** %10, align 8
  store %struct.rxe_mem* %78, %struct.rxe_mem** %5, align 8
  br label %79

79:                                               ; preds = %77, %26
  %80 = load %struct.rxe_mem*, %struct.rxe_mem** %5, align 8
  ret %struct.rxe_mem* %80
}

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local %struct.rxe_mem* @rxe_pool_get_index(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
