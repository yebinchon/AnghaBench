; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_init_aead_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_init_aead_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64, i64, i64, i64 }
%struct.aead_edesc = type { i32, i32, i64, i64* }
%struct.crypto_aead = type { i32 }
%struct.caam_ctx = type { i32, i32, i32, i64*, i64* }

@HDR_SHARE_DEFER = common dso_local global i32 0, align 4
@HDR_REVERSE = common dso_local global i32 0, align 4
@LDST_SGF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.aead_edesc*, i32, i32)* @init_aead_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_aead_job(%struct.aead_request* %0, %struct.aead_edesc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.aead_edesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_aead*, align 8
  %10 = alloca %struct.caam_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %5, align 8
  store %struct.aead_edesc* %1, %struct.aead_edesc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %21 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %22 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %21)
  store %struct.crypto_aead* %22, %struct.crypto_aead** %9, align 8
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %24 = call %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead* %23)
  store %struct.caam_ctx* %24, %struct.caam_ctx** %10, align 8
  %25 = load %struct.caam_ctx*, %struct.caam_ctx** %10, align 8
  %26 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  %28 = load %struct.aead_edesc*, %struct.aead_edesc** %6, align 8
  %29 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %28, i32 0, i32 3
  %30 = load i64*, i64** %29, align 8
  store i64* %30, i64** %12, align 8
  store i32 0, i32* %18, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %4
  %34 = load %struct.caam_ctx*, %struct.caam_ctx** %10, align 8
  %35 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %34, i32 0, i32 4
  %36 = load i64*, i64** %35, align 8
  br label %41

37:                                               ; preds = %4
  %38 = load %struct.caam_ctx*, %struct.caam_ctx** %10, align 8
  %39 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %38, i32 0, i32 3
  %40 = load i64*, i64** %39, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i64* [ %36, %33 ], [ %40, %37 ]
  store i64* %42, i64** %20, align 8
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.caam_ctx*, %struct.caam_ctx** %10, align 8
  %47 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.caam_ctx*, %struct.caam_ctx** %10, align 8
  %51 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %48, %45 ], [ %52, %49 ]
  store i32 %54, i32* %19, align 4
  %55 = load i64*, i64** %20, align 8
  %56 = call i32 @desc_len(i64* %55)
  store i32 %56, i32* %17, align 4
  %57 = load i64*, i64** %12, align 8
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* @HDR_SHARE_DEFER, align 4
  %61 = load i32, i32* @HDR_REVERSE, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @init_job_desc_shared(i64* %57, i32 %58, i32 %59, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %53
  %67 = load %struct.aead_edesc*, %struct.aead_edesc** %6, align 8
  %68 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %73 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @sg_dma_address(i64 %74)
  br label %77

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %71
  %78 = phi i32 [ %75, %71 ], [ 0, %76 ]
  store i32 %78, i32* %16, align 4
  store i64 0, i64* %14, align 8
  br label %91

79:                                               ; preds = %53
  %80 = load %struct.aead_edesc*, %struct.aead_edesc** %6, align 8
  %81 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %16, align 4
  %83 = load %struct.aead_edesc*, %struct.aead_edesc** %6, align 8
  %84 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %18, align 4
  %90 = load i64, i64* @LDST_SGF, align 8
  store i64 %90, i64* %14, align 8
  br label %91

91:                                               ; preds = %79, %77
  %92 = load i64*, i64** %12, align 8
  %93 = load i32, i32* %16, align 4
  %94 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %95 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %98 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %96, %99
  %101 = load i64, i64* %14, align 8
  %102 = call i32 @append_seq_in_ptr(i64* %92, i32 %93, i64 %100, i64 %101)
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %15, align 4
  %104 = load i64, i64* %14, align 8
  store i64 %104, i64* %13, align 8
  %105 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %106 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %109 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %107, %110
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %144

115:                                              ; preds = %91
  %116 = load %struct.aead_edesc*, %struct.aead_edesc** %6, align 8
  %117 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  store i32 0, i32* %15, align 4
  store i64 0, i64* %13, align 8
  br label %143

121:                                              ; preds = %115
  %122 = load %struct.aead_edesc*, %struct.aead_edesc** %6, align 8
  %123 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %128 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @sg_dma_address(i64 %129)
  store i32 %130, i32* %15, align 4
  store i64 0, i64* %13, align 8
  br label %142

131:                                              ; preds = %121
  %132 = load %struct.aead_edesc*, %struct.aead_edesc** %6, align 8
  %133 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = load i32, i32* %18, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 4
  %139 = add i64 %135, %138
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %15, align 4
  %141 = load i64, i64* @LDST_SGF, align 8
  store i64 %141, i64* %13, align 8
  br label %142

142:                                              ; preds = %131, %126
  br label %143

143:                                              ; preds = %142, %120
  br label %144

144:                                              ; preds = %143, %91
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %144
  %148 = load i64*, i64** %12, align 8
  %149 = load i32, i32* %15, align 4
  %150 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %151 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %154 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %152, %155
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %156, %158
  %160 = load i64, i64* %13, align 8
  %161 = call i32 @append_seq_out_ptr(i64* %148, i32 %149, i64 %159, i64 %160)
  br label %177

162:                                              ; preds = %144
  %163 = load i64*, i64** %12, align 8
  %164 = load i32, i32* %15, align 4
  %165 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %166 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %169 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %167, %170
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = sub nsw i64 %171, %173
  %175 = load i64, i64* %13, align 8
  %176 = call i32 @append_seq_out_ptr(i64* %163, i32 %164, i64 %174, i64 %175)
  br label %177

177:                                              ; preds = %162, %147
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @desc_len(i64*) #1

declare dso_local i32 @init_job_desc_shared(i64*, i32, i32, i32) #1

declare dso_local i32 @sg_dma_address(i64) #1

declare dso_local i32 @append_seq_in_ptr(i64*, i32, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @append_seq_out_ptr(i64*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
