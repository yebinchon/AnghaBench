; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_padlock-aes.c_ecb_crypt_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_padlock-aes.c_ecb_crypt_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cword = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@MAX_ECB_FETCH_BLOCKS = common dso_local global i32 0, align 4
@PADLOCK_ALIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.cword*, i32)* @ecb_crypt_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecb_crypt_copy(i32* %0, i32* %1, i32* %2, %struct.cword* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.cword*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.cword* %3, %struct.cword** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %15 = load i32, i32* @MAX_ECB_FETCH_BLOCKS, align 4
  %16 = sub nsw i32 %15, 1
  %17 = mul nsw i32 %14, %16
  %18 = load i32, i32* @PADLOCK_ALIGNMENT, align 4
  %19 = add nsw i32 %17, %18
  %20 = sub nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* @PADLOCK_ALIGNMENT, align 4
  %26 = call i32* @PTR_ALIGN(i32* %24, i32 %25)
  store i32* %26, i32** %13, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %31 = mul nsw i32 %29, %30
  %32 = call i32 @memcpy(i32* %27, i32* %28, i32 %31)
  %33 = load i32*, i32** %13, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.cword*, %struct.cword** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @rep_xcrypt_ecb(i32* %33, i32* %34, i32* %35, %struct.cword* %36, i32 %37)
  %39 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %39)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @PTR_ALIGN(i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @rep_xcrypt_ecb(i32*, i32*, i32*, %struct.cword*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
