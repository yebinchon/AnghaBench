; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_context_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_context_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_ahash_ctx = type { i32, i32, %struct.TYPE_5__, %struct.safexcel_crypto_priv* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.safexcel_crypto_priv = type { i32 }
%struct.safexcel_ahash_req = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.safexcel_command_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@CONTEXT_CONTROL_TYPE_HASH_OUT = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_RESTART_HASH = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_NO_FINISH_HASH = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_DIGEST_PRECOMPUTED = common dso_local global i32 0, align 4
@EIP197_COUNTER_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Input data is too big\0A\00", align 1
@CONTEXT_CONTROL_DIGEST_CNT = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_DIGEST_HMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_req*, %struct.safexcel_command_desc*)* @safexcel_context_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @safexcel_context_control(%struct.safexcel_ahash_ctx* %0, %struct.safexcel_ahash_req* %1, %struct.safexcel_command_desc* %2) #0 {
  %4 = alloca %struct.safexcel_ahash_ctx*, align 8
  %5 = alloca %struct.safexcel_ahash_req*, align 8
  %6 = alloca %struct.safexcel_command_desc*, align 8
  %7 = alloca %struct.safexcel_crypto_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.safexcel_ahash_ctx* %0, %struct.safexcel_ahash_ctx** %4, align 8
  store %struct.safexcel_ahash_req* %1, %struct.safexcel_ahash_req** %5, align 8
  store %struct.safexcel_command_desc* %2, %struct.safexcel_command_desc** %6, align 8
  %9 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %9, i32 0, i32 3
  %11 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %10, align 8
  store %struct.safexcel_crypto_priv* %11, %struct.safexcel_crypto_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %16 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %14
  store i32 %19, i32* %17, align 4
  %20 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %21 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %3
  %25 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %26 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i32, i32* @CONTEXT_CONTROL_TYPE_HASH_OUT, align 4
  %31 = load i32, i32* @CONTEXT_CONTROL_RESTART_HASH, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @CONTEXT_CONTROL_SIZE(i32 1)
  %34 = or i32 %32, %33
  %35 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %36 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 4
  br label %53

40:                                               ; preds = %24
  %41 = load i32, i32* @CONTEXT_CONTROL_TYPE_HASH_OUT, align 4
  %42 = load i32, i32* @CONTEXT_CONTROL_RESTART_HASH, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @CONTEXT_CONTROL_NO_FINISH_HASH, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @CONTEXT_CONTROL_SIZE(i32 1)
  %47 = or i32 %45, %46
  %48 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %49 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %40, %29
  br label %233

54:                                               ; preds = %3
  %55 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %62 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %65 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memcpy(i32* %60, i32 %63, i32 %66)
  %68 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %69 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %216

72:                                               ; preds = %54
  %73 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %74 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @CONTEXT_CONTROL_DIGEST_PRECOMPUTED, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %91, label %78

78:                                               ; preds = %72
  %79 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %80 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %85 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %88 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %83, %78, %72
  %92 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %93 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @EIP197_COUNTER_BLOCK_SIZE, align 4
  %96 = sdiv i32 %94, %95
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = and i64 %98, -4294967296
  %100 = trunc i64 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %91
  %104 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %105 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dev_warn(i32 %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %233

108:                                              ; preds = %91
  br label %109

109:                                              ; preds = %108, %83
  %110 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %111 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @CONTEXT_CONTROL_DIGEST_PRECOMPUTED, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %128, label %115

115:                                              ; preds = %109
  %116 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %117 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %115
  %121 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %122 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %125 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %123, %126
  br i1 %127, label %128, label %181

128:                                              ; preds = %120, %115, %109
  %129 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %130 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = ashr i32 %131, 2
  %133 = add nsw i32 %132, 1
  %134 = call i32 @CONTEXT_CONTROL_SIZE(i32 %133)
  %135 = load i32, i32* @CONTEXT_CONTROL_TYPE_HASH_OUT, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @CONTEXT_CONTROL_DIGEST_PRECOMPUTED, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %140 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %138
  store i32 %143, i32* %141, align 4
  %144 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %145 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %128
  %149 = load i32, i32* @CONTEXT_CONTROL_NO_FINISH_HASH, align 4
  %150 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %151 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %149
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %148, %128
  %156 = load i32, i32* @CONTEXT_CONTROL_DIGEST_CNT, align 4
  %157 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %158 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %156
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @cpu_to_le32(i32 %162)
  %164 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %165 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %171 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 2
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %169, i64 %174
  store i32 %163, i32* %175, align 4
  %176 = load i32, i32* @CONTEXT_CONTROL_DIGEST_PRECOMPUTED, align 4
  %177 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %178 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  %179 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %180 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %179, i32 0, i32 3
  store i32 0, i32* %180, align 4
  br label %215

181:                                              ; preds = %120
  %182 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %183 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %189 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = ashr i32 %190, 2
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %187, i64 %192
  %194 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %195 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %198 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @memcpy(i32* %193, i32 %196, i32 %199)
  %201 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %202 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = ashr i32 %203, 1
  %205 = call i32 @CONTEXT_CONTROL_SIZE(i32 %204)
  %206 = load i32, i32* @CONTEXT_CONTROL_TYPE_HASH_OUT, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @CONTEXT_CONTROL_DIGEST_HMAC, align 4
  %209 = or i32 %207, %208
  %210 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %211 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %209
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %181, %155
  br label %233

216:                                              ; preds = %54
  %217 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %5, align 8
  %218 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = ashr i32 %219, 2
  %221 = call i32 @CONTEXT_CONTROL_SIZE(i32 %220)
  %222 = load i32, i32* @CONTEXT_CONTROL_DIGEST_PRECOMPUTED, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @CONTEXT_CONTROL_TYPE_HASH_OUT, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @CONTEXT_CONTROL_NO_FINISH_HASH, align 4
  %227 = or i32 %225, %226
  %228 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %6, align 8
  %229 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %227
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %53, %103, %216, %215
  ret void
}

declare dso_local i32 @CONTEXT_CONTROL_SIZE(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
