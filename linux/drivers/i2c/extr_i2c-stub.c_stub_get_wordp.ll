; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-stub.c_stub_get_wordp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-stub.c_stub_get_wordp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_chip = type { i32, i64, i64, i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.stub_chip*, i64)* @stub_get_wordp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stub_get_wordp(%struct.stub_chip* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.stub_chip*, align 8
  %5 = alloca i64, align 8
  store %struct.stub_chip* %0, %struct.stub_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.stub_chip*, %struct.stub_chip** %4, align 8
  %7 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.stub_chip*, %struct.stub_chip** %4, align 8
  %13 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %10
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.stub_chip*, %struct.stub_chip** %4, align 8
  %19 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %17, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load %struct.stub_chip*, %struct.stub_chip** %4, align 8
  %24 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.stub_chip*, %struct.stub_chip** %4, align 8
  %27 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.stub_chip*, %struct.stub_chip** %4, align 8
  %31 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %29, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %25, %34
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %35, %36
  %38 = load %struct.stub_chip*, %struct.stub_chip** %4, align 8
  %39 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %3, align 8
  br label %49

43:                                               ; preds = %16, %10, %2
  %44 = load %struct.stub_chip*, %struct.stub_chip** %4, align 8
  %45 = getelementptr inbounds %struct.stub_chip, %struct.stub_chip* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %3, align 8
  br label %49

49:                                               ; preds = %43, %22
  %50 = load i32*, i32** %3, align 8
  ret i32* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
