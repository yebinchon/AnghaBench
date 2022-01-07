; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_verify_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_verify_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity_io = type { i32, %struct.bvec_iter, i64, %struct.dm_verity* }
%struct.bvec_iter = type { i32 }
%struct.dm_verity = type { i32, i32 }
%struct.crypto_wait = type { i32 }
%struct.ahash_request = type { i32 }

@verity_bv_zero = common dso_local global i32 0, align 4
@DM_VERITY_BLOCK_TYPE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_verity_io*)* @verity_verify_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verity_verify_io(%struct.dm_verity_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_verity_io*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_verity*, align 8
  %6 = alloca %struct.bvec_iter, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_wait, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ahash_request*, align 8
  store %struct.dm_verity_io* %0, %struct.dm_verity_io** %3, align 8
  %12 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %13 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %12, i32 0, i32 3
  %14 = load %struct.dm_verity*, %struct.dm_verity** %13, align 8
  store %struct.dm_verity* %14, %struct.dm_verity** %5, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %171, %1
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %18 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %174

21:                                               ; preds = %15
  %22 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %23 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  store i64 %27, i64* %10, align 8
  %28 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %29 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %30 = call %struct.ahash_request* @verity_io_hash_req(%struct.dm_verity* %28, %struct.dm_verity_io* %29)
  store %struct.ahash_request* %30, %struct.ahash_request** %11, align 8
  %31 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %32 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %21
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %38 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @test_bit(i64 %36, i32 %39)
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %45 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %46 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %47 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %46, i32 0, i32 1
  %48 = call i32 @verity_bv_skip_block(%struct.dm_verity* %44, %struct.dm_verity_io* %45, %struct.bvec_iter* %47)
  br label %171

49:                                               ; preds = %35, %21
  %50 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %51 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %54 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %55 = call i32 @verity_io_want_digest(%struct.dm_verity* %53, %struct.dm_verity_io* %54)
  %56 = call i32 @verity_hash_for_block(%struct.dm_verity* %50, %struct.dm_verity_io* %51, i64 %52, i32 %55, i32* %4)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %2, align 4
  br label %175

64:                                               ; preds = %49
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %69 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %70 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %71 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %70, i32 0, i32 1
  %72 = load i32, i32* @verity_bv_zero, align 4
  %73 = call i32 @verity_for_bv_block(%struct.dm_verity* %68, %struct.dm_verity_io* %69, %struct.bvec_iter* %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %2, align 4
  br label %175

81:                                               ; preds = %67
  br label %171

82:                                               ; preds = %64
  %83 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %84 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %85 = call i32 @verity_hash_init(%struct.dm_verity* %83, %struct.ahash_request* %84, %struct.crypto_wait* %8)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %2, align 4
  br label %175

93:                                               ; preds = %82
  %94 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %95 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %94, i32 0, i32 1
  %96 = bitcast %struct.bvec_iter* %6 to i8*
  %97 = bitcast %struct.bvec_iter* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 4, i1 false)
  %98 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %99 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %100 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %101 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %100, i32 0, i32 1
  %102 = call i32 @verity_for_io_block(%struct.dm_verity* %98, %struct.dm_verity_io* %99, %struct.bvec_iter* %101, %struct.crypto_wait* %8)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %93
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %2, align 4
  br label %175

110:                                              ; preds = %93
  %111 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %112 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %113 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %114 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %115 = call i32 @verity_io_real_digest(%struct.dm_verity* %113, %struct.dm_verity_io* %114)
  %116 = call i32 @verity_hash_final(%struct.dm_verity* %111, %struct.ahash_request* %112, i32 %115, %struct.crypto_wait* %8)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %110
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %2, align 4
  br label %175

124:                                              ; preds = %110
  %125 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %126 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %127 = call i32 @verity_io_real_digest(%struct.dm_verity* %125, %struct.dm_verity_io* %126)
  %128 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %129 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %130 = call i32 @verity_io_want_digest(%struct.dm_verity* %128, %struct.dm_verity_io* %129)
  %131 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %132 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @memcmp(i32 %127, i32 %130, i32 %133)
  %135 = icmp eq i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i64 @likely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %124
  %140 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %141 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load i64, i64* %10, align 8
  %146 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %147 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @set_bit(i64 %145, i32 %148)
  br label %150

150:                                              ; preds = %144, %139
  br label %171

151:                                              ; preds = %124
  %152 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %153 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %154 = load i32, i32* @DM_VERITY_BLOCK_TYPE_DATA, align 4
  %155 = load i64, i64* %10, align 8
  %156 = call i64 @verity_fec_decode(%struct.dm_verity* %152, %struct.dm_verity_io* %153, i32 %154, i64 %155, i32* null, %struct.bvec_iter* %6)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %171

159:                                              ; preds = %151
  %160 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %161 = load i32, i32* @DM_VERITY_BLOCK_TYPE_DATA, align 4
  %162 = load i64, i64* %10, align 8
  %163 = call i64 @verity_handle_err(%struct.dm_verity* %160, i32 %161, i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i32, i32* @EIO, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %175

168:                                              ; preds = %159
  br label %169

169:                                              ; preds = %168
  br label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %170, %158, %150, %81, %43
  %172 = load i32, i32* %7, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %15

174:                                              ; preds = %15
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %174, %165, %122, %108, %91, %79, %62
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.ahash_request* @verity_io_hash_req(%struct.dm_verity*, %struct.dm_verity_io*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @verity_bv_skip_block(%struct.dm_verity*, %struct.dm_verity_io*, %struct.bvec_iter*) #1

declare dso_local i32 @verity_hash_for_block(%struct.dm_verity*, %struct.dm_verity_io*, i64, i32, i32*) #1

declare dso_local i32 @verity_io_want_digest(%struct.dm_verity*, %struct.dm_verity_io*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @verity_for_bv_block(%struct.dm_verity*, %struct.dm_verity_io*, %struct.bvec_iter*, i32) #1

declare dso_local i32 @verity_hash_init(%struct.dm_verity*, %struct.ahash_request*, %struct.crypto_wait*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @verity_for_io_block(%struct.dm_verity*, %struct.dm_verity_io*, %struct.bvec_iter*, %struct.crypto_wait*) #1

declare dso_local i32 @verity_hash_final(%struct.dm_verity*, %struct.ahash_request*, i32, %struct.crypto_wait*) #1

declare dso_local i32 @verity_io_real_digest(%struct.dm_verity*, %struct.dm_verity_io*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i64 @verity_fec_decode(%struct.dm_verity*, %struct.dm_verity_io*, i32, i64, i32*, %struct.bvec_iter*) #1

declare dso_local i64 @verity_handle_err(%struct.dm_verity*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
