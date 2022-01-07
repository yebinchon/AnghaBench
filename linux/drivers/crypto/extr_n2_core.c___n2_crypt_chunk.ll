; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c___n2_crypt_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c___n2_crypt_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.n2_crypto_chunk = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.spu_queue = type { i32 }
%struct.n2_cipher_context = type { i32, i32 }
%struct.cwq_initial_entry = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"queue_alloc() of %d fails\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@OPCODE_ENCRYPT = common dso_local global i32 0, align 4
@OPCODE_INPLACE_BIT = common dso_local global i32 0, align 4
@CONTROL_END_OF_BLOCK = common dso_local global i64 0, align 8
@HV_EOK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, %struct.n2_crypto_chunk*, %struct.spu_queue*, i32)* @__n2_crypt_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__n2_crypt_chunk(%struct.crypto_tfm* %0, %struct.n2_crypto_chunk* %1, %struct.spu_queue* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_tfm*, align 8
  %7 = alloca %struct.n2_crypto_chunk*, align 8
  %8 = alloca %struct.spu_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.n2_cipher_context*, align 8
  %11 = alloca %struct.cwq_initial_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %6, align 8
  store %struct.n2_crypto_chunk* %1, %struct.n2_crypto_chunk** %7, align 8
  store %struct.spu_queue* %2, %struct.spu_queue** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %15 = call %struct.n2_cipher_context* @crypto_tfm_ctx(%struct.crypto_tfm* %14)
  store %struct.n2_cipher_context* %15, %struct.n2_cipher_context** %10, align 8
  %16 = load %struct.spu_queue*, %struct.spu_queue** %8, align 8
  %17 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %7, align 8
  %18 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.cwq_initial_entry* @spu_queue_alloc(%struct.spu_queue* %16, i32 %19)
  store %struct.cwq_initial_entry* %20, %struct.cwq_initial_entry** %11, align 8
  %21 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %22 = icmp ne %struct.cwq_initial_entry* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %4
  %24 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %7, align 8
  %25 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %162

30:                                               ; preds = %4
  %31 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %7, align 8
  %32 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %7, align 8
  %35 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %33, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %12, align 4
  %42 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %7, align 8
  %43 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.n2_cipher_context*, %struct.n2_cipher_context** %10, align 8
  %49 = getelementptr inbounds %struct.n2_cipher_context, %struct.n2_cipher_context* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @OPCODE_ENCRYPT, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %30
  %56 = load i32, i32* @OPCODE_INPLACE_BIT, align 4
  br label %58

57:                                               ; preds = %30
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = or i32 %52, %59
  %61 = call i64 @control_word_base(i64 %47, i32 0, i32 %50, i32 0, i32 0, i32 0, i32 1, i32 0, i32 %51, i32 %60)
  %62 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %63 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %62, i32 0, i32 7
  store i64 %61, i64* %63, align 8
  %64 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %7, align 8
  %65 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %71 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %73 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %75 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %77 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.n2_cipher_context*, %struct.n2_cipher_context** %10, align 8
  %79 = getelementptr inbounds %struct.n2_cipher_context, %struct.n2_cipher_context* %78, i32 0, i32 0
  %80 = call i64 @__pa(i32* %79)
  %81 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %82 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %81, i32 0, i32 4
  store i64 %80, i64* %82, align 8
  %83 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %7, align 8
  %84 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %87 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %86, i32 0, i32 5
  store i64 %85, i64* %87, align 8
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %58
  br label %95

91:                                               ; preds = %58
  %92 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %7, align 8
  %93 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  br label %95

95:                                               ; preds = %91, %90
  %96 = phi i64 [ 0, %90 ], [ %94, %91 ]
  %97 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %98 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %97, i32 0, i32 6
  store i64 %96, i64* %98, align 8
  store i32 1, i32* %13, align 4
  br label %99

99:                                               ; preds = %142, %95
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %7, align 8
  %102 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %145

105:                                              ; preds = %99
  %106 = load %struct.spu_queue*, %struct.spu_queue** %8, align 8
  %107 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %108 = call %struct.cwq_initial_entry* @spu_queue_next(%struct.spu_queue* %106, %struct.cwq_initial_entry* %107)
  store %struct.cwq_initial_entry* %108, %struct.cwq_initial_entry** %11, align 8
  %109 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %7, align 8
  %110 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %109, i32 0, i32 3
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %116, 1
  %118 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %119 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %118, i32 0, i32 7
  store i64 %117, i64* %119, align 8
  %120 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %7, align 8
  %121 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %120, i32 0, i32 3
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %129 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %131 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %130, i32 0, i32 1
  store i64 0, i64* %131, align 8
  %132 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %133 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %132, i32 0, i32 2
  store i64 0, i64* %133, align 8
  %134 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %135 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %134, i32 0, i32 3
  store i64 0, i64* %135, align 8
  %136 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %137 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %136, i32 0, i32 4
  store i64 0, i64* %137, align 8
  %138 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %139 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %138, i32 0, i32 5
  store i64 0, i64* %139, align 8
  %140 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %141 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %140, i32 0, i32 6
  store i64 0, i64* %141, align 8
  br label %142

142:                                              ; preds = %105
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %13, align 4
  br label %99

145:                                              ; preds = %99
  %146 = load i64, i64* @CONTROL_END_OF_BLOCK, align 8
  %147 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %148 = getelementptr inbounds %struct.cwq_initial_entry, %struct.cwq_initial_entry* %147, i32 0, i32 7
  %149 = load i64, i64* %148, align 8
  %150 = or i64 %149, %146
  store i64 %150, i64* %148, align 8
  %151 = load %struct.spu_queue*, %struct.spu_queue** %8, align 8
  %152 = load %struct.cwq_initial_entry*, %struct.cwq_initial_entry** %11, align 8
  %153 = call i64 @spu_queue_submit(%struct.spu_queue* %151, %struct.cwq_initial_entry* %152)
  %154 = load i64, i64* @HV_EOK, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %145
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  br label %160

159:                                              ; preds = %145
  br label %160

160:                                              ; preds = %159, %156
  %161 = phi i32 [ %158, %156 ], [ 0, %159 ]
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %160, %23
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local %struct.n2_cipher_context* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.cwq_initial_entry* @spu_queue_alloc(%struct.spu_queue*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i64 @control_word_base(i64, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__pa(i32*) #1

declare dso_local %struct.cwq_initial_entry* @spu_queue_next(%struct.spu_queue*, %struct.cwq_initial_entry*) #1

declare dso_local i64 @spu_queue_submit(%struct.spu_queue*, %struct.cwq_initial_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
