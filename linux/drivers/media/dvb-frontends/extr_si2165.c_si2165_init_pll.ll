; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2165.c_si2165_init_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2165.c_si2165_init_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si2165_state = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REG_PLL_DIVL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si2165_state*)* @si2165_init_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si2165_init_pll(%struct.si2165_state* %0) #0 {
  %2 = alloca %struct.si2165_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  store %struct.si2165_state* %0, %struct.si2165_state** %2, align 8
  %10 = load %struct.si2165_state*, %struct.si2165_state** %2, align 8
  %11 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 56, i32* %6, align 4
  store i32 8, i32* %7, align 4
  store i32 12, i32* %8, align 4
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %17 [
    i32 16000000, label %15
    i32 24000000, label %16
  ]

15:                                               ; preds = %1
  store i32 56, i32* %6, align 4
  br label %37

16:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  store i32 4, i32* %5, align 4
  store i32 19, i32* %6, align 4
  br label %37

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp ugt i32 %18, 16000000
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 2, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %4, align 4
  %23 = mul i32 1624000000, %22
  %24 = load i32, i32* %3, align 4
  %25 = mul i32 %24, 2
  %26 = mul i32 %25, 63
  %27 = icmp ugt i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 4, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %4, align 4
  %31 = mul i32 1624000000, %30
  %32 = load i32, i32* %3, align 4
  %33 = mul i32 %32, 2
  %34 = load i32, i32* %5, align 4
  %35 = mul i32 %33, %34
  %36 = udiv i32 %31, %35
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %29, %16, %15
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = udiv i32 %38, %39
  %41 = mul i32 %40, 2
  %42 = load i32, i32* %6, align 4
  %43 = mul i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = mul i32 %43, %44
  %46 = load %struct.si2165_state*, %struct.si2165_state** %2, align 8
  %47 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.si2165_state*, %struct.si2165_state** %2, align 8
  %49 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = mul i32 %51, 4
  %53 = udiv i32 %50, %52
  %54 = load %struct.si2165_state*, %struct.si2165_state** %2, align 8
  %55 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.si2165_state*, %struct.si2165_state** %2, align 8
  %57 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = mul i32 %59, 2
  %61 = udiv i32 %58, %60
  %62 = load %struct.si2165_state*, %struct.si2165_state** %2, align 8
  %63 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %64, i32* %65, align 16
  %66 = load i32, i32* %7, align 4
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 63
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 1
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 64, i32 0
  %74 = or i32 %69, %73
  %75 = or i32 %74, 128
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %75, i32* %76, align 8
  %77 = load i32, i32* %4, align 4
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %77, i32* %78, align 4
  %79 = load %struct.si2165_state*, %struct.si2165_state** %2, align 8
  %80 = load i32, i32* @REG_PLL_DIVL, align 4
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %82 = call i32 @si2165_write(%struct.si2165_state* %79, i32 %80, i32* %81, i32 4)
  ret i32 %82
}

declare dso_local i32 @si2165_write(%struct.si2165_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
