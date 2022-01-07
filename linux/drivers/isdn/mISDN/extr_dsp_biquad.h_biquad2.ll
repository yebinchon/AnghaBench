; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_biquad.h_biquad2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_biquad.h_biquad2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.biquad2_state = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.biquad2_state*, i32)* @biquad2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biquad2(%struct.biquad2_state* %0, i32 %1) #0 {
  %3 = alloca %struct.biquad2_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.biquad2_state* %0, %struct.biquad2_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.biquad2_state*, %struct.biquad2_state** %3, align 8
  %9 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %7, %10
  %12 = load %struct.biquad2_state*, %struct.biquad2_state** %3, align 8
  %13 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.biquad2_state*, %struct.biquad2_state** %3, align 8
  %16 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = add nsw i32 %11, %18
  %20 = load %struct.biquad2_state*, %struct.biquad2_state** %3, align 8
  %21 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.biquad2_state*, %struct.biquad2_state** %3, align 8
  %24 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = add nsw i32 %19, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.biquad2_state*, %struct.biquad2_state** %3, align 8
  %30 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.biquad2_state*, %struct.biquad2_state** %3, align 8
  %33 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = add nsw i32 %28, %35
  %37 = load %struct.biquad2_state*, %struct.biquad2_state** %3, align 8
  %38 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.biquad2_state*, %struct.biquad2_state** %3, align 8
  %41 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = add nsw i32 %36, %43
  store i32 %44, i32* %5, align 4
  %45 = load %struct.biquad2_state*, %struct.biquad2_state** %3, align 8
  %46 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.biquad2_state*, %struct.biquad2_state** %3, align 8
  %49 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 15
  %52 = load %struct.biquad2_state*, %struct.biquad2_state** %3, align 8
  %53 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = ashr i32 %54, 15
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
