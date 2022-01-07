; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_iter_block_advance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_iter_block_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msc_iter = type { i64, i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msc_iter*)* @msc_iter_block_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msc_iter_block_advance(%struct.msc_iter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msc_iter*, align 8
  store %struct.msc_iter* %0, %struct.msc_iter** %3, align 8
  %4 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %5 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %4, i32 0, i32 4
  store i64 0, i64* %5, align 8
  %6 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %7 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %12 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %15 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %10
  %19 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %20 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %24 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %29 = call i32 @msc_iter_win_advance(%struct.msc_iter* %28)
  store i32 %29, i32* %2, align 4
  br label %81

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %10, %1
  %32 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %33 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %38 = call i32 @msc_iter_bdesc(%struct.msc_iter* %37)
  %39 = call i64 @msc_block_last_written(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %43 = call i32 @msc_iter_win_advance(%struct.msc_iter* %42)
  store i32 %43, i32* %2, align 4
  br label %81

44:                                               ; preds = %36, %31
  %45 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %46 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @sg_is_last(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %52 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @msc_win_base_sg(i32 %53)
  %55 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %56 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %64

57:                                               ; preds = %44
  %58 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %59 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @sg_next(i64 %60)
  %62 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %63 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %66 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %64
  %70 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %71 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %74 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %79 = call i32 @msc_iter_win_advance(%struct.msc_iter* %78)
  store i32 %79, i32* %2, align 4
  br label %81

80:                                               ; preds = %69, %64
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %77, %41, %27
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @msc_iter_win_advance(%struct.msc_iter*) #1

declare dso_local i64 @msc_block_last_written(i32) #1

declare dso_local i32 @msc_iter_bdesc(%struct.msc_iter*) #1

declare dso_local i64 @sg_is_last(i64) #1

declare dso_local i64 @msc_win_base_sg(i32) #1

declare dso_local i64 @sg_next(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
