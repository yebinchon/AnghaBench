; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto.c_check_alignment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto.c_check_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, %struct.scatterlist*, i32)* @check_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_alignment(%struct.scatterlist* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %12 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i64 @IS_ALIGNED(i32 %14, i32 4)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %19 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @IS_ALIGNED(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %17, %3
  %26 = phi i1 [ false, %3 ], [ %24, %17 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %29 = icmp ne %struct.scatterlist* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %71

32:                                               ; preds = %25
  %33 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %34 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i64 @IS_ALIGNED(i32 %36, i32 4)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %41 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @IS_ALIGNED(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %39, %32
  %48 = phi i1 [ false, %32 ], [ %46, %39 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %52, %47
  %56 = phi i1 [ false, %47 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %62 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %65 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br label %68

68:                                               ; preds = %60, %55
  %69 = phi i1 [ false, %55 ], [ %67, %60 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %30
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @IS_ALIGNED(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
