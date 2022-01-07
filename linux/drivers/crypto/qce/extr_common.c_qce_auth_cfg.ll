; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_common.c_qce_auth_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_common.c_qce_auth_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUTH_ALG_AES = common dso_local global i64 0, align 8
@AUTH_ALG_SHIFT = common dso_local global i64 0, align 8
@AUTH_ALG_SHA = common dso_local global i64 0, align 8
@AES_KEYSIZE_128 = common dso_local global i64 0, align 8
@AUTH_KEY_SZ_AES128 = common dso_local global i64 0, align 8
@AUTH_KEY_SIZE_SHIFT = common dso_local global i64 0, align 8
@AES_KEYSIZE_256 = common dso_local global i64 0, align 8
@AUTH_KEY_SZ_AES256 = common dso_local global i64 0, align 8
@AUTH_SIZE_SHA1 = common dso_local global i64 0, align 8
@AUTH_SIZE_SHIFT = common dso_local global i64 0, align 8
@AUTH_SIZE_SHA256 = common dso_local global i64 0, align 8
@AUTH_SIZE_ENUM_16_BYTES = common dso_local global i64 0, align 8
@AUTH_MODE_HASH = common dso_local global i64 0, align 8
@AUTH_MODE_SHIFT = common dso_local global i64 0, align 8
@AUTH_MODE_HMAC = common dso_local global i64 0, align 8
@AUTH_MODE_CCM = common dso_local global i64 0, align 8
@AUTH_MODE_CMAC = common dso_local global i64 0, align 8
@AUTH_POS_BEFORE = common dso_local global i64 0, align 8
@AUTH_POS_SHIFT = common dso_local global i64 0, align 8
@QCE_MAX_NONCE_WORDS = common dso_local global i64 0, align 8
@AUTH_NONCE_NUM_WORDS_SHIFT = common dso_local global i64 0, align 8
@AUTH_LAST_SHIFT = common dso_local global i32 0, align 4
@AUTH_FIRST_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @qce_auth_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qce_auth_cfg(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @IS_AES(i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @IS_CCM(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @IS_CMAC(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13, %9
  %18 = load i64, i64* @AUTH_ALG_AES, align 8
  %19 = load i64, i64* @AUTH_ALG_SHIFT, align 8
  %20 = shl i64 %18, %19
  %21 = load i64, i64* %5, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %5, align 8
  br label %29

23:                                               ; preds = %13, %2
  %24 = load i64, i64* @AUTH_ALG_SHA, align 8
  %25 = load i64, i64* @AUTH_ALG_SHIFT, align 8
  %26 = shl i64 %24, %25
  %27 = load i64, i64* %5, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %23, %17
  %30 = load i64, i64* %3, align 8
  %31 = call i64 @IS_CCM(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @IS_CMAC(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %33, %29
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @AES_KEYSIZE_128, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i64, i64* @AUTH_KEY_SZ_AES128, align 8
  %43 = load i64, i64* @AUTH_KEY_SIZE_SHIFT, align 8
  %44 = shl i64 %42, %43
  %45 = load i64, i64* %5, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %5, align 8
  br label %58

47:                                               ; preds = %37
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @AES_KEYSIZE_256, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i64, i64* @AUTH_KEY_SZ_AES256, align 8
  %53 = load i64, i64* @AUTH_KEY_SIZE_SHIFT, align 8
  %54 = shl i64 %52, %53
  %55 = load i64, i64* %5, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %51, %47
  br label %58

58:                                               ; preds = %57, %41
  br label %59

59:                                               ; preds = %58, %33
  %60 = load i64, i64* %3, align 8
  %61 = call i64 @IS_SHA1(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %3, align 8
  %65 = call i64 @IS_SHA1_HMAC(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63, %59
  %68 = load i64, i64* @AUTH_SIZE_SHA1, align 8
  %69 = load i64, i64* @AUTH_SIZE_SHIFT, align 8
  %70 = shl i64 %68, %69
  %71 = load i64, i64* %5, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %5, align 8
  br label %99

73:                                               ; preds = %63
  %74 = load i64, i64* %3, align 8
  %75 = call i64 @IS_SHA256(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i64, i64* %3, align 8
  %79 = call i64 @IS_SHA256_HMAC(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77, %73
  %82 = load i64, i64* @AUTH_SIZE_SHA256, align 8
  %83 = load i64, i64* @AUTH_SIZE_SHIFT, align 8
  %84 = shl i64 %82, %83
  %85 = load i64, i64* %5, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %5, align 8
  br label %98

87:                                               ; preds = %77
  %88 = load i64, i64* %3, align 8
  %89 = call i64 @IS_CMAC(i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i64, i64* @AUTH_SIZE_ENUM_16_BYTES, align 8
  %93 = load i64, i64* @AUTH_SIZE_SHIFT, align 8
  %94 = shl i64 %92, %93
  %95 = load i64, i64* %5, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %91, %87
  br label %98

98:                                               ; preds = %97, %81
  br label %99

99:                                               ; preds = %98, %67
  %100 = load i64, i64* %3, align 8
  %101 = call i64 @IS_SHA1(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* %3, align 8
  %105 = call i64 @IS_SHA256(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %103, %99
  %108 = load i64, i64* @AUTH_MODE_HASH, align 8
  %109 = load i64, i64* @AUTH_MODE_SHIFT, align 8
  %110 = shl i64 %108, %109
  %111 = load i64, i64* %5, align 8
  %112 = or i64 %111, %110
  store i64 %112, i64* %5, align 8
  br label %166

113:                                              ; preds = %103
  %114 = load i64, i64* %3, align 8
  %115 = call i64 @IS_SHA1_HMAC(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %129, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* %3, align 8
  %119 = call i64 @IS_SHA256_HMAC(i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  %122 = load i64, i64* %3, align 8
  %123 = call i64 @IS_CBC(i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i64, i64* %3, align 8
  %127 = call i64 @IS_CTR(i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %125, %121, %117, %113
  %130 = load i64, i64* @AUTH_MODE_HMAC, align 8
  %131 = load i64, i64* @AUTH_MODE_SHIFT, align 8
  %132 = shl i64 %130, %131
  %133 = load i64, i64* %5, align 8
  %134 = or i64 %133, %132
  store i64 %134, i64* %5, align 8
  br label %165

135:                                              ; preds = %125
  %136 = load i64, i64* %3, align 8
  %137 = call i64 @IS_AES(i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %135
  %140 = load i64, i64* %3, align 8
  %141 = call i64 @IS_CCM(i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load i64, i64* @AUTH_MODE_CCM, align 8
  %145 = load i64, i64* @AUTH_MODE_SHIFT, align 8
  %146 = shl i64 %144, %145
  %147 = load i64, i64* %5, align 8
  %148 = or i64 %147, %146
  store i64 %148, i64* %5, align 8
  br label %164

149:                                              ; preds = %139, %135
  %150 = load i64, i64* %3, align 8
  %151 = call i64 @IS_AES(i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %149
  %154 = load i64, i64* %3, align 8
  %155 = call i64 @IS_CMAC(i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load i64, i64* @AUTH_MODE_CMAC, align 8
  %159 = load i64, i64* @AUTH_MODE_SHIFT, align 8
  %160 = shl i64 %158, %159
  %161 = load i64, i64* %5, align 8
  %162 = or i64 %161, %160
  store i64 %162, i64* %5, align 8
  br label %163

163:                                              ; preds = %157, %153, %149
  br label %164

164:                                              ; preds = %163, %143
  br label %165

165:                                              ; preds = %164, %129
  br label %166

166:                                              ; preds = %165, %107
  %167 = load i64, i64* %3, align 8
  %168 = call i64 @IS_SHA(i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load i64, i64* %3, align 8
  %172 = call i64 @IS_SHA_HMAC(i64 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %170, %166
  %175 = load i64, i64* @AUTH_POS_BEFORE, align 8
  %176 = load i64, i64* @AUTH_POS_SHIFT, align 8
  %177 = shl i64 %175, %176
  %178 = load i64, i64* %5, align 8
  %179 = or i64 %178, %177
  store i64 %179, i64* %5, align 8
  br label %180

180:                                              ; preds = %174, %170
  %181 = load i64, i64* %3, align 8
  %182 = call i64 @IS_CCM(i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %180
  %185 = load i64, i64* @QCE_MAX_NONCE_WORDS, align 8
  %186 = load i64, i64* @AUTH_NONCE_NUM_WORDS_SHIFT, align 8
  %187 = shl i64 %185, %186
  %188 = load i64, i64* %5, align 8
  %189 = or i64 %188, %187
  store i64 %189, i64* %5, align 8
  br label %190

190:                                              ; preds = %184, %180
  %191 = load i64, i64* %3, align 8
  %192 = call i64 @IS_CBC(i64 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %206, label %194

194:                                              ; preds = %190
  %195 = load i64, i64* %3, align 8
  %196 = call i64 @IS_CTR(i64 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %206, label %198

198:                                              ; preds = %194
  %199 = load i64, i64* %3, align 8
  %200 = call i64 @IS_CCM(i64 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %198
  %203 = load i64, i64* %3, align 8
  %204 = call i64 @IS_CMAC(i64 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %202, %198, %194, %190
  %207 = load i32, i32* @AUTH_LAST_SHIFT, align 4
  %208 = call i64 @BIT(i32 %207)
  %209 = load i32, i32* @AUTH_FIRST_SHIFT, align 4
  %210 = call i64 @BIT(i32 %209)
  %211 = or i64 %208, %210
  %212 = load i64, i64* %5, align 8
  %213 = or i64 %212, %211
  store i64 %213, i64* %5, align 8
  br label %214

214:                                              ; preds = %206, %202
  %215 = load i64, i64* %5, align 8
  ret i64 %215
}

declare dso_local i64 @IS_AES(i64) #1

declare dso_local i64 @IS_CCM(i64) #1

declare dso_local i64 @IS_CMAC(i64) #1

declare dso_local i64 @IS_SHA1(i64) #1

declare dso_local i64 @IS_SHA1_HMAC(i64) #1

declare dso_local i64 @IS_SHA256(i64) #1

declare dso_local i64 @IS_SHA256_HMAC(i64) #1

declare dso_local i64 @IS_CBC(i64) #1

declare dso_local i64 @IS_CTR(i64) #1

declare dso_local i64 @IS_SHA(i64) #1

declare dso_local i64 @IS_SHA_HMAC(i64) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
