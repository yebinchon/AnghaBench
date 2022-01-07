; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_sg_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_sg_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist**, i64*, i8*, i64, i64, i32)* @atmel_tdes_sg_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_tdes_sg_copy(%struct.scatterlist** %0, i64* %1, i8* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.scatterlist** %0, %struct.scatterlist*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %85, %6
  %17 = load i64, i64* %11, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, i64* %12, align 8
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %86

24:                                               ; preds = %22
  %25 = load %struct.scatterlist**, %struct.scatterlist*** %8, align 8
  %26 = load %struct.scatterlist*, %struct.scatterlist** %25, align 8
  %27 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %9, align 8
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %28, %30
  %32 = load i64, i64* %12, align 8
  %33 = call i64 @min(i64 %31, i64 %32)
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i64 @min(i64 %34, i64 %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %24
  %40 = load i64, i64* %15, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  br label %89

42:                                               ; preds = %24
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %15, align 8
  %45 = getelementptr i8, i8* %43, i64 %44
  %46 = load %struct.scatterlist**, %struct.scatterlist*** %8, align 8
  %47 = load %struct.scatterlist*, %struct.scatterlist** %46, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @scatterwalk_map_and_copy(i8* %45, %struct.scatterlist* %47, i64 %49, i64 %50, i32 %51)
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* %15, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* %11, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %59
  store i64 %62, i64* %60, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %12, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %12, align 8
  %66 = load i64*, i64** %9, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.scatterlist**, %struct.scatterlist*** %8, align 8
  %69 = load %struct.scatterlist*, %struct.scatterlist** %68, align 8
  %70 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %67, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %42
  %74 = load %struct.scatterlist**, %struct.scatterlist*** %8, align 8
  %75 = load %struct.scatterlist*, %struct.scatterlist** %74, align 8
  %76 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %75)
  %77 = load %struct.scatterlist**, %struct.scatterlist*** %8, align 8
  store %struct.scatterlist* %76, %struct.scatterlist** %77, align 8
  %78 = load %struct.scatterlist**, %struct.scatterlist*** %8, align 8
  %79 = load %struct.scatterlist*, %struct.scatterlist** %78, align 8
  %80 = icmp ne %struct.scatterlist* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i64*, i64** %9, align 8
  store i64 0, i64* %82, align 8
  br label %84

83:                                               ; preds = %73
  store i64 0, i64* %12, align 8
  br label %84

84:                                               ; preds = %83, %81
  br label %85

85:                                               ; preds = %84, %42
  br label %16

86:                                               ; preds = %22
  %87 = load i64, i64* %15, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %86, %39
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @scatterwalk_map_and_copy(i8*, %struct.scatterlist*, i64, i64, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
