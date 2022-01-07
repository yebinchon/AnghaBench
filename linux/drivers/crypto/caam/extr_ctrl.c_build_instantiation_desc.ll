; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_ctrl.c_build_instantiation_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_ctrl.c_build_instantiation_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OP_TYPE_CLASS1_ALG = common dso_local global i32 0, align 4
@OP_ALG_ALGSEL_RNG = common dso_local global i32 0, align 4
@OP_ALG_AAI_SHIFT = common dso_local global i32 0, align 4
@OP_ALG_AS_INIT = common dso_local global i32 0, align 4
@JUMP_CLASS_CLASS1 = common dso_local global i32 0, align 4
@LDST_SRCDST_WORD_CLRW = common dso_local global i32 0, align 4
@OP_ALG_AAI_RNG4_SK = common dso_local global i32 0, align 4
@JUMP_TYPE_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @build_instantiation_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_instantiation_desc(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @init_job_desc(i32* %9, i32 0)
  %11 = load i32, i32* @OP_TYPE_CLASS1_ALG, align 4
  %12 = load i32, i32* @OP_ALG_ALGSEL_RNG, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @OP_ALG_AAI_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = or i32 %13, %16
  %18 = load i32, i32* @OP_ALG_AS_INIT, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @append_operation(i32* %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @JUMP_CLASS_CLASS1, align 4
  %31 = call i32* @append_jump(i32* %29, i32 %30)
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @set_jump_tgt_here(i32* %32, i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @LDST_SRCDST_WORD_CLRW, align 4
  %37 = call i32 @append_load_imm_u32(i32* %35, i32 1, i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @OP_TYPE_CLASS1_ALG, align 4
  %40 = load i32, i32* @OP_ALG_ALGSEL_RNG, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @OP_ALG_AAI_RNG4_SK, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @append_operation(i32* %38, i32 %43)
  br label %45

45:                                               ; preds = %28, %25, %3
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @JUMP_CLASS_CLASS1, align 4
  %48 = load i32, i32* @JUMP_TYPE_HALT, align 4
  %49 = or i32 %47, %48
  %50 = call i32* @append_jump(i32* %46, i32 %49)
  ret void
}

declare dso_local i32 @init_job_desc(i32*, i32) #1

declare dso_local i32 @append_operation(i32*, i32) #1

declare dso_local i32* @append_jump(i32*, i32) #1

declare dso_local i32 @set_jump_tgt_here(i32*, i32*) #1

declare dso_local i32 @append_load_imm_u32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
