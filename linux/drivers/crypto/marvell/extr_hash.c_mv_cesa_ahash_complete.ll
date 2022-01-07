; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.ahash_request = type { i32, i64 }
%struct.mv_cesa_ahash_req = type { i8**, i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.mv_cesa_engine* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8** }
%struct.mv_cesa_engine = type { i32, i64 }

@CESA_DMA_REQ = common dso_local global i64 0, align 8
@CESA_TDMA_TYPE_MSK = common dso_local global i32 0, align 4
@CESA_TDMA_RESULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*)* @mv_cesa_ahash_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_cesa_ahash_complete(%struct.crypto_async_request* %0) #0 {
  %2 = alloca %struct.crypto_async_request*, align 8
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.mv_cesa_ahash_req*, align 8
  %5 = alloca %struct.mv_cesa_engine*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %2, align 8
  %11 = load %struct.crypto_async_request*, %struct.crypto_async_request** %2, align 8
  %12 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %11)
  store %struct.ahash_request* %12, %struct.ahash_request** %3, align 8
  %13 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %14 = call %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request* %13)
  store %struct.mv_cesa_ahash_req* %14, %struct.mv_cesa_ahash_req** %4, align 8
  %15 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %16 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %17, align 8
  store %struct.mv_cesa_engine* %18, %struct.mv_cesa_engine** %5, align 8
  %19 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %20 = call i32 @crypto_ahash_reqtfm(%struct.ahash_request* %19)
  %21 = call i32 @crypto_ahash_digestsize(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %23 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %22, i32 0, i32 3
  %24 = call i64 @mv_cesa_req_get_type(%struct.TYPE_12__* %23)
  %25 = load i64, i64* @CESA_DMA_REQ, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %79

27:                                               ; preds = %1
  %28 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %29 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CESA_TDMA_TYPE_MSK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @CESA_TDMA_RESULT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %27
  store i8** null, i8*** %8, align 8
  %40 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %41 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  store i8** %50, i8*** %8, align 8
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %69, %39
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = udiv i32 %53, 4
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load i8**, i8*** %8, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @cpu_to_le32(i8* %61)
  %63 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %64 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* %62, i8** %68, align 8
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %51

72:                                               ; preds = %51
  %73 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %74 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i8**, i8*** %8, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @memcpy(i64 %75, i8** %76, i32 %77)
  br label %170

79:                                               ; preds = %27, %1
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %99, %79
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  %83 = udiv i32 %82, 4
  %84 = icmp ult i32 %81, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  %87 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i64 @CESA_IVDIG(i32 %89)
  %91 = add nsw i64 %88, %90
  %92 = call i8* @readl_relaxed(i64 %91)
  %93 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %94 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %93, i32 0, i32 0
  %95 = load i8**, i8*** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  store i8* %92, i8** %98, align 8
  br label %99

99:                                               ; preds = %85
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %80

102:                                              ; preds = %80
  %103 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %104 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %169

107:                                              ; preds = %102
  %108 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %109 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %140

112:                                              ; preds = %107
  %113 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %114 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = bitcast i8* %116 to i8**
  store i8** %117, i8*** %9, align 8
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %136, %112
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %6, align 4
  %121 = udiv i32 %120, 4
  %122 = icmp ult i32 %119, %121
  br i1 %122, label %123, label %139

123:                                              ; preds = %118
  %124 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %125 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %124, i32 0, i32 0
  %126 = load i8**, i8*** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i8* @cpu_to_le32(i8* %130)
  %132 = load i8**, i8*** %9, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  store i8* %131, i8** %135, align 8
  br label %136

136:                                              ; preds = %123
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %118

139:                                              ; preds = %118
  br label %168

140:                                              ; preds = %107
  %141 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %142 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i8*
  %145 = bitcast i8* %144 to i32*
  store i32* %145, i32** %10, align 8
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %164, %140
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %6, align 4
  %149 = udiv i32 %148, 4
  %150 = icmp ult i32 %147, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %146
  %152 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %153 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %152, i32 0, i32 0
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @cpu_to_be32(i8* %158)
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %159, i32* %163, align 4
  br label %164

164:                                              ; preds = %151
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  br label %146

167:                                              ; preds = %146
  br label %168

168:                                              ; preds = %167, %139
  br label %169

169:                                              ; preds = %168, %102
  br label %170

170:                                              ; preds = %169, %72
  %171 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %172 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  %175 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %174, i32 0, i32 0
  %176 = call i32 @atomic_sub(i32 %173, i32* %175)
  ret void
}

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_digestsize(i32) #1

declare dso_local i32 @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i64 @mv_cesa_req_get_type(%struct.TYPE_12__*) #1

declare dso_local i8* @cpu_to_le32(i8*) #1

declare dso_local i32 @memcpy(i64, i8**, i32) #1

declare dso_local i8* @readl_relaxed(i64) #1

declare dso_local i64 @CESA_IVDIG(i32) #1

declare dso_local i32 @cpu_to_be32(i8*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
