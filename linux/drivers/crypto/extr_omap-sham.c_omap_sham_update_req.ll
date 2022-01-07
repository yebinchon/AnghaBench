; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_update_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_update_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_sham_dev = type { i64, i32, %struct.ahash_request* }
%struct.ahash_request = type { i32 }
%struct.omap_sham_reqctx = type { i32, i64, i32 }

@FLAGS_FINUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"update_req: total: %u, digcnt: %d, finup: %d\0A\00", align 1
@FLAGS_CPU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"update: err: %d, digcnt: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_sham_dev*)* @omap_sham_update_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_update_req(%struct.omap_sham_dev* %0) #0 {
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
  %12 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %13 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FLAGS_FINUP, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = and i32 %14, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %2, align 8
  %19 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %22 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %26 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %29 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @FLAGS_FINUP, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %35)
  %37 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %38 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %41 = call i64 @get_block_size(%struct.omap_sham_reqctx* %40)
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %1
  %44 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %45 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %2, align 8
  %48 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %43, %1
  %52 = load i32, i32* @FLAGS_CPU, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %55 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %51, %43
  %59 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %60 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @FLAGS_CPU, align 4
  %63 = call i32 @BIT(i32 %62)
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %2, align 8
  %68 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %69 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @omap_sham_xmit_cpu(%struct.omap_sham_dev* %67, i64 %70, i32 %71)
  store i32 %72, i32* %5, align 4
  br label %80

73:                                               ; preds = %58
  %74 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %2, align 8
  %75 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %76 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @omap_sham_xmit_dma(%struct.omap_sham_dev* %74, i64 %77, i32 %78)
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %73, %66
  %81 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %2, align 8
  %82 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %86 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %87)
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i64 @get_block_size(%struct.omap_sham_reqctx*) #1

declare dso_local i32 @omap_sham_xmit_cpu(%struct.omap_sham_dev*, i64, i32) #1

declare dso_local i32 @omap_sham_xmit_dma(%struct.omap_sham_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
