; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.crypto_async_request*, %struct.crypto_async_request*, i32, i32 }
%struct.crypto_async_request = type { i32 (%struct.crypto_async_request*, i32)*, i32 }
%struct.safexcel_context = type { i32 (%struct.crypto_async_request.0*, i32, i32*, i32*)* }
%struct.crypto_async_request.0 = type opaque

@EINPROGRESS = common dso_local global i32 0, align 4
@EIP197_HIA_xDR_PREP_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @safexcel_dequeue(%struct.safexcel_crypto_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.safexcel_crypto_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_async_request*, align 8
  %6 = alloca %struct.crypto_async_request*, align 8
  %7 = alloca %struct.safexcel_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %15 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load %struct.crypto_async_request*, %struct.crypto_async_request** %20, align 8
  store %struct.crypto_async_request* %21, %struct.crypto_async_request** %5, align 8
  %22 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %23 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load %struct.crypto_async_request*, %struct.crypto_async_request** %28, align 8
  store %struct.crypto_async_request* %29, %struct.crypto_async_request** %6, align 8
  %30 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %31 = icmp ne %struct.crypto_async_request* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %85

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %117, %118
  %35 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %36 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 5
  %42 = call i32 @spin_lock_bh(i32* %41)
  %43 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %44 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 6
  %50 = call %struct.crypto_async_request* @crypto_get_backlog(i32* %49)
  store %struct.crypto_async_request* %50, %struct.crypto_async_request** %6, align 8
  %51 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %52 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 6
  %58 = call %struct.crypto_async_request* @crypto_dequeue_request(i32* %57)
  store %struct.crypto_async_request* %58, %struct.crypto_async_request** %5, align 8
  %59 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %60 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 5
  %66 = call i32 @spin_unlock_bh(i32* %65)
  %67 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %68 = icmp ne %struct.crypto_async_request* %67, null
  br i1 %68, label %84, label %69

69:                                               ; preds = %34
  %70 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %71 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  store %struct.crypto_async_request* null, %struct.crypto_async_request** %76, align 8
  %77 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %78 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  store %struct.crypto_async_request* null, %struct.crypto_async_request** %83, align 8
  br label %144

84:                                               ; preds = %34
  br label %85

85:                                               ; preds = %84, %32
  %86 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %87 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call %struct.safexcel_context* @crypto_tfm_ctx(i32 %88)
  store %struct.safexcel_context* %89, %struct.safexcel_context** %7, align 8
  %90 = load %struct.safexcel_context*, %struct.safexcel_context** %7, align 8
  %91 = getelementptr inbounds %struct.safexcel_context, %struct.safexcel_context* %90, i32 0, i32 0
  %92 = load i32 (%struct.crypto_async_request.0*, i32, i32*, i32*)*, i32 (%struct.crypto_async_request.0*, i32, i32*, i32*)** %91, align 8
  %93 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %94 = bitcast %struct.crypto_async_request* %93 to %struct.crypto_async_request.0*
  %95 = load i32, i32* %4, align 4
  %96 = call i32 %92(%struct.crypto_async_request.0* %94, i32 %95, i32* %12, i32* %13)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  br label %127

100:                                              ; preds = %85
  %101 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %102 = icmp ne %struct.crypto_async_request* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %105 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %104, i32 0, i32 0
  %106 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %105, align 8
  %107 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %108 = load i32, i32* @EINPROGRESS, align 4
  %109 = sub nsw i32 0, %108
  %110 = call i32 %106(%struct.crypto_async_request* %107, i32 %109)
  br label %111

111:                                              ; preds = %103, %100
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  br label %34

118:                                              ; preds = %114, %111
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %34

127:                                              ; preds = %99
  %128 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %129 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %130 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %129, i32 0, i32 1
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  store %struct.crypto_async_request* %128, %struct.crypto_async_request** %135, align 8
  %136 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %137 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %138 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %137, i32 0, i32 1
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  store %struct.crypto_async_request* %136, %struct.crypto_async_request** %143, align 8
  br label %144

144:                                              ; preds = %127, %69
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  br label %222

148:                                              ; preds = %144
  %149 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %150 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %149, i32 0, i32 1
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = call i32 @spin_lock_bh(i32* %155)
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %159 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %158, i32 0, i32 1
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, %157
  store i32 %166, i32* %164, align 8
  %167 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %168 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %167, i32 0, i32 1
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %187, label %176

176:                                              ; preds = %148
  %177 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %178 = load i32, i32* %4, align 4
  %179 = call i32 @safexcel_try_push_requests(%struct.safexcel_crypto_priv* %177, i32 %178)
  %180 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %181 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %180, i32 0, i32 1
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = load i32, i32* %4, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  store i32 1, i32* %186, align 4
  br label %187

187:                                              ; preds = %176, %148
  %188 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %189 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %188, i32 0, i32 1
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %189, align 8
  %191 = load i32, i32* %4, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 2
  %195 = call i32 @spin_unlock_bh(i32* %194)
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %198 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = mul nsw i32 %196, %200
  %202 = shl i32 %201, 2
  %203 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %204 = load i32, i32* %4, align 4
  %205 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %203, i32 %204)
  %206 = load i64, i64* @EIP197_HIA_xDR_PREP_COUNT, align 8
  %207 = add nsw i64 %205, %206
  %208 = call i32 @writel(i32 %202, i64 %207)
  %209 = load i32, i32* %10, align 4
  %210 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %211 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 %209, %213
  %215 = shl i32 %214, 2
  %216 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %217 = load i32, i32* %4, align 4
  %218 = call i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv* %216, i32 %217)
  %219 = load i64, i64* @EIP197_HIA_xDR_PREP_COUNT, align 8
  %220 = add nsw i64 %218, %219
  %221 = call i32 @writel(i32 %215, i64 %220)
  br label %222

222:                                              ; preds = %187, %147
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_get_backlog(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_dequeue_request(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.safexcel_context* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @safexcel_try_push_requests(%struct.safexcel_crypto_priv*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv*, i32) #1

declare dso_local i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
