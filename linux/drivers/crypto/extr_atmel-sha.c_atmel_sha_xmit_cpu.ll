; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_xmit_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_xmit_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, i32, i32 }
%struct.atmel_sha_reqctx = type { i64* }

@.str = private unnamed_addr constant [57 x i8] c"xmit_cpu: digcnt: 0x%llx 0x%llx, length: %zd, final: %d\0A\00", align 1
@SHA_FLAGS_FINAL = common dso_local global i32 0, align 4
@SHA_FLAGS_CPU = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*, i32*, i64, i32)* @atmel_sha_xmit_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_xmit_cpu(%struct.atmel_sha_dev* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.atmel_sha_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.atmel_sha_reqctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %5, align 8
  %14 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(i32 %15)
  store %struct.atmel_sha_reqctx* %16, %struct.atmel_sha_reqctx** %9, align 8
  %17 = load i32*, i32** %6, align 8
  store i32* %17, i32** %12, align 8
  %18 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %5, align 8
  %19 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %9, align 8
  %22 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %9, align 8
  %27 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %30, i64 %31, i32 %32)
  %34 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %5, align 8
  %35 = call i32 @atmel_sha_write_ctrl(%struct.atmel_sha_dev* %34, i32 0)
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %9, align 8
  %38 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, %36
  store i64 %42, i64* %40, align 8
  %43 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %9, align 8
  %44 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %4
  %51 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %9, align 8
  %52 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %50, %4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* @SHA_FLAGS_FINAL, align 4
  %62 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %5, align 8
  %63 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %57
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @DIV_ROUND_UP(i64 %67, i32 4)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* @SHA_FLAGS_CPU, align 4
  %70 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %5, align 8
  %71 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %88, %66
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @SHA_REG_DIN(i32 %80)
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %79, i32 %81, i32 %86)
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %74

91:                                               ; preds = %74
  %92 = load i32, i32* @EINPROGRESS, align 4
  %93 = sub nsw i32 0, %92
  ret i32 %93
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64, i32) #1

declare dso_local i32 @atmel_sha_write_ctrl(%struct.atmel_sha_dev*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @atmel_sha_write(%struct.atmel_sha_dev*, i32, i32) #1

declare dso_local i32 @SHA_REG_DIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
