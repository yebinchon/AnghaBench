; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_desc_constr.h_append_u64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_desc_constr.h_append_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@caam_little_end = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @append_u64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_u64(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @desc_end(i32* %6)
  store i32* %7, i32** %5, align 8
  %8 = load i64, i64* @caam_little_end, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @lower_32_bits(i32 %11)
  %13 = call i32 @cpu_to_caam32(i64 %12)
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @upper_32_bits(i32 %15)
  %17 = call i32 @cpu_to_caam32(i64 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %5, align 8
  store i32 %17, i32* %19, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @upper_32_bits(i32 %21)
  %23 = call i32 @cpu_to_caam32(i64 %22)
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @lower_32_bits(i32 %25)
  %27 = call i32 @cpu_to_caam32(i64 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %5, align 8
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %20, %10
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @caam32_to_cpu(i32 %32)
  %34 = add nsw i64 %33, 2
  %35 = call i32 @cpu_to_caam32(i64 %34)
  %36 = load i32*, i32** %3, align 8
  store i32 %35, i32* %36, align 4
  ret void
}

declare dso_local i32* @desc_end(i32*) #1

declare dso_local i32 @cpu_to_caam32(i64) #1

declare dso_local i64 @lower_32_bits(i32) #1

declare dso_local i64 @upper_32_bits(i32) #1

declare dso_local i64 @caam32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
