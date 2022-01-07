; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_gpu*)* @etnaviv_gpu_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_gpu_clk_enable(%struct.etnaviv_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.etnaviv_gpu*, align 8
  %4 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %3, align 8
  %5 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %6 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %11 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @clk_prepare_enable(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %86

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %21 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %26 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @clk_prepare_enable(i64 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %86

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %19
  %35 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %36 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %41 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @clk_prepare_enable(i64 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %74

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %50 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %55 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @clk_prepare_enable(i64 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %63

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %48
  store i32 0, i32* %2, align 4
  br label %86

63:                                               ; preds = %60
  %64 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %65 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %70 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @clk_disable_unprepare(i64 %71)
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %73, %46
  %75 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %76 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %81 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @clk_disable_unprepare(i64 %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %62, %31, %16
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
