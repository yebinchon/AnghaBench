; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_final_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_final_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_sham_dev = type { i32, i64, %struct.ahash_request* }
%struct.ahash_request = type { i32 }
%struct.omap_sham_reqctx = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"final_req: err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_sham_dev*)* @omap_sham_final_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_final_req(%struct.omap_sham_dev* %0) #0 {
  %2 = alloca %struct.omap_sham_dev*, align 8
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.omap_sham_reqctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_sham_dev* %0, %struct.omap_sham_dev** %2, align 8
  %7 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %2, align 8
  %8 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %7, i32 0, i32 2
  %9 = load %struct.ahash_request*, %struct.ahash_request** %8, align 8
  store %struct.ahash_request* %9, %struct.ahash_request** %3, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %11 = call %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request* %10)
  store %struct.omap_sham_reqctx* %11, %struct.omap_sham_reqctx** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %12 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %13 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %16 = call i64 @get_block_size(%struct.omap_sham_reqctx* %15)
  %17 = icmp sle i64 %14, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %2, align 8
  %20 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %1
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %2, align 8
  %29 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %30 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @omap_sham_xmit_dma(%struct.omap_sham_dev* %28, i64 %31, i32 1)
  store i32 %32, i32* %5, align 4
  br label %39

33:                                               ; preds = %24
  %34 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %2, align 8
  %35 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %36 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @omap_sham_xmit_cpu(%struct.omap_sham_dev* %34, i64 %37, i32 1)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %41 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %2, align 8
  %43 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i64 @get_block_size(%struct.omap_sham_reqctx*) #1

declare dso_local i32 @omap_sham_xmit_dma(%struct.omap_sham_dev*, i64, i32) #1

declare dso_local i32 @omap_sham_xmit_cpu(%struct.omap_sham_dev*, i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
