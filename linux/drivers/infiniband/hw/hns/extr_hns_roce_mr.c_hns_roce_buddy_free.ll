; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_buddy_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_buddy_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_buddy = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_buddy*, i64, i32)* @hns_roce_buddy_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_buddy_free(%struct.hns_roce_buddy* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.hns_roce_buddy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.hns_roce_buddy* %0, %struct.hns_roce_buddy** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i64, i64* %5, align 8
  %9 = zext i32 %7 to i64
  %10 = lshr i64 %8, %9
  store i64 %10, i64* %5, align 8
  %11 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %12 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  br label %14

14:                                               ; preds = %26, %3
  %15 = load i64, i64* %5, align 8
  %16 = xor i64 %15, 1
  %17 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %18 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @test_bit(i64 %16, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %14
  %27 = load i64, i64* %5, align 8
  %28 = xor i64 %27, 1
  %29 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %30 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clear_bit(i64 %28, i32 %35)
  %37 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %38 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 4
  %45 = load i64, i64* %5, align 8
  %46 = lshr i64 %45, 1
  store i64 %46, i64* %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %14

49:                                               ; preds = %14
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %52 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @set_bit(i64 %50, i32 %57)
  %59 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %60 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %68 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
