; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_pool.c_rxe_pool_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_pool.c_rxe_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.rxe_dev = type { i32 }
%struct.rxe_pool = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rxe_dev* }

@rxe_type_info = common dso_local global %struct.TYPE_2__* null, align 8
@RXE_POOL_ALIGN = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@RXE_POOL_INDEX = common dso_local global i32 0, align 4
@RXE_POOL_KEY = common dso_local global i32 0, align 4
@RXE_POOL_STATE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_pool_init(%struct.rxe_dev* %0, %struct.rxe_pool* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rxe_dev*, align 8
  %6 = alloca %struct.rxe_pool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.rxe_dev* %0, %struct.rxe_dev** %5, align 8
  store %struct.rxe_pool* %1, %struct.rxe_pool** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxe_type_info, align 8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %18 = call i32 @memset(%struct.rxe_pool* %17, i32 0, i32 56)
  %19 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %20 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %21 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %20, i32 0, i32 12
  store %struct.rxe_dev* %19, %struct.rxe_dev** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %24 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %27 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* @RXE_POOL_ALIGN, align 4
  %30 = call i32 @ALIGN(i64 %28, i32 %29)
  %31 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %32 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %31, i32 0, i32 11
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxe_type_info, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %40 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @RB_ROOT, align 4
  %42 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %43 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %42, i32 0, i32 10
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxe_type_info, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %51 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 4
  %52 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %53 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %52, i32 0, i32 8
  %54 = call i32 @atomic_set(i32* %53, i32 0)
  %55 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %56 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %55, i32 0, i32 7
  %57 = call i32 @kref_init(i32* %56)
  %58 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %59 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %58, i32 0, i32 6
  %60 = call i32 @rwlock_init(i32* %59)
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxe_type_info, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @RXE_POOL_INDEX, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %4
  %71 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxe_type_info, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxe_type_info, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @rxe_pool_init_index(%struct.rxe_pool* %71, i32 %77, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %70
  br label %120

88:                                               ; preds = %70
  br label %89

89:                                               ; preds = %88, %4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxe_type_info, align 8
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @RXE_POOL_KEY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %89
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxe_type_info, align 8
  %101 = load i32, i32* %7, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %107 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxe_type_info, align 8
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %115 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %99, %89
  %117 = load i32, i32* @RXE_POOL_STATE_VALID, align 4
  %118 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %119 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %116, %87
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local i32 @memset(%struct.rxe_pool*, i32, i32) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @rxe_pool_init_index(%struct.rxe_pool*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
