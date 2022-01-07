; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_final.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.omap_sham_reqctx = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@FLAGS_FINUP = common dso_local global i32 0, align 4
@FLAGS_ERROR = common dso_local global i32 0, align 4
@OP_FINAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @omap_sham_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_final(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.omap_sham_reqctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %6 = call %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request* %5)
  store %struct.omap_sham_reqctx* %6, %struct.omap_sham_reqctx** %4, align 8
  %7 = load i32, i32* @FLAGS_FINUP, align 4
  %8 = call i32 @BIT(i32 %7)
  %9 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %10 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %14 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FLAGS_ERROR, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

21:                                               ; preds = %1
  %22 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %23 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %21
  %27 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %28 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %31 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %29, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %38 = call i32 @omap_sham_final_shash(%struct.ahash_request* %37)
  store i32 %38, i32* %2, align 4
  br label %52

39:                                               ; preds = %26, %21
  %40 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %4, align 8
  %41 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %46 = load i32, i32* @OP_FINAL, align 4
  %47 = call i32 @omap_sham_enqueue(%struct.ahash_request* %45, i32 %46)
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %51 = call i32 @omap_sham_finish(%struct.ahash_request* %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %44, %36, %20
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @omap_sham_final_shash(%struct.ahash_request*) #1

declare dso_local i32 @omap_sham_enqueue(%struct.ahash_request*, i32) #1

declare dso_local i32 @omap_sham_finish(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
