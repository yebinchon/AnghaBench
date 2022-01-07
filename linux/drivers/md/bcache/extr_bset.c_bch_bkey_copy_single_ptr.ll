; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_bkey_copy_single_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_bkey_copy_single_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bkey = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_bkey_copy_single_ptr(%struct.bkey* %0, %struct.bkey* %1, i32 %2) #0 {
  %4 = alloca %struct.bkey*, align 8
  %5 = alloca %struct.bkey*, align 8
  %6 = alloca i32, align 4
  store %struct.bkey* %0, %struct.bkey** %4, align 8
  store %struct.bkey* %1, %struct.bkey** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bkey*, %struct.bkey** %5, align 8
  %9 = call i32 @KEY_PTRS(%struct.bkey* %8)
  %10 = icmp ugt i32 %7, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.bkey*, %struct.bkey** %4, align 8
  %14 = load %struct.bkey*, %struct.bkey** %5, align 8
  %15 = call i32 @memcpy(%struct.bkey* %13, %struct.bkey* %14, i32 8)
  %16 = load %struct.bkey*, %struct.bkey** %5, align 8
  %17 = getelementptr inbounds %struct.bkey, %struct.bkey* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bkey*, %struct.bkey** %4, align 8
  %24 = getelementptr inbounds %struct.bkey, %struct.bkey* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.bkey*, %struct.bkey** %4, align 8
  %28 = call i32 @SET_KEY_PTRS(%struct.bkey* %27, i32 1)
  %29 = load %struct.bkey*, %struct.bkey** %4, align 8
  %30 = call i32 @SET_KEY_CSUM(%struct.bkey* %29, i32 0)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @KEY_PTRS(%struct.bkey*) #1

declare dso_local i32 @memcpy(%struct.bkey*, %struct.bkey*, i32) #1

declare dso_local i32 @SET_KEY_PTRS(%struct.bkey*, i32) #1

declare dso_local i32 @SET_KEY_CSUM(%struct.bkey*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
