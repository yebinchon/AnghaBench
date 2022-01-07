; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bfloat_mantissa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bfloat_mantissa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bkey = type { i32 }
%struct.bkey_float = type { i32 }

@BKEY_MANTISSA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bkey*, %struct.bkey_float*)* @bfloat_mantissa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfloat_mantissa(%struct.bkey* %0, %struct.bkey_float* %1) #0 {
  %3 = alloca %struct.bkey*, align 8
  %4 = alloca %struct.bkey_float*, align 8
  %5 = alloca i32*, align 8
  store %struct.bkey* %0, %struct.bkey** %3, align 8
  store %struct.bkey_float* %1, %struct.bkey_float** %4, align 8
  %6 = load %struct.bkey*, %struct.bkey** %3, align 8
  %7 = getelementptr inbounds %struct.bkey, %struct.bkey* %6, i32 0, i32 0
  %8 = load %struct.bkey_float*, %struct.bkey_float** %4, align 8
  %9 = getelementptr inbounds %struct.bkey_float, %struct.bkey_float* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = ashr i32 %10, 6
  %12 = sext i32 %11 to i64
  %13 = sub i64 0, %12
  %14 = getelementptr inbounds i32, i32* %7, i64 %13
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 -1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bkey_float*, %struct.bkey_float** %4, align 8
  %22 = getelementptr inbounds %struct.bkey_float, %struct.bkey_float* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 63
  %25 = call i32 @shrd128(i32 %17, i32 %20, i32 %24)
  %26 = load i32, i32* @BKEY_MANTISSA_MASK, align 4
  %27 = and i32 %25, %26
  ret i32 %27
}

declare dso_local i32 @shrd128(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
