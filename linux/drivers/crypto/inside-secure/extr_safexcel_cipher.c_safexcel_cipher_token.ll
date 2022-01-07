; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_cipher_token.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_cipher_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_cipher_ctx = type { i64, i64, i32, i8* }
%struct.safexcel_command_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8**, i32 }

@CONTEXT_CONTROL_CRYPTO_MODE_CTR_LOAD = common dso_local global i64 0, align 8
@EIP197_OPTION_4_TOKEN_IV_CMD = common dso_local global i32 0, align 4
@EIP197_XCM_MODE_GCM = common dso_local global i64 0, align 8
@EIP197_XCM_MODE_CCM = common dso_local global i64 0, align 8
@CONTEXT_CONTROL_CRYPTO_MODE_ECB = common dso_local global i64 0, align 8
@DES_BLOCK_SIZE = common dso_local global i32 0, align 4
@EIP197_OPTION_2_TOKEN_IV_CMD = common dso_local global i32 0, align 4
@DES3_EDE_BLOCK_SIZE = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.safexcel_cipher_ctx*, i32*, %struct.safexcel_command_desc*)* @safexcel_cipher_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @safexcel_cipher_token(%struct.safexcel_cipher_ctx* %0, i32* %1, %struct.safexcel_command_desc* %2) #0 {
  %4 = alloca %struct.safexcel_cipher_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.safexcel_command_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.safexcel_cipher_ctx* %0, %struct.safexcel_cipher_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.safexcel_command_desc* %2, %struct.safexcel_command_desc** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CONTEXT_CONTROL_CRYPTO_MODE_CTR_LOAD, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %3
  %14 = load i32, i32* @EIP197_OPTION_4_TOKEN_IV_CMD, align 4
  %15 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %16 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %14
  store i32 %19, i32* %17, align 8
  %20 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %24 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  store i8* %22, i8** %27, align 8
  %28 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %29 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @memcpy(i8** %32, i32* %33, i32 8)
  %35 = call i8* @cpu_to_be32(i32 1)
  %36 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %37 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 3
  store i8* %35, i8** %40, align 8
  br label %153

41:                                               ; preds = %3
  %42 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EIP197_XCM_MODE_GCM, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %41
  %48 = load i32, i32* @EIP197_OPTION_4_TOKEN_IV_CMD, align 4
  %49 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %50 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 8
  %54 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %55 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @memcpy(i8** %58, i32* %59, i32 12)
  %61 = call i8* @cpu_to_be32(i32 1)
  %62 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %63 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 3
  store i8* %61, i8** %66, align 8
  br label %153

67:                                               ; preds = %41
  %68 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %4, align 8
  %69 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @EIP197_XCM_MODE_CCM, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %109

73:                                               ; preds = %67
  %74 = load i32, i32* @EIP197_OPTION_4_TOKEN_IV_CMD, align 4
  %75 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %76 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %74
  store i32 %79, i32* %77, align 8
  %80 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %81 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i8**, i8*** %82, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i32*, i32** %5, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 15, %88
  %90 = call i32 @memcpy(i8** %84, i32* %85, i32 %89)
  %91 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %92 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  %96 = bitcast i8** %95 to i32*
  %97 = getelementptr inbounds i32, i32* %96, i64 15
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = sub i64 0, %101
  %103 = getelementptr inbounds i32, i32* %97, i64 %102
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  %108 = call i32 @memset(i32* %103, i32 0, i32 %107)
  br label %153

109:                                              ; preds = %67
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %4, align 8
  %113 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CONTEXT_CONTROL_CRYPTO_MODE_ECB, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %153

117:                                              ; preds = %111
  %118 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %4, align 8
  %119 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %145 [
    i32 128, label %121
    i32 130, label %129
    i32 129, label %137
  ]

121:                                              ; preds = %117
  %122 = load i32, i32* @DES_BLOCK_SIZE, align 4
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* @EIP197_OPTION_2_TOKEN_IV_CMD, align 4
  %124 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %125 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %123
  store i32 %128, i32* %126, align 8
  br label %145

129:                                              ; preds = %117
  %130 = load i32, i32* @DES3_EDE_BLOCK_SIZE, align 4
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* @EIP197_OPTION_2_TOKEN_IV_CMD, align 4
  %132 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %133 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %131
  store i32 %136, i32* %134, align 8
  br label %145

137:                                              ; preds = %117
  %138 = load i32, i32* @AES_BLOCK_SIZE, align 4
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* @EIP197_OPTION_4_TOKEN_IV_CMD, align 4
  %140 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %141 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %139
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %117, %137, %129, %121
  %146 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %147 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i8**, i8*** %148, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @memcpy(i8** %149, i32* %150, i32 %151)
  br label %153

153:                                              ; preds = %13, %47, %73, %145, %111
  ret void
}

declare dso_local i32 @memcpy(i8**, i32*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
