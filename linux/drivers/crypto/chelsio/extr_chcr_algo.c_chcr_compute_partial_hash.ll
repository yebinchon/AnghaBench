; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_compute_partial_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_compute_partial_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha1_state = type { i32 }
%struct.sha256_state = type { i32 }
%struct.sha512_state = type { i32 }

@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA1_BLOCK_SIZE = common dso_local global i32 0, align 4
@SHA224_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA256_BLOCK_SIZE = common dso_local global i32 0, align 4
@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA384_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA512_BLOCK_SIZE = common dso_local global i32 0, align 4
@SHA512_DIGEST_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown digest size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i8*, i8*, i32)* @chcr_compute_partial_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_compute_partial_hash(%struct.shash_desc* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sha1_state, align 4
  %10 = alloca %struct.sha256_state, align 4
  %11 = alloca %struct.sha512_state, align 4
  %12 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %4
  %17 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %18 = call i64 @crypto_shash_init(%struct.shash_desc* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %35

21:                                               ; preds = %16
  %22 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @SHA1_BLOCK_SIZE, align 4
  %25 = call i64 @crypto_shash_update(%struct.shash_desc* %22, i8* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %33

28:                                               ; preds = %21
  %29 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %30 = bitcast %struct.sha1_state* %9 to i8*
  %31 = call i32 @crypto_shash_export(%struct.shash_desc* %29, i8* %30)
  %32 = sext i32 %31 to i64
  br label %33

33:                                               ; preds = %28, %27
  %34 = phi i64 [ %25, %27 ], [ %32, %28 ]
  br label %35

35:                                               ; preds = %33, %20
  %36 = phi i64 [ %18, %20 ], [ %34, %33 ]
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %9, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %42 = call i32 @memcpy(i8* %38, i32 %40, i32 %41)
  br label %176

43:                                               ; preds = %4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @SHA224_DIGEST_SIZE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %49 = call i64 @crypto_shash_init(%struct.shash_desc* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %66

52:                                               ; preds = %47
  %53 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @SHA256_BLOCK_SIZE, align 4
  %56 = call i64 @crypto_shash_update(%struct.shash_desc* %53, i8* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %64

59:                                               ; preds = %52
  %60 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %61 = bitcast %struct.sha256_state* %10 to i8*
  %62 = call i32 @crypto_shash_export(%struct.shash_desc* %60, i8* %61)
  %63 = sext i32 %62 to i64
  br label %64

64:                                               ; preds = %59, %58
  %65 = phi i64 [ %56, %58 ], [ %63, %59 ]
  br label %66

66:                                               ; preds = %64, %51
  %67 = phi i64 [ %49, %51 ], [ %65, %64 ]
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %12, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %10, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  %73 = call i32 @memcpy(i8* %69, i32 %71, i32 %72)
  br label %175

74:                                               ; preds = %43
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %105

78:                                               ; preds = %74
  %79 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %80 = call i64 @crypto_shash_init(%struct.shash_desc* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %97

83:                                               ; preds = %78
  %84 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* @SHA256_BLOCK_SIZE, align 4
  %87 = call i64 @crypto_shash_update(%struct.shash_desc* %84, i8* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %95

90:                                               ; preds = %83
  %91 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %92 = bitcast %struct.sha256_state* %10 to i8*
  %93 = call i32 @crypto_shash_export(%struct.shash_desc* %91, i8* %92)
  %94 = sext i32 %93 to i64
  br label %95

95:                                               ; preds = %90, %89
  %96 = phi i64 [ %87, %89 ], [ %94, %90 ]
  br label %97

97:                                               ; preds = %95, %82
  %98 = phi i64 [ %80, %82 ], [ %96, %95 ]
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %12, align 4
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %10, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  %104 = call i32 @memcpy(i8* %100, i32 %102, i32 %103)
  br label %174

105:                                              ; preds = %74
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @SHA384_DIGEST_SIZE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %136

109:                                              ; preds = %105
  %110 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %111 = call i64 @crypto_shash_init(%struct.shash_desc* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %128

114:                                              ; preds = %109
  %115 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = load i32, i32* @SHA512_BLOCK_SIZE, align 4
  %118 = call i64 @crypto_shash_update(%struct.shash_desc* %115, i8* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %126

121:                                              ; preds = %114
  %122 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %123 = bitcast %struct.sha512_state* %11 to i8*
  %124 = call i32 @crypto_shash_export(%struct.shash_desc* %122, i8* %123)
  %125 = sext i32 %124 to i64
  br label %126

126:                                              ; preds = %121, %120
  %127 = phi i64 [ %118, %120 ], [ %125, %121 ]
  br label %128

128:                                              ; preds = %126, %113
  %129 = phi i64 [ %111, %113 ], [ %127, %126 ]
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %12, align 4
  %131 = load i8*, i8** %7, align 8
  %132 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %11, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  %135 = call i32 @memcpy(i8* %131, i32 %133, i32 %134)
  br label %173

136:                                              ; preds = %105
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %167

140:                                              ; preds = %136
  %141 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %142 = call i64 @crypto_shash_init(%struct.shash_desc* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %159

145:                                              ; preds = %140
  %146 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = load i32, i32* @SHA512_BLOCK_SIZE, align 4
  %149 = call i64 @crypto_shash_update(%struct.shash_desc* %146, i8* %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %157

152:                                              ; preds = %145
  %153 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %154 = bitcast %struct.sha512_state* %11 to i8*
  %155 = call i32 @crypto_shash_export(%struct.shash_desc* %153, i8* %154)
  %156 = sext i32 %155 to i64
  br label %157

157:                                              ; preds = %152, %151
  %158 = phi i64 [ %149, %151 ], [ %156, %152 ]
  br label %159

159:                                              ; preds = %157, %144
  %160 = phi i64 [ %142, %144 ], [ %158, %157 ]
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %12, align 4
  %162 = load i8*, i8** %7, align 8
  %163 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %11, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  %166 = call i32 @memcpy(i8* %162, i32 %164, i32 %165)
  br label %172

167:                                              ; preds = %136
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %167, %159
  br label %173

173:                                              ; preds = %172, %128
  br label %174

174:                                              ; preds = %173, %97
  br label %175

175:                                              ; preds = %174, %66
  br label %176

176:                                              ; preds = %175, %35
  %177 = load i32, i32* %12, align 4
  ret i32 %177
}

declare dso_local i64 @crypto_shash_init(%struct.shash_desc*) #1

declare dso_local i64 @crypto_shash_update(%struct.shash_desc*, i8*, i32) #1

declare dso_local i32 @crypto_shash_export(%struct.shash_desc*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
