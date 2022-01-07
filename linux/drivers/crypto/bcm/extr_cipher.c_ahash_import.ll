; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_ahash_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_ahash_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.iproc_reqctx_s = type { i32, i32, i32, i32, i32, i32 }
%struct.spu_hash_export_s = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @ahash_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_import(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iproc_reqctx_s*, align 8
  %6 = alloca %struct.spu_hash_export_s*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = call %struct.iproc_reqctx_s* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.iproc_reqctx_s* %8, %struct.iproc_reqctx_s** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.spu_hash_export_s*
  store %struct.spu_hash_export_s* %10, %struct.spu_hash_export_s** %6, align 8
  %11 = load %struct.spu_hash_export_s*, %struct.spu_hash_export_s** %6, align 8
  %12 = getelementptr inbounds %struct.spu_hash_export_s, %struct.spu_hash_export_s* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %5, align 8
  %15 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.spu_hash_export_s*, %struct.spu_hash_export_s** %6, align 8
  %17 = getelementptr inbounds %struct.spu_hash_export_s, %struct.spu_hash_export_s* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %5, align 8
  %20 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.spu_hash_export_s*, %struct.spu_hash_export_s** %6, align 8
  %22 = getelementptr inbounds %struct.spu_hash_export_s, %struct.spu_hash_export_s* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %5, align 8
  %25 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %5, align 8
  %27 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.spu_hash_export_s*, %struct.spu_hash_export_s** %6, align 8
  %30 = getelementptr inbounds %struct.spu_hash_export_s, %struct.spu_hash_export_s* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32 %28, i32 %31, i32 4)
  %33 = load %struct.spu_hash_export_s*, %struct.spu_hash_export_s** %6, align 8
  %34 = getelementptr inbounds %struct.spu_hash_export_s, %struct.spu_hash_export_s* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %5, align 8
  %37 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %5, align 8
  %39 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.spu_hash_export_s*, %struct.spu_hash_export_s** %6, align 8
  %42 = getelementptr inbounds %struct.spu_hash_export_s, %struct.spu_hash_export_s* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %40, i32 %43, i32 4)
  ret i32 0
}

declare dso_local %struct.iproc_reqctx_s* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
