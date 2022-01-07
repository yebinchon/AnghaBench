; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash_desc.c_cnstr_shdsc_ahash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash_desc.c_cnstr_shdsc_ahash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alginfo = type { i32, i64, i32, i32 }

@HDR_SHARE_SERIAL = common dso_local global i32 0, align 4
@OP_ALG_AS_UPDATE = common dso_local global i32 0, align 4
@JUMP_JSL = common dso_local global i32 0, align 4
@JUMP_TEST_ALL = common dso_local global i32 0, align 4
@JUMP_COND_SHRD = common dso_local global i32 0, align 4
@CLASS_2 = common dso_local global i32 0, align 4
@KEY_DEST_MDHA_SPLIT = common dso_local global i32 0, align 4
@KEY_ENC = common dso_local global i32 0, align 4
@OP_ALG_AAI_HMAC_PRECOMP = common dso_local global i32 0, align 4
@LDST_CLASS_2_CCB = common dso_local global i32 0, align 4
@LDST_SRCDST_BYTE_CONTEXT = common dso_local global i32 0, align 4
@OP_ALG_ENCRYPT = common dso_local global i32 0, align 4
@VARSEQINLEN = common dso_local global i32 0, align 4
@SEQINLEN = common dso_local global i32 0, align 4
@REG0 = common dso_local global i32 0, align 4
@CAAM_CMD_SZ = common dso_local global i32 0, align 4
@FIFOLD_CLASS_CLASS2 = common dso_local global i32 0, align 4
@FIFOLD_TYPE_LAST2 = common dso_local global i32 0, align 4
@FIFOLD_TYPE_MSG = common dso_local global i32 0, align 4
@KEY_VLF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cnstr_shdsc_ahash(i32* %0, %struct.alginfo* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.alginfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.alginfo* %1, %struct.alginfo** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.alginfo*, %struct.alginfo** %9, align 8
  %18 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %15, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* @HDR_SHARE_SERIAL, align 4
  %22 = call i32 @init_sh_desc(i32* %20, i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @OP_ALG_AS_UPDATE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %69

26:                                               ; preds = %7
  %27 = load %struct.alginfo*, %struct.alginfo** %9, align 8
  %28 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %26
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @JUMP_JSL, align 4
  %34 = load i32, i32* @JUMP_TEST_ALL, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @JUMP_COND_SHRD, align 4
  %37 = or i32 %35, %36
  %38 = call i32* @append_jump(i32* %32, i32 %37)
  store i32* %38, i32** %16, align 8
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 6
  br i1 %40, label %41, label %58

41:                                               ; preds = %31
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.alginfo*, %struct.alginfo** %9, align 8
  %44 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.alginfo*, %struct.alginfo** %9, align 8
  %47 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.alginfo*, %struct.alginfo** %9, align 8
  %50 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @CLASS_2, align 4
  %53 = load i32, i32* @KEY_DEST_MDHA_SPLIT, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @KEY_ENC, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @append_key_as_imm(i32* %42, i32 %45, i32 %48, i64 %51, i32 %56)
  br label %62

58:                                               ; preds = %31
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.alginfo*, %struct.alginfo** %9, align 8
  %61 = call i32 @append_proto_dkp(i32* %59, %struct.alginfo* %60)
  br label %62

62:                                               ; preds = %58, %41
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = call i32 @set_jump_tgt_here(i32* %63, i32* %64)
  %66 = load i32, i32* @OP_ALG_AAI_HMAC_PRECOMP, align 4
  %67 = load i32, i32* %15, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %62, %26, %7
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @LDST_CLASS_2_CCB, align 4
  %76 = load i32, i32* @LDST_SRCDST_BYTE_CONTEXT, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @append_seq_load(i32* %73, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %72, %69
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @OP_ALG_ENCRYPT, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @append_operation(i32* %80, i32 %85)
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* @VARSEQINLEN, align 4
  %89 = load i32, i32* @SEQINLEN, align 4
  %90 = load i32, i32* @REG0, align 4
  %91 = load i32, i32* @CAAM_CMD_SZ, align 4
  %92 = call i32 @append_math_add(i32* %87, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* @FIFOLD_CLASS_CLASS2, align 4
  %95 = load i32, i32* @FIFOLD_TYPE_LAST2, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @FIFOLD_TYPE_MSG, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @KEY_VLF, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @append_seq_fifo_load(i32* %93, i32 0, i32 %100)
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @LDST_CLASS_2_CCB, align 4
  %105 = load i32, i32* @LDST_SRCDST_BYTE_CONTEXT, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @append_seq_store(i32* %102, i32 %103, i32 %106)
  ret void
}

declare dso_local i32 @init_sh_desc(i32*, i32) #1

declare dso_local i32* @append_jump(i32*, i32) #1

declare dso_local i32 @append_key_as_imm(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @append_proto_dkp(i32*, %struct.alginfo*) #1

declare dso_local i32 @set_jump_tgt_here(i32*, i32*) #1

declare dso_local i32 @append_seq_load(i32*, i32, i32) #1

declare dso_local i32 @append_operation(i32*, i32) #1

declare dso_local i32 @append_math_add(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @append_seq_fifo_load(i32*, i32, i32) #1

declare dso_local i32 @append_seq_store(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
