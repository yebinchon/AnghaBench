; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_ahash_edesc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_ahash_edesc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_edesc = type { i32 }
%struct.caam_hash_ctx = type { i32 }

@GFP_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not allocate extended descriptor\0A\00", align 1
@HDR_SHARE_DEFER = common dso_local global i32 0, align 4
@HDR_REVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ahash_edesc* (%struct.caam_hash_ctx*, i32, i32*, i32, i32)* @ahash_edesc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ahash_edesc* @ahash_edesc_alloc(%struct.caam_hash_ctx* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ahash_edesc*, align 8
  %7 = alloca %struct.caam_hash_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ahash_edesc*, align 8
  %13 = alloca i32, align 4
  store %struct.caam_hash_ctx* %0, %struct.caam_hash_ctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = zext i32 %18 to i64
  %20 = add i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @GFP_DMA, align 4
  %23 = load i32, i32* %11, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.ahash_edesc* @kzalloc(i32 %21, i32 %24)
  store %struct.ahash_edesc* %25, %struct.ahash_edesc** %12, align 8
  %26 = load %struct.ahash_edesc*, %struct.ahash_edesc** %12, align 8
  %27 = icmp ne %struct.ahash_edesc* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %5
  %29 = load %struct.caam_hash_ctx*, %struct.caam_hash_ctx** %7, align 8
  %30 = getelementptr inbounds %struct.caam_hash_ctx, %struct.caam_hash_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.ahash_edesc* null, %struct.ahash_edesc** %6, align 8
  br label %45

33:                                               ; preds = %5
  %34 = load %struct.ahash_edesc*, %struct.ahash_edesc** %12, align 8
  %35 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @desc_len(i32* %38)
  %40 = load i32, i32* @HDR_SHARE_DEFER, align 4
  %41 = load i32, i32* @HDR_REVERSE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @init_job_desc_shared(i32 %36, i32 %37, i32 %39, i32 %42)
  %44 = load %struct.ahash_edesc*, %struct.ahash_edesc** %12, align 8
  store %struct.ahash_edesc* %44, %struct.ahash_edesc** %6, align 8
  br label %45

45:                                               ; preds = %33, %28
  %46 = load %struct.ahash_edesc*, %struct.ahash_edesc** %6, align 8
  ret %struct.ahash_edesc* %46
}

declare dso_local %struct.ahash_edesc* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @init_job_desc_shared(i32, i32, i32, i32) #1

declare dso_local i32 @desc_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
