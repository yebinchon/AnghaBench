; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_create_hash_pad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_create_hash_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i32, i32)* @create_hash_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_hash_pad(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @__cpu_to_be64(i32 %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %19 [
    i32 129, label %18
    i32 128, label %18
    i32 131, label %18
    i32 130, label %18
  ]

18:                                               ; preds = %4, %4, %4, %4
  store i32 56, i32* %10, align 4
  store i32 64, i32* %9, align 4
  store i32 8, i32* %13, align 4
  br label %20

19:                                               ; preds = %4
  store i32 112, i32* %10, align 4
  store i32 128, i32* %9, align 4
  store i32 16, i32* %13, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %10, align 4
  %22 = sub i32 %21, 1
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sub i32 %24, 1
  %26 = and i32 %23, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add i32 %31, %32
  %34 = load i32, i32* %11, align 4
  %35 = sub i32 %33, %34
  br label %40

36:                                               ; preds = %20
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sub i32 %37, %38
  br label %40

40:                                               ; preds = %36, %30
  %41 = phi i32 [ %35, %30 ], [ %39, %36 ]
  store i32 %41, i32* %12, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @memset(i8* %43, i32 0, i32 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 -128, i8* %47, align 1
  %48 = load i32, i32* %13, align 4
  %49 = icmp eq i32 %48, 16
  br i1 %49, label %50, label %64

50:                                               ; preds = %40
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i32, i32* %12, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = call i32 @memset(i8* %55, i32 0, i32 8)
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i32, i32* %12, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = getelementptr inbounds i8, i8* %61, i64 8
  %63 = call i32 @memcpy(i8* %62, i32* %14, i32 8)
  br label %71

64:                                               ; preds = %40
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i32, i32* %12, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = call i32 @memcpy(i8* %69, i32* %14, i32 8)
  br label %71

71:                                               ; preds = %64, %50
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = add i32 %72, %73
  %75 = add i32 %74, 1
  %76 = zext i32 %75 to i64
  ret i64 %76
}

declare dso_local i32 @__cpu_to_be64(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
