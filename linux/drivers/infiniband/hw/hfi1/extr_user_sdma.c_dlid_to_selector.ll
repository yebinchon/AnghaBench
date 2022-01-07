; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.c_dlid_to_selector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.c_dlid_to_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlid_to_selector.mapping = internal global [256 x i32] zeroinitializer, align 16
@dlid_to_selector.initialized = internal global i32 0, align 4
@dlid_to_selector.next = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dlid_to_selector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlid_to_selector(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @dlid_to_selector.initialized, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 @memset(i32* getelementptr inbounds ([256 x i32], [256 x i32]* @dlid_to_selector.mapping, i64 0, i64 0), i32 255, i32 256)
  store i32 1, i32* @dlid_to_selector.initialized, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* %2, align 4
  %10 = ashr i32 %9, 8
  %11 = load i32, i32* %2, align 4
  %12 = xor i32 %10, %11
  %13 = and i32 %12, 255
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* @dlid_to_selector.mapping, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 255
  br i1 %18, label %19, label %27

19:                                               ; preds = %8
  %20 = load i32, i32* @dlid_to_selector.next, align 4
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* @dlid_to_selector.mapping, i64 0, i64 %22
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @dlid_to_selector.next, align 4
  %25 = add nsw i32 %24, 1
  %26 = and i32 %25, 127
  store i32 %26, i32* @dlid_to_selector.next, align 4
  br label %27

27:                                               ; preds = %19, %8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [256 x i32], [256 x i32]* @dlid_to_selector.mapping, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  ret i32 %31
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
