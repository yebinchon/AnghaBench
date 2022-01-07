; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_padlock-aes.c_rep_xcrypt_ecb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_padlock-aes.c_rep_xcrypt_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cword = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, %struct.cword*, i32)* @rep_xcrypt_ecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rep_xcrypt_ecb(i32* %0, i32* %1, i8* %2, %struct.cword* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cword*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.cword* %3, %struct.cword** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load %struct.cword*, %struct.cword** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call { i32*, i32* } asm sideeffect ".byte 0xf3,0x0f,0xa7,0xc8", "={si},={di},{dx},{bx},{cx},0,1,~{dirflag},~{fpsr},~{flags}"(%struct.cword* %13, i8* %14, i32 %15, i32* %11, i32* %12) #1, !srcloc !2
  %17 = extractvalue { i32*, i32* } %16, 0
  %18 = extractvalue { i32*, i32* } %16, 1
  store i32* %17, i32** %6, align 8
  store i32* %18, i32** %7, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 346}
