; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_lookup_iova.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_lookup_iova.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_mem = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@RXE_BUF_PER_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_mem*, i64, i32*, i32*, i64*)* @lookup_iova to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lookup_iova(%struct.rxe_mem* %0, i64 %1, i32* %2, i32* %3, i64* %4) #0 {
  %6 = alloca %struct.rxe_mem*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.rxe_mem* %0, %struct.rxe_mem** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64* %4, i64** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %17 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %15, %18
  %20 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %21 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %19, %22
  store i64 %23, i64* %11, align 8
  %24 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %25 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @likely(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %5
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %32 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %30, %33
  %35 = load i64*, i64** %10, align 8
  store i64 %34, i64* %35, align 8
  %36 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %37 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %11, align 8
  %40 = lshr i64 %39, %38
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %43 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = and i64 %41, %44
  %46 = trunc i64 %45 to i32
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %50 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = lshr i64 %48, %51
  %53 = trunc i64 %52 to i32
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  br label %108

55:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %56 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %57 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %56, i32 0, i32 6
  %58 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %58, i64 %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %14, align 8
  br label %70

70:                                               ; preds = %86, %55
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %14, align 8
  %73 = icmp uge i64 %71, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %70
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %11, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %11, align 8
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @RXE_BUF_PER_MAP, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %83, %74
  %87 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %88 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %87, i32 0, i32 6
  %89 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %89, i64 %91
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %14, align 8
  br label %70

101:                                              ; preds = %70
  %102 = load i32, i32* %12, align 4
  %103 = load i32*, i32** %8, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i64, i64* %11, align 8
  %107 = load i64*, i64** %10, align 8
  store i64 %106, i64* %107, align 8
  br label %108

108:                                              ; preds = %101, %29
  ret void
}

declare dso_local i64 @likely(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
