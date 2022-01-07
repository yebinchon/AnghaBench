; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_get_aes_decrypt_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_get_aes_decrypt_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_NK = common dso_local global i32 0, align 4
@KEYLENGTH_4BYTES = common dso_local global i32 0, align 4
@NUMBER_OF_ROUNDS_10 = common dso_local global i32 0, align 4
@KEYLENGTH_6BYTES = common dso_local global i32 0, align 4
@NUMBER_OF_ROUNDS_12 = common dso_local global i32 0, align 4
@KEYLENGTH_8BYTES = common dso_local global i32 0, align 4
@NUMBER_OF_ROUNDS_14 = common dso_local global i32 0, align 4
@round_constant = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @get_aes_decrypt_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_aes_decrypt_key(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @MAX_NK, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %30 [
    i32 130, label %21
    i32 129, label %24
    i32 128, label %27
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* @KEYLENGTH_4BYTES, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* @NUMBER_OF_ROUNDS_10, align 4
  store i32 %23, i32* %13, align 4
  br label %31

24:                                               ; preds = %3
  %25 = load i32, i32* @KEYLENGTH_6BYTES, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* @NUMBER_OF_ROUNDS_12, align 4
  store i32 %26, i32* %13, align 4
  br label %31

27:                                               ; preds = %3
  %28 = load i32, i32* @KEYLENGTH_8BYTES, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* @NUMBER_OF_ROUNDS_14, align 4
  store i32 %29, i32* %13, align 4
  br label %31

30:                                               ; preds = %3
  store i32 1, i32* %15, align 4
  br label %149

31:                                               ; preds = %27, %24, %21
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 4, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = bitcast i8* %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %19, i64 %46
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %32

51:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  %52 = load i32, i32* %14, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %19, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %98, %51
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  %63 = mul nsw i32 %62, 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %115

65:                                               ; preds = %57
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %14, align 4
  %68 = srem i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %87, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = shl i32 %71, 8
  %73 = load i32, i32* %7, align 4
  %74 = ashr i32 %73, 24
  %75 = or i32 %72, %74
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @aes_ks_subword(i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32*, i32** @round_constant, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %14, align 4
  %81 = sdiv i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = xor i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %98

87:                                               ; preds = %65
  %88 = load i32, i32* %14, align 4
  %89 = icmp eq i32 %88, 8
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  %92 = srem i32 %91, 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @aes_ks_subword(i32 %95)
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %94, %90, %87
  br label %98

98:                                               ; preds = %97, %70
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %14, align 4
  %102 = srem i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %19, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %105, %99
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %14, align 4
  %109 = srem i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %19, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %57

115:                                              ; preds = %57
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %14, align 4
  %120 = srem i32 %118, %119
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %145, %115
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %148

125:                                              ; preds = %121
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %19, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @htonl(i32 %129)
  %131 = load i8*, i8** %4, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %130, i32* %135, align 4
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %125
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %140, %125
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  br label %121

148:                                              ; preds = %121
  store i32 0, i32* %15, align 4
  br label %149

149:                                              ; preds = %148, %30
  %150 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %15, align 4
  switch i32 %151, label %153 [
    i32 0, label %152
    i32 1, label %152
  ]

152:                                              ; preds = %149, %149
  ret void

153:                                              ; preds = %149
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @be32_to_cpu(i32) #2

declare dso_local i32 @aes_ks_subword(i32) #2

declare dso_local i32 @htonl(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
