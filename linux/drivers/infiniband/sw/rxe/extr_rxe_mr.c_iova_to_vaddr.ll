; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_iova_to_vaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_iova_to_vaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_mem = type { i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@RXE_MEM_STATE_VALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"mem not in valid state\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"range violation\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"crosses page boundary\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iova_to_vaddr(%struct.rxe_mem* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.rxe_mem*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.rxe_mem* %0, %struct.rxe_mem** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.rxe_mem*, %struct.rxe_mem** %4, align 8
  %12 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RXE_MEM_STATE_VALID, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %10, align 8
  br label %77

18:                                               ; preds = %3
  %19 = load %struct.rxe_mem*, %struct.rxe_mem** %4, align 8
  %20 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %20, align 8
  %22 = icmp ne %struct.TYPE_4__** %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* %5, align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %10, align 8
  br label %77

26:                                               ; preds = %18
  %27 = load %struct.rxe_mem*, %struct.rxe_mem** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @mem_check_range(%struct.rxe_mem* %27, i64 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %10, align 8
  br label %77

34:                                               ; preds = %26
  %35 = load %struct.rxe_mem*, %struct.rxe_mem** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @lookup_iova(%struct.rxe_mem* %35, i64 %36, i32* %8, i32* %9, i64* %7)
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %38, %40
  %42 = load %struct.rxe_mem*, %struct.rxe_mem** %4, align 8
  %43 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ugt i64 %41, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %34
  %58 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %10, align 8
  br label %77

59:                                               ; preds = %34
  %60 = load %struct.rxe_mem*, %struct.rxe_mem** %4, align 8
  %61 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %62, i64 %64
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr i8, i8* %74, i64 %75
  store i8* %76, i8** %10, align 8
  br label %77

77:                                               ; preds = %59, %57, %32, %23, %16
  %78 = load i8*, i8** %10, align 8
  ret i8* %78
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @mem_check_range(%struct.rxe_mem*, i64, i32) #1

declare dso_local i32 @lookup_iova(%struct.rxe_mem*, i64, i32*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
