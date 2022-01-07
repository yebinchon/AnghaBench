; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_cipher_walk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_cipher_walk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_cipher_walk = type { i64, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@ASYNC_SCATTERLIST_CACHE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_cipher_walk*, i32, i32)* @hifn_cipher_walk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_cipher_walk_init(%struct.hifn_cipher_walk* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hifn_cipher_walk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  store %struct.hifn_cipher_walk* %0, %struct.hifn_cipher_walk** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @ASYNC_SCATTERLIST_CACHE, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @min(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hifn_cipher_walk*, %struct.hifn_cipher_walk** %4, align 8
  %14 = getelementptr inbounds %struct.hifn_cipher_walk, %struct.hifn_cipher_walk* %13, i32 0, i32 1
  %15 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @sg_init_table(%struct.scatterlist* %15, i32 %16)
  %18 = load %struct.hifn_cipher_walk*, %struct.hifn_cipher_walk** %4, align 8
  %19 = getelementptr inbounds %struct.hifn_cipher_walk, %struct.hifn_cipher_walk* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %45, %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.page* @alloc_page(i32 %25)
  store %struct.page* %26, %struct.page** %8, align 8
  %27 = load %struct.page*, %struct.page** %8, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %48

30:                                               ; preds = %24
  %31 = load %struct.hifn_cipher_walk*, %struct.hifn_cipher_walk** %4, align 8
  %32 = getelementptr inbounds %struct.hifn_cipher_walk, %struct.hifn_cipher_walk* %31, i32 0, i32 1
  %33 = load %struct.scatterlist*, %struct.scatterlist** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %33, i64 %35
  store %struct.scatterlist* %36, %struct.scatterlist** %9, align 8
  %37 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %38 = load %struct.page*, %struct.page** %8, align 8
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = call i32 @sg_set_page(%struct.scatterlist* %37, %struct.page* %38, i32 %39, i32 0)
  %41 = load %struct.hifn_cipher_walk*, %struct.hifn_cipher_walk** %4, align 8
  %42 = getelementptr inbounds %struct.hifn_cipher_walk, %struct.hifn_cipher_walk* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %30
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %20

48:                                               ; preds = %29, %20
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
