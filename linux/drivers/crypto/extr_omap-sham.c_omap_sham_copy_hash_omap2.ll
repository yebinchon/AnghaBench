; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_copy_hash_omap2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_copy_hash_omap2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.omap_sham_reqctx = type { i64, %struct.omap_sham_dev* }
%struct.omap_sham_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*, i32)* @omap_sham_copy_hash_omap2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_sham_copy_hash_omap2(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_sham_reqctx*, align 8
  %6 = alloca %struct.omap_sham_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %10 = call %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request* %9)
  store %struct.omap_sham_reqctx* %10, %struct.omap_sham_reqctx** %5, align 8
  %11 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %5, align 8
  %12 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %11, i32 0, i32 1
  %13 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %12, align 8
  store %struct.omap_sham_dev* %13, %struct.omap_sham_dev** %6, align 8
  %14 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %5, align 8
  %15 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %54, %2
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %22 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 4
  %28 = icmp ult i64 %20, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %18
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %34 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @SHA_REG_IDIGEST(%struct.omap_sham_dev* %34, i32 %35)
  %37 = call i32 @omap_sham_read(%struct.omap_sham_dev* %33, i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %53

42:                                               ; preds = %29
  %43 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %44 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @SHA_REG_IDIGEST(%struct.omap_sham_dev* %44, i32 %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @omap_sham_write(%struct.omap_sham_dev* %43, i32 %46, i32 %51)
  br label %53

53:                                               ; preds = %42, %32
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %18

57:                                               ; preds = %18
  ret void
}

declare dso_local %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @omap_sham_read(%struct.omap_sham_dev*, i32) #1

declare dso_local i32 @SHA_REG_IDIGEST(%struct.omap_sham_dev*, i32) #1

declare dso_local i32 @omap_sham_write(%struct.omap_sham_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
