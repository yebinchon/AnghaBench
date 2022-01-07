; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_padlock-aes.c_padlock_xcrypt_cbc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_padlock-aes.c_padlock_xcrypt_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cbc_fetch_blocks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i32*, i8*, i32)* @padlock_xcrypt_cbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @padlock_xcrypt_cbc(i32* %0, i32* %1, i8* %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* @cbc_fetch_blocks, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %15, %17
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @cbc_fetch_blocks, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %6
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call i32* @cbc_crypt(i32* %23, i32* %24, i8* %25, i32* %26, i8* %27, i32 %28)
  store i32* %29, i32** %7, align 8
  br label %59

30:                                               ; preds = %6
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %13, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call { i32*, i32*, i32* } asm sideeffect ".byte 0xf3,0x0f,0xa7,0xd0", "={si},={di},={ax},{dx},{bx},{cx},0,1,2,~{dirflag},~{fpsr},~{flags}"(i8* %40, i8* %41, i32 %42, i32* %37, i32* %38, i32* %39) #2, !srcloc !2
  %44 = extractvalue { i32*, i32*, i32* } %43, 0
  %45 = extractvalue { i32*, i32*, i32* } %43, 1
  %46 = extractvalue { i32*, i32*, i32* } %43, 2
  store i32* %44, i32** %8, align 8
  store i32* %45, i32** %9, align 8
  store i32* %46, i32** %11, align 8
  br label %47

47:                                               ; preds = %36, %30
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call { i32*, i32*, i32* } asm sideeffect ".byte 0xf3,0x0f,0xa7,0xd0", "={si},={di},={ax},{dx},{bx},{cx},0,1,2,~{dirflag},~{fpsr},~{flags}"(i8* %51, i8* %52, i32 %53, i32* %48, i32* %49, i32* %50) #2, !srcloc !3
  %55 = extractvalue { i32*, i32*, i32* } %54, 0
  %56 = extractvalue { i32*, i32*, i32* } %54, 1
  %57 = extractvalue { i32*, i32*, i32* } %54, 2
  store i32* %55, i32** %8, align 8
  store i32* %56, i32** %9, align 8
  store i32* %57, i32** %11, align 8
  %58 = load i32*, i32** %11, align 8
  store i32* %58, i32** %7, align 8
  br label %59

59:                                               ; preds = %47, %22
  %60 = load i32*, i32** %7, align 8
  ret i32* %60
}

declare dso_local i32* @cbc_crypt(i32*, i32*, i8*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 605}
!3 = !{i32 757}
