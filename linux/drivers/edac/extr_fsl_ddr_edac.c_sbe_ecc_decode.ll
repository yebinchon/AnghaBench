; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_fsl_ddr_edac.c_sbe_ecc_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_fsl_ddr_edac.c_sbe_ecc_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*)* @sbe_ecc_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbe_ecc_decode(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %9, align 8
  store i32 -1, i32* %13, align 4
  %14 = load i32*, i32** %10, align 8
  store i32 -1, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @calculate_ecc(i32 %15, i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = xor i32 %17, %18
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %32, %5
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 64
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @syndrome_from_bit(i32 %25)
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  br label %52

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %20

35:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %49, %35
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = ashr i32 %40, %41
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %11, align 4
  %47 = load i32*, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  br label %52

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %36

52:                                               ; preds = %28, %45, %36
  ret void
}

declare dso_local i32 @calculate_ecc(i32, i32) #1

declare dso_local i32 @syndrome_from_bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
