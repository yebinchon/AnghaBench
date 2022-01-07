; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_set_msg_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_set_msg_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @set_msg_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_msg_len(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @memset(i32* %9, i32 0, i32 %10)
  %12 = load i32, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = zext i32 %12 to i64
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp uge i32 %16, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 4, i32* %7, align 4
  br label %29

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = mul i32 8, %21
  %23 = shl i32 1, %22
  %24 = icmp ugt i32 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EOVERFLOW, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %44

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @cpu_to_be32(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = getelementptr inbounds i32, i32* %8, i64 4
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = sub i64 0, %39
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @memcpy(i32* %36, i32* %41, i32 %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %29, %25
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
