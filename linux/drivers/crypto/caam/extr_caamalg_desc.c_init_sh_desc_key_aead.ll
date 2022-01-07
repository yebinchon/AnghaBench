; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_desc.c_init_sh_desc_key_aead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_desc.c_init_sh_desc_key_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alginfo = type { i32, i32, i32, i32, i64 }

@HDR_SHARE_SERIAL = common dso_local global i32 0, align 4
@HDR_SAVECTX = common dso_local global i32 0, align 4
@JUMP_JSL = common dso_local global i32 0, align 4
@JUMP_TEST_ALL = common dso_local global i32 0, align 4
@JUMP_COND_SHRD = common dso_local global i32 0, align 4
@CTR_RFC3686_NONCE_SIZE = common dso_local global i32 0, align 4
@CLASS_2 = common dso_local global i32 0, align 4
@KEY_DEST_MDHA_SPLIT = common dso_local global i32 0, align 4
@KEY_ENC = common dso_local global i32 0, align 4
@CLASS_1 = common dso_local global i32 0, align 4
@KEY_DEST_CLASS_REG = common dso_local global i32 0, align 4
@LDST_CLASS_IND_CCB = common dso_local global i32 0, align 4
@LDST_SRCDST_BYTE_OUTFIFO = common dso_local global i32 0, align 4
@LDST_IMM = common dso_local global i32 0, align 4
@MOVE_SRC_OUTFIFO = common dso_local global i32 0, align 4
@MOVE_DEST_CLASS1CTX = common dso_local global i32 0, align 4
@MOVE_OFFSET_SHIFT = common dso_local global i32 0, align 4
@MOVE_LEN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.alginfo*, %struct.alginfo*, i32, i32*, i32)* @init_sh_desc_key_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sh_desc_key_aead(i32* %0, %struct.alginfo* %1, %struct.alginfo* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.alginfo*, align 8
  %9 = alloca %struct.alginfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.alginfo* %1, %struct.alginfo** %8, align 8
  store %struct.alginfo* %2, %struct.alginfo** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.alginfo*, %struct.alginfo** %8, align 8
  %16 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %14, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @HDR_SHARE_SERIAL, align 4
  %20 = load i32, i32* @HDR_SAVECTX, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @init_sh_desc(i32* %18, i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @JUMP_JSL, align 4
  %25 = load i32, i32* @JUMP_TEST_ALL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @JUMP_COND_SHRD, align 4
  %28 = or i32 %26, %27
  %29 = call i32* @append_jump(i32* %23, i32 %28)
  store i32* %29, i32** %13, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %6
  %33 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %34 = load i32, i32* %14, align 4
  %35 = sub i32 %34, %33
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %32, %6
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 6
  br i1 %38, label %39, label %76

39:                                               ; preds = %36
  %40 = load %struct.alginfo*, %struct.alginfo** %9, align 8
  %41 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.alginfo*, %struct.alginfo** %9, align 8
  %47 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.alginfo*, %struct.alginfo** %9, align 8
  %50 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.alginfo*, %struct.alginfo** %9, align 8
  %53 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CLASS_2, align 4
  %56 = load i32, i32* @KEY_DEST_MDHA_SPLIT, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @KEY_ENC, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @append_key_as_imm(i32* %45, i32 %48, i32 %51, i32 %54, i32 %59)
  br label %75

61:                                               ; preds = %39
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.alginfo*, %struct.alginfo** %9, align 8
  %64 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.alginfo*, %struct.alginfo** %9, align 8
  %67 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CLASS_2, align 4
  %70 = load i32, i32* @KEY_DEST_MDHA_SPLIT, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @KEY_ENC, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @append_key(i32* %62, i32 %65, i32 %68, i32 %73)
  br label %75

75:                                               ; preds = %61, %44
  br label %80

76:                                               ; preds = %36
  %77 = load i32*, i32** %7, align 8
  %78 = load %struct.alginfo*, %struct.alginfo** %9, align 8
  %79 = call i32 @append_proto_dkp(i32* %77, %struct.alginfo* %78)
  br label %80

80:                                               ; preds = %76, %75
  %81 = load %struct.alginfo*, %struct.alginfo** %8, align 8
  %82 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.alginfo*, %struct.alginfo** %8, align 8
  %88 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @CLASS_1, align 4
  %93 = load i32, i32* @KEY_DEST_CLASS_REG, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @append_key_as_imm(i32* %86, i32 %89, i32 %90, i32 %91, i32 %94)
  br label %106

96:                                               ; preds = %80
  %97 = load i32*, i32** %7, align 8
  %98 = load %struct.alginfo*, %struct.alginfo** %8, align 8
  %99 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @CLASS_1, align 4
  %103 = load i32, i32* @KEY_DEST_CLASS_REG, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @append_key(i32* %97, i32 %100, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %96, %85
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %106
  %110 = load i32*, i32** %7, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %113 = load i32, i32* @LDST_CLASS_IND_CCB, align 4
  %114 = load i32, i32* @LDST_SRCDST_BYTE_OUTFIFO, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @LDST_IMM, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @append_load_as_imm(i32* %110, i32* %111, i32 %112, i32 %117)
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* @MOVE_SRC_OUTFIFO, align 4
  %121 = load i32, i32* @MOVE_DEST_CLASS1CTX, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @MOVE_OFFSET_SHIFT, align 4
  %124 = shl i32 16, %123
  %125 = or i32 %122, %124
  %126 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %127 = load i32, i32* @MOVE_LEN_SHIFT, align 4
  %128 = shl i32 %126, %127
  %129 = or i32 %125, %128
  %130 = call i32 @append_move(i32* %119, i32 %129)
  br label %131

131:                                              ; preds = %109, %106
  %132 = load i32*, i32** %7, align 8
  %133 = load i32*, i32** %13, align 8
  %134 = call i32 @set_jump_tgt_here(i32* %132, i32* %133)
  ret void
}

declare dso_local i32 @init_sh_desc(i32*, i32) #1

declare dso_local i32* @append_jump(i32*, i32) #1

declare dso_local i32 @append_key_as_imm(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @append_key(i32*, i32, i32, i32) #1

declare dso_local i32 @append_proto_dkp(i32*, %struct.alginfo*) #1

declare dso_local i32 @append_load_as_imm(i32*, i32*, i32, i32) #1

declare dso_local i32 @append_move(i32*, i32) #1

declare dso_local i32 @set_jump_tgt_here(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
