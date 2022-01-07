; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_update_aead_mlli_nents.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_update_aead_mlli_nents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i64 }
%struct.aead_request = type { i64, i64 }
%struct.aead_req_ctx = type { i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64 }

@CC_DMA_BUF_MLLI = common dso_local global i64 0, align 8
@LLI_ENTRY_BYTE_SIZE = common dso_local global i32 0, align 4
@DRV_CRYPTO_DIRECTION_DECRYPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_drvdata*, %struct.aead_request*)* @cc_update_aead_mlli_nents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_update_aead_mlli_nents(%struct.cc_drvdata* %0, %struct.aead_request* %1) #0 {
  %3 = alloca %struct.cc_drvdata*, align 8
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.aead_req_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %3, align 8
  store %struct.aead_request* %1, %struct.aead_request** %4, align 8
  %7 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %8 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %7)
  store %struct.aead_req_ctx* %8, %struct.aead_req_ctx** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %16 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i64 %17, i64* %20, align 8
  %21 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @LLI_ENTRY_BYTE_SIZE, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %14, %2
  %28 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %169

33:                                               ; preds = %27
  %34 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %35 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %38 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %80

41:                                               ; preds = %33
  %42 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %50 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i64 %54, i64* %57, align 8
  %58 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i64 %61, i64* %64, align 8
  %65 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %66 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %41
  %70 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %71 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, %73
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %69, %41
  br label %168

80:                                               ; preds = %33
  %81 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %82 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DRV_CRYPTO_DIRECTION_DECRYPT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %127

87:                                               ; preds = %80
  %88 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %89 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %95 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i64 %93, i64* %96, align 8
  %97 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %98 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %102 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @LLI_ENTRY_BYTE_SIZE, align 4
  %106 = mul nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %100, %107
  %109 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %110 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i64 %108, i64* %111, align 8
  %112 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %113 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %87
  %117 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %118 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %122 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, %120
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %116, %87
  br label %167

127:                                              ; preds = %80
  %128 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %129 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %130, %132
  %134 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %135 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  store i64 %133, i64* %136, align 8
  %137 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %138 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %142 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @LLI_ENTRY_BYTE_SIZE, align 4
  %146 = mul nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %140, %147
  %149 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %150 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store i64 %148, i64* %151, align 8
  %152 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %153 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %127
  %157 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %158 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %162 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, %160
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %156, %127
  br label %167

167:                                              ; preds = %166, %126
  br label %168

168:                                              ; preds = %167, %79
  br label %169

169:                                              ; preds = %168, %27
  ret void
}

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
