; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_fsl_ddr_edac.c_syndrome_from_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_fsl_ddr_edac.c_syndrome_from_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ecc_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @syndrome_from_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syndrome_from_bit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ult i32 %5, 32
  %7 = zext i1 %6 to i32
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load i32*, i32** @ecc_table, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %2, align 4
  %18 = urem i32 %17, 32
  %19 = lshr i32 %16, %18
  %20 = and i32 %19, 1
  %21 = load i32, i32* %3, align 4
  %22 = sdiv i32 %21, 2
  %23 = shl i32 %20, %22
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %3, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
