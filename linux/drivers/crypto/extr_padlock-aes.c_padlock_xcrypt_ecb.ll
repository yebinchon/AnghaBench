; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_padlock-aes.c_padlock_xcrypt_ecb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_padlock-aes.c_padlock_xcrypt_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ecb_fetch_blocks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i8*, i32)* @padlock_xcrypt_ecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @padlock_xcrypt_ecb(i32* %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @ecb_fetch_blocks, align 4
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %12, %14
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @ecb_fetch_blocks, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @ecb_crypt(i32* %20, i32* %21, i8* %22, i8* %23, i32 %24)
  br label %50

26:                                               ; preds = %5
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call { i32*, i32* } asm sideeffect ".byte 0xf3,0x0f,0xa7,0xc8", "={si},={di},{dx},{bx},{cx},0,1,~{dirflag},~{fpsr},~{flags}"(i8* %35, i8* %36, i32 %37, i32* %33, i32* %34) #2, !srcloc !2
  %39 = extractvalue { i32*, i32* } %38, 0
  %40 = extractvalue { i32*, i32* } %38, 1
  store i32* %39, i32** %6, align 8
  store i32* %40, i32** %7, align 8
  br label %41

41:                                               ; preds = %32, %26
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call { i32*, i32* } asm sideeffect ".byte 0xf3,0x0f,0xa7,0xc8", "={si},={di},{dx},{bx},{cx},0,1,~{dirflag},~{fpsr},~{flags}"(i8* %44, i8* %45, i32 %46, i32* %42, i32* %43) #2, !srcloc !3
  %48 = extractvalue { i32*, i32* } %47, 0
  %49 = extractvalue { i32*, i32* } %47, 1
  store i32* %48, i32** %6, align 8
  store i32* %49, i32** %7, align 8
  br label %50

50:                                               ; preds = %41, %19
  ret void
}

declare dso_local i32 @ecb_crypt(i32*, i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 595}
!3 = !{i32 731}
