; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_compute_chunks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_compute_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32, i32, i32 }
%struct.n2_request_context = type { i32, %struct.n2_crypto_chunk, %struct.ablkcipher_walk }
%struct.n2_crypto_chunk = type { i64, i64, i64, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.ablkcipher_walk = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@N2_CHUNK_ARR_LEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*)* @n2_compute_chunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2_compute_chunks(%struct.ablkcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca %struct.n2_request_context*, align 8
  %5 = alloca %struct.ablkcipher_walk*, align 8
  %6 = alloca %struct.n2_crypto_chunk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %3, align 8
  %16 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %17 = call %struct.n2_request_context* @ablkcipher_request_ctx(%struct.ablkcipher_request* %16)
  store %struct.n2_request_context* %17, %struct.n2_request_context** %4, align 8
  %18 = load %struct.n2_request_context*, %struct.n2_request_context** %4, align 8
  %19 = getelementptr inbounds %struct.n2_request_context, %struct.n2_request_context* %18, i32 0, i32 2
  store %struct.ablkcipher_walk* %19, %struct.ablkcipher_walk** %5, align 8
  %20 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %21 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %22 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %25 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %28 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ablkcipher_walk_init(%struct.ablkcipher_walk* %20, i32 %23, i32 %26, i32 %29)
  %31 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %32 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %33 = call i32 @ablkcipher_walk_phys(%struct.ablkcipher_request* %31, %struct.ablkcipher_walk* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %2, align 4
  br label %204

38:                                               ; preds = %1
  %39 = load %struct.n2_request_context*, %struct.n2_request_context** %4, align 8
  %40 = getelementptr inbounds %struct.n2_request_context, %struct.n2_request_context* %39, i32 0, i32 0
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.n2_request_context*, %struct.n2_request_context** %4, align 8
  %43 = getelementptr inbounds %struct.n2_request_context, %struct.n2_request_context* %42, i32 0, i32 1
  store %struct.n2_crypto_chunk* %43, %struct.n2_crypto_chunk** %6, align 8
  %44 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %45 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %44, i32 0, i32 4
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %48 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %50 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %52 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  store i32 0, i32* %9, align 4
  store i64 -1, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %184, %38
  %54 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %55 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %185

58:                                               ; preds = %53
  %59 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %60 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @page_to_phys(i32 %62)
  %64 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %65 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %63, %67
  store i64 %68, i64* %13, align 8
  %69 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %70 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @page_to_phys(i32 %72)
  %74 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %75 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %73, %77
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %12, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %85 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @cipher_descriptor_len(i32 %83, i32 %86)
  store i32 %87, i32* %15, align 4
  %88 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %89 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %135

92:                                               ; preds = %58
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %114, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* %7, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %114, label %103

103:                                              ; preds = %99, %96
  %104 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %105 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @N2_CHUNK_ARR_LEN, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %114, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %15, align 4
  %112 = add i32 %110, %111
  %113 = icmp ugt i32 %112, 65536
  br i1 %113, label %114, label %134

114:                                              ; preds = %109, %103, %99, %92
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %117 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %116, i32 0, i32 3
  store i64 %115, i64* %117, align 8
  %118 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %119 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %118, i32 0, i32 4
  %120 = load %struct.n2_request_context*, %struct.n2_request_context** %4, align 8
  %121 = getelementptr inbounds %struct.n2_request_context, %struct.n2_request_context* %120, i32 0, i32 0
  %122 = call i32 @list_add_tail(i32* %119, i32* %121)
  %123 = load i32, i32* @GFP_ATOMIC, align 4
  %124 = call %struct.n2_crypto_chunk* @kzalloc(i32 48, i32 %123)
  store %struct.n2_crypto_chunk* %124, %struct.n2_crypto_chunk** %6, align 8
  %125 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %126 = icmp ne %struct.n2_crypto_chunk* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %114
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %10, align 4
  br label %185

130:                                              ; preds = %114
  %131 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %132 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %131, i32 0, i32 4
  %133 = call i32 @INIT_LIST_HEAD(i32* %132)
  br label %134

134:                                              ; preds = %130, %109
  br label %135

135:                                              ; preds = %134, %58
  %136 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %137 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i64, i64* %12, align 8
  %142 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %143 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  store i32 0, i32* %8, align 4
  br label %144

144:                                              ; preds = %140, %135
  %145 = load i64, i64* %13, align 8
  %146 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %147 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %146, i32 0, i32 5
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %150 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  store i64 %145, i64* %153, align 8
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %156 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %155, i32 0, i32 5
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %159 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  store i32 %154, i32* %162, align 8
  %163 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %164 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %164, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = add i64 %167, %169
  store i64 %170, i64* %7, align 8
  %171 = load i32, i32* %14, align 4
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %8, align 4
  %174 = add i32 %173, %172
  store i32 %174, i32* %8, align 4
  %175 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %176 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %15, align 4
  %179 = sub nsw i32 %177, %178
  %180 = call i32 @ablkcipher_walk_done(%struct.ablkcipher_request* %175, %struct.ablkcipher_walk* %176, i32 %179)
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %144
  br label %185

184:                                              ; preds = %144
  br label %53

185:                                              ; preds = %183, %127, %53
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %202, label %188

188:                                              ; preds = %185
  %189 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %190 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %188
  %194 = load i64, i64* %7, align 8
  %195 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %196 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %195, i32 0, i32 3
  store i64 %194, i64* %196, align 8
  %197 = load %struct.n2_crypto_chunk*, %struct.n2_crypto_chunk** %6, align 8
  %198 = getelementptr inbounds %struct.n2_crypto_chunk, %struct.n2_crypto_chunk* %197, i32 0, i32 4
  %199 = load %struct.n2_request_context*, %struct.n2_request_context** %4, align 8
  %200 = getelementptr inbounds %struct.n2_request_context, %struct.n2_request_context* %199, i32 0, i32 0
  %201 = call i32 @list_add_tail(i32* %198, i32* %200)
  br label %202

202:                                              ; preds = %193, %188, %185
  %203 = load i32, i32* %10, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %202, %36
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local %struct.n2_request_context* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @ablkcipher_walk_init(%struct.ablkcipher_walk*, i32, i32, i32) #1

declare dso_local i32 @ablkcipher_walk_phys(%struct.ablkcipher_request*, %struct.ablkcipher_walk*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i32 @cipher_descriptor_len(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.n2_crypto_chunk* @kzalloc(i32, i32) #1

declare dso_local i32 @ablkcipher_walk_done(%struct.ablkcipher_request*, %struct.ablkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
