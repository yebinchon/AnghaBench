; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash_desc.c_cnstr_shdsc_sk_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash_desc.c_cnstr_shdsc_sk_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alginfo = type { i32, i32, i32, i32 }

@HDR_SHARE_SERIAL = common dso_local global i32 0, align 4
@HDR_SAVECTX = common dso_local global i32 0, align 4
@JUMP_TEST_ALL = common dso_local global i32 0, align 4
@JUMP_COND_SHRD = common dso_local global i32 0, align 4
@OP_ALG_AS_INIT = common dso_local global i32 0, align 4
@OP_ALG_AS_INITFINAL = common dso_local global i32 0, align 4
@CLASS_1 = common dso_local global i32 0, align 4
@KEY_DEST_CLASS_REG = common dso_local global i32 0, align 4
@KEY_ENC = common dso_local global i32 0, align 4
@LDST_CLASS_1_CCB = common dso_local global i32 0, align 4
@LDST_SRCDST_BYTE_CONTEXT = common dso_local global i32 0, align 4
@OP_ALG_ENCRYPT = common dso_local global i32 0, align 4
@VARSEQINLEN = common dso_local global i32 0, align 4
@SEQINLEN = common dso_local global i32 0, align 4
@REG0 = common dso_local global i32 0, align 4
@CAAM_CMD_SZ = common dso_local global i32 0, align 4
@FIFOLD_CLASS_CLASS1 = common dso_local global i32 0, align 4
@FIFOLD_TYPE_LAST1 = common dso_local global i32 0, align 4
@FIFOLD_TYPE_MSG = common dso_local global i32 0, align 4
@FIFOLDST_VLF = common dso_local global i32 0, align 4
@FIFOST_TYPE_KEY_KEK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cnstr_shdsc_sk_hash(i32* %0, %struct.alginfo* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.alginfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.alginfo* %1, %struct.alginfo** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @HDR_SHARE_SERIAL, align 4
  %14 = load i32, i32* @HDR_SAVECTX, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @init_sh_desc(i32* %12, i32 %15)
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @JUMP_TEST_ALL, align 4
  %19 = load i32, i32* @JUMP_COND_SHRD, align 4
  %20 = or i32 %18, %19
  %21 = call i32* @append_jump(i32* %17, i32 %20)
  store i32* %21, i32** %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @OP_ALG_AS_INIT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @OP_ALG_AS_INITFINAL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25, %5
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.alginfo*, %struct.alginfo** %7, align 8
  %32 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.alginfo*, %struct.alginfo** %7, align 8
  %35 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.alginfo*, %struct.alginfo** %7, align 8
  %38 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CLASS_1, align 4
  %41 = load i32, i32* @KEY_DEST_CLASS_REG, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @append_key_as_imm(i32* %30, i32 %33, i32 %36, i32 %39, i32 %42)
  br label %86

44:                                               ; preds = %25
  %45 = load %struct.alginfo*, %struct.alginfo** %7, align 8
  %46 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @is_xcbc_aes(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.alginfo*, %struct.alginfo** %7, align 8
  %53 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.alginfo*, %struct.alginfo** %7, align 8
  %56 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CLASS_1, align 4
  %59 = load i32, i32* @KEY_DEST_CLASS_REG, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @KEY_ENC, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @append_key(i32* %51, i32 %54, i32 %57, i32 %62)
  br label %79

64:                                               ; preds = %44
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.alginfo*, %struct.alginfo** %7, align 8
  %67 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.alginfo*, %struct.alginfo** %7, align 8
  %70 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.alginfo*, %struct.alginfo** %7, align 8
  %73 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CLASS_1, align 4
  %76 = load i32, i32* @KEY_DEST_CLASS_REG, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @append_key_as_imm(i32* %65, i32 %68, i32 %71, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %64, %50
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @LDST_CLASS_1_CCB, align 4
  %83 = load i32, i32* @LDST_SRCDST_BYTE_CONTEXT, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @append_seq_load(i32* %80, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %79, %29
  %87 = load i32*, i32** %6, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @set_jump_tgt_here(i32* %87, i32* %88)
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.alginfo*, %struct.alginfo** %7, align 8
  %92 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @OP_ALG_ENCRYPT, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @append_operation(i32* %90, i32 %97)
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* @VARSEQINLEN, align 4
  %101 = load i32, i32* @SEQINLEN, align 4
  %102 = load i32, i32* @REG0, align 4
  %103 = load i32, i32* @CAAM_CMD_SZ, align 4
  %104 = call i32 @append_math_add(i32* %99, i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* @FIFOLD_CLASS_CLASS1, align 4
  %107 = load i32, i32* @FIFOLD_TYPE_LAST1, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @FIFOLD_TYPE_MSG, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @FIFOLDST_VLF, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @append_seq_fifo_load(i32* %105, i32 0, i32 %112)
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @LDST_CLASS_1_CCB, align 4
  %117 = load i32, i32* @LDST_SRCDST_BYTE_CONTEXT, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @append_seq_store(i32* %114, i32 %115, i32 %118)
  %120 = load %struct.alginfo*, %struct.alginfo** %7, align 8
  %121 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @is_xcbc_aes(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %86
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @OP_ALG_AS_INIT, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %125
  %130 = load i32*, i32** %6, align 8
  %131 = load %struct.alginfo*, %struct.alginfo** %7, align 8
  %132 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.alginfo*, %struct.alginfo** %7, align 8
  %135 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @LDST_CLASS_1_CCB, align 4
  %138 = load i32, i32* @FIFOST_TYPE_KEY_KEK, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @append_fifo_store(i32* %130, i32 %133, i32 %136, i32 %139)
  br label %141

141:                                              ; preds = %129, %125, %86
  ret void
}

declare dso_local i32 @init_sh_desc(i32*, i32) #1

declare dso_local i32* @append_jump(i32*, i32) #1

declare dso_local i32 @append_key_as_imm(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @is_xcbc_aes(i32) #1

declare dso_local i32 @append_key(i32*, i32, i32, i32) #1

declare dso_local i32 @append_seq_load(i32*, i32, i32) #1

declare dso_local i32 @set_jump_tgt_here(i32*, i32*) #1

declare dso_local i32 @append_operation(i32*, i32) #1

declare dso_local i32 @append_math_add(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @append_seq_fifo_load(i32*, i32, i32) #1

declare dso_local i32 @append_seq_store(i32*, i32, i32) #1

declare dso_local i32 @append_fifo_store(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
