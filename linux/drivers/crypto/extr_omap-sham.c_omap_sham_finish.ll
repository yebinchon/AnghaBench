; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.omap_sham_reqctx = type { i32, i32, i64, %struct.omap_sham_dev* }
%struct.omap_sham_dev = type { i32, i32 }

@FLAGS_HMAC = common dso_local global i32 0, align 4
@FLAGS_AUTO_XOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"digcnt: %d, bufcnt: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @omap_sham_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_finish(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.omap_sham_reqctx*, align 8
  %4 = alloca %struct.omap_sham_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %7 = call %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request* %6)
  store %struct.omap_sham_reqctx* %7, %struct.omap_sham_reqctx** %3, align 8
  %8 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %3, align 8
  %9 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %8, i32 0, i32 3
  %10 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %9, align 8
  store %struct.omap_sham_dev* %10, %struct.omap_sham_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %3, align 8
  %12 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %17 = call i32 @omap_sham_copy_ready_hash(%struct.ahash_request* %16)
  %18 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %3, align 8
  %19 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FLAGS_HMAC, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load i32, i32* @FLAGS_AUTO_XOR, align 4
  %27 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %28 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %27, i32 0, i32 1
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %33 = call i32 @omap_sham_finish_hmac(%struct.ahash_request* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %25, %15
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %37 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %3, align 8
  %40 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %3, align 8
  %43 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %41, i32 %44)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @omap_sham_copy_ready_hash(%struct.ahash_request*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @omap_sham_finish_hmac(%struct.ahash_request*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
