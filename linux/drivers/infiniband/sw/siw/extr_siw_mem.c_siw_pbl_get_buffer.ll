; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_mem.c_siw_pbl_get_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_mem.c_siw_pbl_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_pbl = type { i32, %struct.siw_pble* }
%struct.siw_pble = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @siw_pbl_get_buffer(%struct.siw_pbl* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.siw_pbl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.siw_pble*, align 8
  %12 = alloca i64, align 8
  store %struct.siw_pbl* %0, %struct.siw_pbl** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  br label %19

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi i32 [ %17, %15 ], [ 0, %18 ]
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %71, %19
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.siw_pbl*, %struct.siw_pbl** %6, align 8
  %24 = getelementptr inbounds %struct.siw_pbl, %struct.siw_pbl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %74

27:                                               ; preds = %21
  %28 = load %struct.siw_pbl*, %struct.siw_pbl** %6, align 8
  %29 = getelementptr inbounds %struct.siw_pbl, %struct.siw_pbl* %28, i32 0, i32 1
  %30 = load %struct.siw_pble*, %struct.siw_pble** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.siw_pble, %struct.siw_pble* %30, i64 %32
  store %struct.siw_pble* %33, %struct.siw_pble** %11, align 8
  %34 = load %struct.siw_pble*, %struct.siw_pble** %11, align 8
  %35 = getelementptr inbounds %struct.siw_pble, %struct.siw_pble* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.siw_pble*, %struct.siw_pble** %11, align 8
  %38 = getelementptr inbounds %struct.siw_pble, %struct.siw_pble* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load i64, i64* %7, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %27
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.siw_pble*, %struct.siw_pble** %11, align 8
  %46 = getelementptr inbounds %struct.siw_pble, %struct.siw_pble* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  store i64 %48, i64* %12, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.siw_pble*, %struct.siw_pble** %11, align 8
  %53 = getelementptr inbounds %struct.siw_pble, %struct.siw_pble* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = sub nsw i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = load i32*, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %51, %43
  %60 = load i32*, i32** %9, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.siw_pble*, %struct.siw_pble** %11, align 8
  %67 = getelementptr inbounds %struct.siw_pble, %struct.siw_pble* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = add nsw i64 %68, %69
  store i64 %70, i64* %5, align 8
  br label %80

71:                                               ; preds = %27
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %21

74:                                               ; preds = %21
  %75 = load i32*, i32** %8, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32*, i32** %8, align 8
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %77, %74
  store i64 0, i64* %5, align 8
  br label %80

80:                                               ; preds = %79, %65
  %81 = load i64, i64* %5, align 8
  ret i64 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
