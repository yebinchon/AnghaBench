; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_init_scales.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_init_scales.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5592r_state = type { i8*** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad5592r_state*, i32)* @ad5592r_init_scales to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad5592r_init_scales(%struct.ad5592r_state* %0, i32 %1) #0 {
  %3 = alloca %struct.ad5592r_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ad5592r_state* %0, %struct.ad5592r_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 1000000000
  %9 = ashr i64 %8, 12
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.ad5592r_state*, %struct.ad5592r_state** %3, align 8
  %12 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %11, i32 0, i32 0
  %13 = load i8***, i8**** %12, align 8
  %14 = getelementptr inbounds i8**, i8*** %13, i64 0
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = call i8* @div_s64_rem(i64 %10, i64 1000000000, i8** %16)
  %18 = load %struct.ad5592r_state*, %struct.ad5592r_state** %3, align 8
  %19 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %18, i32 0, i32 0
  %20 = load i8***, i8**** %19, align 8
  %21 = getelementptr inbounds i8**, i8*** %20, i64 0
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  store i8* %17, i8** %23, align 8
  %24 = load i64, i64* %5, align 8
  %25 = mul nsw i64 %24, 2
  %26 = load %struct.ad5592r_state*, %struct.ad5592r_state** %3, align 8
  %27 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %26, i32 0, i32 0
  %28 = load i8***, i8**** %27, align 8
  %29 = getelementptr inbounds i8**, i8*** %28, i64 1
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = call i8* @div_s64_rem(i64 %25, i64 1000000000, i8** %31)
  %33 = load %struct.ad5592r_state*, %struct.ad5592r_state** %3, align 8
  %34 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %33, i32 0, i32 0
  %35 = load i8***, i8**** %34, align 8
  %36 = getelementptr inbounds i8**, i8*** %35, i64 1
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  store i8* %32, i8** %38, align 8
  ret void
}

declare dso_local i8* @div_s64_rem(i64, i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
