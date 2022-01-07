; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64, i32 }
%struct.omap_sham_reqctx = type { i64, i64, i64, i32, %struct.omap_sham_dev* }
%struct.omap_sham_dev = type { i64 }

@FLAGS_CPU = common dso_local global i32 0, align 4
@OP_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @omap_sham_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_update(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.omap_sham_reqctx*, align 8
  %5 = alloca %struct.omap_sham_dev*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %7 = call %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request* %6)
  store %struct.omap_sham_reqctx* %7, %struct.omap_sham_reqctx** %4, align 8
  %8 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %9 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %8, i32 0, i32 4
  %10 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %9, align 8
  store %struct.omap_sham_dev* %10, %struct.omap_sham_dev** %5, align 8
  %11 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %12 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

16:                                               ; preds = %1
  %17 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %18 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %21 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %25 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %23, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %16
  %29 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %30 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %33 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %37 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %40 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @scatterwalk_map_and_copy(i64 %35, i32 %38, i32 0, i64 %41, i32 0)
  %43 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %44 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %47 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  store i32 0, i32* %2, align 4
  br label %66

50:                                               ; preds = %16
  %51 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %52 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32, i32* @FLAGS_CPU, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %59 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %55, %50
  %63 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %64 = load i32, i32* @OP_UPDATE, align 4
  %65 = call i32 @omap_sham_enqueue(%struct.ahash_request* %63, i32 %64)
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %28, %15
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i64, i32, i32, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @omap_sham_enqueue(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
