; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_padlock-aes.c_rep_xcrypt_cbc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_padlock-aes.c_rep_xcrypt_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cword = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i32*, %struct.cword*, i32)* @rep_xcrypt_cbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rep_xcrypt_cbc(i32* %0, i32* %1, i8* %2, i32* %3, %struct.cword* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.cword*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.cword* %4, %struct.cword** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = load %struct.cword*, %struct.cword** %11, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %12, align 4
  %19 = call { i32*, i32*, i32* } asm sideeffect ".byte 0xf3,0x0f,0xa7,0xd0", "={si},={di},={ax},{dx},{bx},{cx},0,1,2,~{dirflag},~{fpsr},~{flags}"(%struct.cword* %16, i8* %17, i32 %18, i32* %13, i32* %14, i32* %15) #1, !srcloc !2
  %20 = extractvalue { i32*, i32*, i32* } %19, 0
  %21 = extractvalue { i32*, i32*, i32* } %19, 1
  %22 = extractvalue { i32*, i32*, i32* } %19, 2
  store i32* %20, i32** %7, align 8
  store i32* %21, i32** %8, align 8
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  ret i32* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 352}
