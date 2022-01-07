; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_desc_constr.h_append_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_desc_constr.h_append_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDST_SRCDST_MASK = common dso_local global i32 0, align 4
@CMD_STORE = common dso_local global i32 0, align 4
@LDST_SRCDST_WORD_DESCBUF_SHARED = common dso_local global i32 0, align 4
@LDST_SRCDST_WORD_DESCBUF_JOB = common dso_local global i32 0, align 4
@LDST_SRCDST_WORD_DESCBUF_JOB_WE = common dso_local global i32 0, align 4
@LDST_SRCDST_WORD_DESCBUF_SHARED_WE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @append_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_store(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @LDST_SRCDST_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @CMD_STORE, align 4
  %15 = load i32, i32* %8, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @append_cmd(i32* %13, i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @LDST_SRCDST_WORD_DESCBUF_SHARED, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @LDST_SRCDST_WORD_DESCBUF_JOB, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @LDST_SRCDST_WORD_DESCBUF_JOB_WE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @LDST_SRCDST_WORD_DESCBUF_SHARED_WE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @append_ptr(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %31, %27, %23, %4
  ret void
}

declare dso_local i32 @append_cmd(i32*, i32) #1

declare dso_local i32 @append_ptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
