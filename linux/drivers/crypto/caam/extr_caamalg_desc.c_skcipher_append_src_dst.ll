; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_desc.c_skcipher_append_src_dst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_desc.c_skcipher_append_src_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VARSEQOUTLEN = common dso_local global i32 0, align 4
@SEQINLEN = common dso_local global i32 0, align 4
@REG0 = common dso_local global i32 0, align 4
@CAAM_CMD_SZ = common dso_local global i32 0, align 4
@VARSEQINLEN = common dso_local global i32 0, align 4
@FIFOLD_CLASS_CLASS1 = common dso_local global i32 0, align 4
@KEY_VLF = common dso_local global i32 0, align 4
@FIFOLD_TYPE_MSG = common dso_local global i32 0, align 4
@FIFOLD_TYPE_LAST1 = common dso_local global i32 0, align 4
@FIFOST_TYPE_MESSAGE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @skcipher_append_src_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skcipher_append_src_dst(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @VARSEQOUTLEN, align 4
  %5 = load i32, i32* @SEQINLEN, align 4
  %6 = load i32, i32* @REG0, align 4
  %7 = load i32, i32* @CAAM_CMD_SZ, align 4
  %8 = call i32 @append_math_add(i32* %3, i32 %4, i32 %5, i32 %6, i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @VARSEQINLEN, align 4
  %11 = load i32, i32* @SEQINLEN, align 4
  %12 = load i32, i32* @REG0, align 4
  %13 = load i32, i32* @CAAM_CMD_SZ, align 4
  %14 = call i32 @append_math_add(i32* %9, i32 %10, i32 %11, i32 %12, i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @FIFOLD_CLASS_CLASS1, align 4
  %17 = load i32, i32* @KEY_VLF, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @FIFOLD_TYPE_MSG, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @FIFOLD_TYPE_LAST1, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @append_seq_fifo_load(i32* %15, i32 0, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @FIFOST_TYPE_MESSAGE_DATA, align 4
  %26 = load i32, i32* @KEY_VLF, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @append_seq_fifo_store(i32* %24, i32 0, i32 %27)
  ret void
}

declare dso_local i32 @append_math_add(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @append_seq_fifo_load(i32*, i32, i32) #1

declare dso_local i32 @append_seq_fifo_store(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
