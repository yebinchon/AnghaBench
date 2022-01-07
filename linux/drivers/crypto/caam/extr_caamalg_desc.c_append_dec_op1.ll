; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_desc.c_append_dec_op1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_desc.c_append_dec_op1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OP_ALG_ALGSEL_MASK = common dso_local global i32 0, align 4
@OP_ALG_ALGSEL_AES = common dso_local global i32 0, align 4
@OP_ALG_AS_INITFINAL = common dso_local global i32 0, align 4
@OP_ALG_DECRYPT = common dso_local global i32 0, align 4
@JUMP_TEST_ALL = common dso_local global i32 0, align 4
@JUMP_COND_SHRD = common dso_local global i32 0, align 4
@OP_ALG_AS_INIT = common dso_local global i32 0, align 4
@OP_ALG_AAI_DK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @append_dec_op1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_dec_op1(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @OP_ALG_ALGSEL_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @OP_ALG_ALGSEL_AES, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @OP_ALG_AS_INITFINAL, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @OP_ALG_DECRYPT, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @append_operation(i32* %13, i32 %18)
  br label %51

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @JUMP_TEST_ALL, align 4
  %23 = load i32, i32* @JUMP_COND_SHRD, align 4
  %24 = or i32 %22, %23
  %25 = call i32* @append_jump(i32* %21, i32 %24)
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @OP_ALG_AS_INIT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @OP_ALG_DECRYPT, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @append_operation(i32* %26, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @JUMP_TEST_ALL, align 4
  %35 = call i32* @append_jump(i32* %33, i32 %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @set_jump_tgt_here(i32* %36, i32* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @OP_ALG_AS_INIT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @OP_ALG_DECRYPT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @OP_ALG_AAI_DK, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @append_operation(i32* %39, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @set_jump_tgt_here(i32* %48, i32* %49)
  br label %51

51:                                               ; preds = %20, %12
  ret void
}

declare dso_local i32 @append_operation(i32*, i32) #1

declare dso_local i32* @append_jump(i32*, i32) #1

declare dso_local i32 @set_jump_tgt_here(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
