; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i64, i64, i64, i32*, i32, i32 }
%struct.atmel_aes_gcm_ctx = type { i64, i32* }
%struct.aead_request = type { i64, i32 }

@AES_AADLENR = common dso_local global i32 0, align 4
@AES_CLENR = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*)* @atmel_aes_gcm_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_gcm_length(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_aes_dev*, align 8
  %4 = alloca %struct.atmel_aes_gcm_ctx*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %3, align 8
  %9 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %10 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32 %11)
  store %struct.atmel_aes_gcm_ctx* %12, %struct.atmel_aes_gcm_ctx** %4, align 8
  %13 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %14 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.aead_request* @aead_request_cast(i32 %15)
  store %struct.aead_request* %16, %struct.aead_request** %5, align 8
  %17 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @be32_to_cpu(i32 %25)
  %27 = add nsw i64 %26, 1
  %28 = call i32 @cpu_to_be32(i64 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %32 = call i32 @AES_IVR(i32 0)
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @atmel_aes_write_block(%struct.atmel_aes_dev* %31, i32 %32, i32* %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %39 = load i32, i32* @AES_AADLENR, align 4
  %40 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %41 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @atmel_aes_write(%struct.atmel_aes_dev* %38, i32 %39, i64 %42)
  %44 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %45 = load i32, i32* @AES_CLENR, align 4
  %46 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @atmel_aes_write(%struct.atmel_aes_dev* %44, i32 %45, i64 %48)
  %50 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %51 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %1
  %58 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %59 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %61 = call i32 @atmel_aes_gcm_data(%struct.atmel_aes_dev* %60)
  store i32 %61, i32* %2, align 4
  br label %115

62:                                               ; preds = %1
  %63 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %64 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %67 = call i64 @atmel_aes_padlen(i64 %65, i32 %66)
  store i64 %67, i64* %8, align 8
  %68 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %69 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %70, %71
  %73 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %74 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ugt i64 %72, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %62
  %81 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  %84 = call i32 @atmel_aes_complete(%struct.atmel_aes_dev* %81, i32 %83)
  store i32 %84, i32* %2, align 4
  br label %115

85:                                               ; preds = %62
  %86 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %87 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %90 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @sg_nents(i32 %91)
  %93 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %94 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %97 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @sg_copy_to_buffer(i32 %88, i32 %92, i64 %95, i64 %98)
  %100 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %101 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i32*
  %104 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %105 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %104, i32 0, i32 3
  store i32* %103, i32** %105, align 8
  %106 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %107 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = add i64 %108, %109
  %111 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %112 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %114 = call i32 @atmel_aes_gcm_data(%struct.atmel_aes_dev* %113)
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %85, %80, %57
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32) #1

declare dso_local %struct.aead_request* @aead_request_cast(i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @atmel_aes_write_block(%struct.atmel_aes_dev*, i32, i32*) #1

declare dso_local i32 @AES_IVR(i32) #1

declare dso_local i32 @atmel_aes_write(%struct.atmel_aes_dev*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atmel_aes_gcm_data(%struct.atmel_aes_dev*) #1

declare dso_local i64 @atmel_aes_padlen(i64, i32) #1

declare dso_local i32 @atmel_aes_complete(%struct.atmel_aes_dev*, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i64, i64) #1

declare dso_local i32 @sg_nents(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
