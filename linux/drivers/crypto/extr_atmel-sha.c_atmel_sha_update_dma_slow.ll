; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_update_dma_slow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_update_dma_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, i32 }
%struct.atmel_sha_reqctx = type { i32, i64, i64, i32*, i32 }

@SHA_FLAGS_FINUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"slow: bufcnt: %zu, digcnt: 0x%llx 0x%llx, final: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*)* @atmel_sha_update_dma_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_update_dma_slow(%struct.atmel_sha_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_sha_dev*, align 8
  %4 = alloca %struct.atmel_sha_reqctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %3, align 8
  %7 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(i32 %9)
  store %struct.atmel_sha_reqctx* %10, %struct.atmel_sha_reqctx** %4, align 8
  %11 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %12 = call i32 @atmel_sha_append_sg(%struct.atmel_sha_reqctx* %11)
  %13 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %14 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SHA_FLAGS_FINUP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %21 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %1
  %26 = phi i1 [ false, %1 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %29 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %32 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %35 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %40 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %33, i32 %38, i32 %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %25
  %49 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %50 = call i32 @atmel_sha_fill_padding(%struct.atmel_sha_reqctx* %49, i32 0)
  br label %51

51:                                               ; preds = %48, %25
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %56 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %59 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %54, %51
  %63 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %64 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %6, align 8
  %66 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %67 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %69 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @atmel_sha_xmit_dma_map(%struct.atmel_sha_dev* %68, %struct.atmel_sha_reqctx* %69, i64 %70, i32 %71)
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %62
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(i32) #1

declare dso_local i32 @atmel_sha_append_sg(%struct.atmel_sha_reqctx*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @atmel_sha_fill_padding(%struct.atmel_sha_reqctx*, i32) #1

declare dso_local i32 @atmel_sha_xmit_dma_map(%struct.atmel_sha_dev*, %struct.atmel_sha_reqctx*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
