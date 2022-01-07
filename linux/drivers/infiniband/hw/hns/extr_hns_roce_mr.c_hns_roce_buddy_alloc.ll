; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_buddy_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_buddy_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_buddy = type { i32, i32, i64*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_buddy*, i32, i64*)* @hns_roce_buddy_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_buddy_alloc(%struct.hns_roce_buddy* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_buddy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.hns_roce_buddy* %0, %struct.hns_roce_buddy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %10 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %5, align 8
  %11 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %54, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %5, align 8
  %17 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 %15, %18
  br i1 %19, label %20, label %57

20:                                               ; preds = %14
  %21 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %5, align 8
  %22 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %20
  %30 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %5, align 8
  %31 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %32, %33
  %35 = shl i32 1, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %9, align 8
  %37 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %5, align 8
  %38 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @find_first_bit(i32 %43, i64 %44)
  %46 = load i64*, i64** %7, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %29
  br label %61

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52, %20
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %14

57:                                               ; preds = %14
  %58 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %5, align 8
  %59 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %58, i32 0, i32 1
  %60 = call i32 @spin_unlock(i32* %59)
  store i32 -1, i32* %4, align 4
  br label %118

61:                                               ; preds = %51
  %62 = load i64*, i64** %7, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %5, align 8
  %65 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @clear_bit(i64 %63, i32 %70)
  %72 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %5, align 8
  %73 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %84, %61
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %109

84:                                               ; preds = %80
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %8, align 4
  %87 = load i64*, i64** %7, align 8
  %88 = load i64, i64* %87, align 8
  %89 = shl i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load i64*, i64** %7, align 8
  %91 = load i64, i64* %90, align 8
  %92 = xor i64 %91, 1
  %93 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %5, align 8
  %94 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @set_bit(i64 %92, i32 %99)
  %101 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %5, align 8
  %102 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %101, i32 0, i32 2
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %106, align 8
  br label %80

109:                                              ; preds = %80
  %110 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %5, align 8
  %111 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %110, i32 0, i32 1
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load i32, i32* %6, align 4
  %114 = load i64*, i64** %7, align 8
  %115 = load i64, i64* %114, align 8
  %116 = zext i32 %113 to i64
  %117 = shl i64 %115, %116
  store i64 %117, i64* %114, align 8
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %109, %57
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @find_first_bit(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
