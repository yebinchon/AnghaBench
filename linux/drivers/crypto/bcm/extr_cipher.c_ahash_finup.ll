; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_ahash_finup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_ahash_finup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.iproc_ctx_s = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_finup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_finup(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.iproc_ctx_s*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %11 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %10)
  store %struct.crypto_ahash* %11, %struct.crypto_ahash** %4, align 8
  %12 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %13 = call %struct.iproc_ctx_s* @crypto_ahash_ctx(%struct.crypto_ahash* %12)
  store %struct.iproc_ctx_s* %13, %struct.iproc_ctx_s** %5, align 8
  %14 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %15 = call i64 @spu_no_incr_hash(%struct.iproc_ctx_s* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %85

17:                                               ; preds = %1
  %18 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %19 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %24 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @sg_nents(i64 %25)
  store i32 %26, i32* %8, align 4
  br label %30

27:                                               ; preds = %17
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %92

30:                                               ; preds = %22
  %31 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %32 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %36 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @GFP_KERNEL, align 4
  br label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %9, align 4
  %46 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %47 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call %struct.TYPE_9__* @kmalloc(i32 %48, i32 %49)
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %6, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = icmp ne %struct.TYPE_9__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %92

56:                                               ; preds = %44
  %57 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %58 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %63 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @sg_copy_to_buffer(i64 %59, i32 %60, %struct.TYPE_9__* %61, i32 %64)
  %66 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %67 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %56
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %89

73:                                               ; preds = %56
  %74 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %75 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %79 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %82 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @crypto_shash_finup(%struct.TYPE_9__* %76, %struct.TYPE_9__* %77, i32 %80, i32 %83)
  store i32 %84, i32* %7, align 4
  br label %88

85:                                               ; preds = %1
  %86 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %87 = call i32 @__ahash_finup(%struct.ahash_request* %86)
  store i32 %87, i32* %2, align 4
  br label %104

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %70
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = call i32 @kfree(%struct.TYPE_9__* %90)
  br label %92

92:                                               ; preds = %89, %53, %27
  %93 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %94 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @crypto_free_shash(i32 %97)
  %99 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %5, align 8
  %100 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = call i32 @kfree(%struct.TYPE_9__* %101)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %92, %85
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.iproc_ctx_s* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i64 @spu_no_incr_hash(%struct.iproc_ctx_s*) #1

declare dso_local i32 @sg_nents(i64) #1

declare dso_local %struct.TYPE_9__* @kmalloc(i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i64, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @crypto_shash_finup(%struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @__ahash_finup(%struct.ahash_request*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

declare dso_local i32 @crypto_free_shash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
