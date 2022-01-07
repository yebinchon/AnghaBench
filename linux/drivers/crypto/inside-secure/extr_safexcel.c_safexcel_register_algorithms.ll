; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_register_algorithms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_register_algorithms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_6__, %struct.safexcel_crypto_priv* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.safexcel_crypto_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@safexcel_algs = common dso_local global %struct.TYPE_7__** null, align 8
@SAFEXCEL_ALG_TYPE_SKCIPHER = common dso_local global i64 0, align 8
@SAFEXCEL_ALG_TYPE_AEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safexcel_crypto_priv*)* @safexcel_register_algorithms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_register_algorithms(%struct.safexcel_crypto_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.safexcel_crypto_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %94, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_7__** %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %97

12:                                               ; preds = %7
  %13 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %14 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %14, i64 %16
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  store %struct.safexcel_crypto_priv* %13, %struct.safexcel_crypto_priv** %19, align 8
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %20, i64 %22
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %28 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %26, %30
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %32, i64 %34
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %31, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %12
  br label %94

41:                                               ; preds = %12
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %42, i64 %44
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SAFEXCEL_ALG_TYPE_SKCIPHER, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %41
  %52 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %52, i64 %54
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = call i32 @crypto_register_skcipher(i32* %58)
  store i32 %59, i32* %6, align 4
  br label %89

60:                                               ; preds = %41
  %61 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %61, i64 %63
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SAFEXCEL_ALG_TYPE_AEAD, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %60
  %71 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %71, i64 %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = call i32 @crypto_register_aead(i32* %77)
  store i32 %78, i32* %6, align 4
  br label %88

79:                                               ; preds = %60
  %80 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %80, i64 %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = call i32 @crypto_register_ahash(i32* %86)
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %79, %70
  br label %89

89:                                               ; preds = %88, %51
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %98

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %40
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %7

97:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %179

98:                                               ; preds = %92
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %174, %98
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %177

103:                                              ; preds = %99
  %104 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %104, i64 %106
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %112 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %110, %114
  %116 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %116, i64 %118
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %115, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %103
  br label %174

125:                                              ; preds = %103
  %126 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %126, i64 %128
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @SAFEXCEL_ALG_TYPE_SKCIPHER, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %125
  %136 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %136, i64 %138
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = call i32 @crypto_unregister_skcipher(i32* %142)
  br label %173

144:                                              ; preds = %125
  %145 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %145, i64 %147
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @SAFEXCEL_ALG_TYPE_AEAD, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %144
  %155 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %155, i64 %157
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = call i32 @crypto_unregister_aead(i32* %161)
  br label %172

163:                                              ; preds = %144
  %164 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @safexcel_algs, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %164, i64 %166
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = call i32 @crypto_unregister_ahash(i32* %170)
  br label %172

172:                                              ; preds = %163, %154
  br label %173

173:                                              ; preds = %172, %135
  br label %174

174:                                              ; preds = %173, %124
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  br label %99

177:                                              ; preds = %99
  %178 = load i32, i32* %6, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %177, %97
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__**) #1

declare dso_local i32 @crypto_register_skcipher(i32*) #1

declare dso_local i32 @crypto_register_aead(i32*) #1

declare dso_local i32 @crypto_register_ahash(i32*) #1

declare dso_local i32 @crypto_unregister_skcipher(i32*) #1

declare dso_local i32 @crypto_unregister_aead(i32*) #1

declare dso_local i32 @crypto_unregister_ahash(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
