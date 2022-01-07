; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_xmit_pdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_xmit_pdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, i32, i32 }
%struct.atmel_sha_reqctx = type { i64* }

@.str = private unnamed_addr constant [57 x i8] c"xmit_pdc: digcnt: 0x%llx 0x%llx, length: %zd, final: %d\0A\00", align 1
@SHA_PTCR = common dso_local global i32 0, align 4
@SHA_PTCR_TXTDIS = common dso_local global i32 0, align 4
@SHA_TPR = common dso_local global i32 0, align 4
@SHA_TCR = common dso_local global i32 0, align 4
@SHA_TNPR = common dso_local global i32 0, align 4
@SHA_TNCR = common dso_local global i32 0, align 4
@SHA_FLAGS_FINAL = common dso_local global i32 0, align 4
@SHA_FLAGS_DMA_ACTIVE = common dso_local global i32 0, align 4
@SHA_PTCR_TXTEN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*, i32, i64, i32, i64, i32)* @atmel_sha_xmit_pdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_xmit_pdc(%struct.atmel_sha_dev* %0, i32 %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.atmel_sha_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.atmel_sha_reqctx*, align 8
  %14 = alloca i32, align 4
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %16 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(i32 %17)
  store %struct.atmel_sha_reqctx* %18, %struct.atmel_sha_reqctx** %13, align 8
  %19 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %20 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %13, align 8
  %23 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %13, align 8
  %28 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %31, i64 %32, i32 %33)
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @DIV_ROUND_UP(i64 %35, i32 4)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %38 = load i32, i32* @SHA_PTCR, align 4
  %39 = load i32, i32* @SHA_PTCR_TXTDIS, align 4
  %40 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %37, i32 %38, i32 %39)
  %41 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %42 = load i32, i32* @SHA_TPR, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %41, i32 %42, i32 %43)
  %45 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %46 = load i32, i32* @SHA_TCR, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %45, i32 %46, i32 %47)
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @DIV_ROUND_UP(i64 %49, i32 4)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %52 = load i32, i32* @SHA_TNPR, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %51, i32 %52, i32 %53)
  %55 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %56 = load i32, i32* @SHA_TNCR, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %55, i32 %56, i32 %57)
  %59 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %60 = call i32 @atmel_sha_write_ctrl(%struct.atmel_sha_dev* %59, i32 1)
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %13, align 8
  %63 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, %61
  store i64 %67, i64* %65, align 8
  %68 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %13, align 8
  %69 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %6
  %76 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %13, align 8
  %77 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %79, align 8
  br label %82

82:                                               ; preds = %75, %6
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32, i32* @SHA_FLAGS_FINAL, align 4
  %87 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %88 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %82
  %92 = load i32, i32* @SHA_FLAGS_DMA_ACTIVE, align 4
  %93 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %94 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %98 = load i32, i32* @SHA_PTCR, align 4
  %99 = load i32, i32* @SHA_PTCR_TXTEN, align 4
  %100 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %97, i32 %98, i32 %99)
  %101 = load i32, i32* @EINPROGRESS, align 4
  %102 = sub nsw i32 0, %101
  ret i32 %102
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @atmel_sha_write(%struct.atmel_sha_dev*, i32, i32) #1

declare dso_local i32 @atmel_sha_write_ctrl(%struct.atmel_sha_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
