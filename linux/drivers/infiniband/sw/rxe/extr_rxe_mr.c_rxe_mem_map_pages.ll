; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_rxe_mem_map_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_rxe_mem_map_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dev = type { i32 }
%struct.rxe_mem = type { i32, i32, i32, i32, i8*, i8*, %struct.rxe_map** }
%struct.rxe_map = type { %struct.rxe_phys_buf* }
%struct.rxe_phys_buf = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RXE_BUF_PER_MAP = common dso_local global i32 0, align 4
@RXE_MEM_STATE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_mem_map_pages(%struct.rxe_dev* %0, %struct.rxe_mem* %1, i8** %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rxe_dev*, align 8
  %8 = alloca %struct.rxe_mem*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rxe_map**, align 8
  %16 = alloca %struct.rxe_phys_buf*, align 8
  %17 = alloca i32, align 4
  store %struct.rxe_dev* %0, %struct.rxe_dev** %7, align 8
  store %struct.rxe_mem* %1, %struct.rxe_mem** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %20 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %14, align 4
  br label %89

26:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  %27 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %28 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  store i32 %30, i32* %17, align 4
  %31 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %32 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %31, i32 0, i32 6
  %33 = load %struct.rxe_map**, %struct.rxe_map*** %32, align 8
  store %struct.rxe_map** %33, %struct.rxe_map*** %15, align 8
  %34 = load %struct.rxe_map**, %struct.rxe_map*** %15, align 8
  %35 = getelementptr inbounds %struct.rxe_map*, %struct.rxe_map** %34, i64 0
  %36 = load %struct.rxe_map*, %struct.rxe_map** %35, align 8
  %37 = getelementptr inbounds %struct.rxe_map, %struct.rxe_map* %36, i32 0, i32 0
  %38 = load %struct.rxe_phys_buf*, %struct.rxe_phys_buf** %37, align 8
  store %struct.rxe_phys_buf* %38, %struct.rxe_phys_buf** %16, align 8
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %69, %26
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %39
  %44 = load i8**, i8*** %9, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %9, align 8
  %46 = load i8*, i8** %44, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.rxe_phys_buf*, %struct.rxe_phys_buf** %16, align 8
  %49 = getelementptr inbounds %struct.rxe_phys_buf, %struct.rxe_phys_buf* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load %struct.rxe_phys_buf*, %struct.rxe_phys_buf** %16, align 8
  %52 = getelementptr inbounds %struct.rxe_phys_buf, %struct.rxe_phys_buf* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.rxe_phys_buf*, %struct.rxe_phys_buf** %16, align 8
  %54 = getelementptr inbounds %struct.rxe_phys_buf, %struct.rxe_phys_buf* %53, i32 1
  store %struct.rxe_phys_buf* %54, %struct.rxe_phys_buf** %16, align 8
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @RXE_BUF_PER_MAP, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %43
  %61 = load %struct.rxe_map**, %struct.rxe_map*** %15, align 8
  %62 = getelementptr inbounds %struct.rxe_map*, %struct.rxe_map** %61, i32 1
  store %struct.rxe_map** %62, %struct.rxe_map*** %15, align 8
  %63 = load %struct.rxe_map**, %struct.rxe_map*** %15, align 8
  %64 = getelementptr inbounds %struct.rxe_map*, %struct.rxe_map** %63, i64 0
  %65 = load %struct.rxe_map*, %struct.rxe_map** %64, align 8
  %66 = getelementptr inbounds %struct.rxe_map, %struct.rxe_map* %65, i32 0, i32 0
  %67 = load %struct.rxe_phys_buf*, %struct.rxe_phys_buf** %66, align 8
  store %struct.rxe_phys_buf* %67, %struct.rxe_phys_buf** %16, align 8
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %60, %43
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %39

72:                                               ; preds = %39
  %73 = load i8*, i8** %11, align 8
  %74 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %75 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %78 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %81 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %79, %82
  %84 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %85 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @RXE_MEM_STATE_VALID, align 4
  %87 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %88 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  store i32 0, i32* %6, align 4
  br label %91

89:                                               ; preds = %23
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %89, %72
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
