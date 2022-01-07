; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_fault.c___hfi1_should_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_fault.c___hfi1_should_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i32, i32, i64, i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_ibdev*, i32, i32)* @__hfi1_should_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hfi1_should_fault(%struct.hfi1_ibdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_ibdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfi1_ibdev* %0, %struct.hfi1_ibdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %5, align 8
  %10 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %5, align 8
  %15 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %132

21:                                               ; preds = %13
  %22 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %5, align 8
  %23 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %132

31:                                               ; preds = %21
  %32 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %5, align 8
  %33 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %31
  %39 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %5, align 8
  %40 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BITS_PER_BYTE, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = trunc i64 %46 to i32
  %48 = call i64 @bitmap_empty(i32 %43, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %132

51:                                               ; preds = %38
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %5, align 8
  %54 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @test_bit(i32 %52, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %132

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %31
  %63 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %5, align 8
  %64 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load i64, i64* @jiffies, align 8
  %71 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %5, align 8
  %72 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @time_before(i64 %70, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %132

79:                                               ; preds = %69, %62
  %80 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %5, align 8
  %81 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %79
  %87 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %5, align 8
  %88 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %5, align 8
  %95 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, -1
  store i64 %99, i64* %97, align 8
  store i32 0, i32* %4, align 4
  br label %132

100:                                              ; preds = %86, %79
  %101 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %5, align 8
  %102 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 5
  %105 = call i32 @should_fail(i32* %104, i32 1)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %100
  %109 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %5, align 8
  %110 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %5, align 8
  %115 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 4
  store i64 %113, i64* %117, align 8
  %118 = load i64, i64* @jiffies, align 8
  %119 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %5, align 8
  %120 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @usecs_to_jiffies(i64 %123)
  %125 = add nsw i64 %118, %124
  %126 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %5, align 8
  %127 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  store i64 %125, i64* %129, align 8
  br label %130

130:                                              ; preds = %108, %100
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %130, %93, %78, %60, %50, %30, %20
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i64 @bitmap_empty(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @should_fail(i32*, i32) #1

declare dso_local i64 @usecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
