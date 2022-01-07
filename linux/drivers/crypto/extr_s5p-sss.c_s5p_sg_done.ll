; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_sg_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_sg_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_aes_dev = type { i64, i64, i64, %struct.ablkcipher_request*, i32 }
%struct.ablkcipher_request = type { i32, i32, i32 }
%struct.s5p_aes_reqctx = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Copying %d bytes of output data back to original place\0A\00", align 1
@FLAGS_AES_CBC = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@FLAGS_AES_CTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_aes_dev*)* @s5p_sg_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_sg_done(%struct.s5p_aes_dev* %0) #0 {
  %2 = alloca %struct.s5p_aes_dev*, align 8
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca %struct.s5p_aes_reqctx*, align 8
  store %struct.s5p_aes_dev* %0, %struct.s5p_aes_dev** %2, align 8
  %5 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %2, align 8
  %6 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %5, i32 0, i32 3
  %7 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  store %struct.ablkcipher_request* %7, %struct.ablkcipher_request** %3, align 8
  %8 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %9 = call %struct.s5p_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %8)
  store %struct.s5p_aes_reqctx* %9, %struct.s5p_aes_reqctx** %4, align 8
  %10 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %2, align 8
  %11 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %1
  %15 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %2, align 8
  %16 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %2, align 8
  %19 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %18, i32 0, i32 3
  %20 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %19, align 8
  %21 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %2, align 8
  %25 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @sg_virt(i64 %26)
  %28 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %2, align 8
  %29 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %28, i32 0, i32 3
  %30 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %29, align 8
  %31 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %2, align 8
  %34 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %33, i32 0, i32 3
  %35 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %34, align 8
  %36 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @s5p_sg_copy_buf(i32 %27, i32 %32, i32 %37, i32 1)
  br label %39

39:                                               ; preds = %14, %1
  %40 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %2, align 8
  %41 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %2, align 8
  %42 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %41, i32 0, i32 2
  %43 = call i32 @s5p_free_sg_cpy(%struct.s5p_aes_dev* %40, i64* %42)
  %44 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %2, align 8
  %45 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %2, align 8
  %46 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %45, i32 0, i32 1
  %47 = call i32 @s5p_free_sg_cpy(%struct.s5p_aes_dev* %44, i64* %46)
  %48 = load %struct.s5p_aes_reqctx*, %struct.s5p_aes_reqctx** %4, align 8
  %49 = getelementptr inbounds %struct.s5p_aes_reqctx, %struct.s5p_aes_reqctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @FLAGS_AES_CBC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %39
  %55 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %56 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %2, align 8
  %59 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @SSS_REG_AES_IV_DATA(i32 0)
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %64 = call i32 @memcpy_fromio(i32 %57, i64 %62, i32 %63)
  br label %84

65:                                               ; preds = %39
  %66 = load %struct.s5p_aes_reqctx*, %struct.s5p_aes_reqctx** %4, align 8
  %67 = getelementptr inbounds %struct.s5p_aes_reqctx, %struct.s5p_aes_reqctx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @FLAGS_AES_CTR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %74 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %2, align 8
  %77 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @SSS_REG_AES_CNT_DATA(i32 0)
  %80 = add nsw i64 %78, %79
  %81 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %82 = call i32 @memcpy_fromio(i32 %75, i64 %80, i32 %81)
  br label %83

83:                                               ; preds = %72, %65
  br label %84

84:                                               ; preds = %83, %54
  ret void
}

declare dso_local %struct.s5p_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @s5p_sg_copy_buf(i32, i32, i32, i32) #1

declare dso_local i32 @sg_virt(i64) #1

declare dso_local i32 @s5p_free_sg_cpy(%struct.s5p_aes_dev*, i64*) #1

declare dso_local i32 @memcpy_fromio(i32, i64, i32) #1

declare dso_local i64 @SSS_REG_AES_IV_DATA(i32) #1

declare dso_local i64 @SSS_REG_AES_CNT_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
