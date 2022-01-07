; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_init_chachapoly_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_init_chachapoly_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32 }
%struct.aead_edesc = type { i32* }
%struct.crypto_aead = type { i32 }

@CHACHAPOLY_IV_SIZE = common dso_local global i32 0, align 4
@REG3 = common dso_local global i32 0, align 4
@ZERO = common dso_local global i32 0, align 4
@IMM = common dso_local global i32 0, align 4
@LDST_CLASS_1_CCB = common dso_local global i32 0, align 4
@LDST_SRCDST_BYTE_CONTEXT = common dso_local global i32 0, align 4
@LDST_OFFSET_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.aead_edesc*, i32, i32)* @init_chachapoly_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_chachapoly_job(%struct.aead_request* %0, %struct.aead_edesc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.aead_edesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_aead*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %5, align 8
  store %struct.aead_edesc* %1, %struct.aead_edesc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %15 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %14)
  store %struct.crypto_aead* %15, %struct.crypto_aead** %9, align 8
  %16 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %17 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %19 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.aead_edesc*, %struct.aead_edesc** %6, align 8
  %22 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  store i32 4, i32* %13, align 4
  %24 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %25 = load %struct.aead_edesc*, %struct.aead_edesc** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @init_aead_job(%struct.aead_request* %24, %struct.aead_edesc* %25, i32 %26, i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @CHACHAPOLY_IV_SIZE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, 4
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sub i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %32, %4
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* @REG3, align 4
  %41 = load i32, i32* @ZERO, align 4
  %42 = load i32, i32* @IMM, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @append_math_add_imm_u32(i32* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32*, i32** %12, align 8
  %46 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %47 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @LDST_CLASS_1_CCB, align 4
  %51 = load i32, i32* @LDST_SRCDST_BYTE_CONTEXT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @LDST_OFFSET_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %52, %55
  %57 = call i32 @append_load_as_imm(i32* %45, i32 %48, i32 %49, i32 %56)
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @init_aead_job(%struct.aead_request*, %struct.aead_edesc*, i32, i32) #1

declare dso_local i32 @append_math_add_imm_u32(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @append_load_as_imm(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
