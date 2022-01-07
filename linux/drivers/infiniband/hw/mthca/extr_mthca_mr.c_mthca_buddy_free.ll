; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mr.c_mthca_buddy_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mr.c_mthca_buddy_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_buddy = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_buddy*, i32, i32)* @mthca_buddy_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mthca_buddy_free(%struct.mthca_buddy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mthca_buddy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mthca_buddy* %0, %struct.mthca_buddy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = ashr i32 %8, %7
  store i32 %9, i32* %5, align 4
  %10 = load %struct.mthca_buddy*, %struct.mthca_buddy** %4, align 8
  %11 = getelementptr inbounds %struct.mthca_buddy, %struct.mthca_buddy* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  br label %13

13:                                               ; preds = %25, %3
  %14 = load i32, i32* %5, align 4
  %15 = xor i32 %14, 1
  %16 = load %struct.mthca_buddy*, %struct.mthca_buddy** %4, align 8
  %17 = getelementptr inbounds %struct.mthca_buddy, %struct.mthca_buddy* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @test_bit(i32 %15, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %13
  %26 = load i32, i32* %5, align 4
  %27 = xor i32 %26, 1
  %28 = load %struct.mthca_buddy*, %struct.mthca_buddy** %4, align 8
  %29 = getelementptr inbounds %struct.mthca_buddy, %struct.mthca_buddy* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clear_bit(i32 %27, i32 %34)
  %36 = load %struct.mthca_buddy*, %struct.mthca_buddy** %4, align 8
  %37 = getelementptr inbounds %struct.mthca_buddy, %struct.mthca_buddy* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %13

48:                                               ; preds = %13
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.mthca_buddy*, %struct.mthca_buddy** %4, align 8
  %51 = getelementptr inbounds %struct.mthca_buddy, %struct.mthca_buddy* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @set_bit(i32 %49, i32 %56)
  %58 = load %struct.mthca_buddy*, %struct.mthca_buddy** %4, align 8
  %59 = getelementptr inbounds %struct.mthca_buddy, %struct.mthca_buddy* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.mthca_buddy*, %struct.mthca_buddy** %4, align 8
  %67 = getelementptr inbounds %struct.mthca_buddy, %struct.mthca_buddy* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
