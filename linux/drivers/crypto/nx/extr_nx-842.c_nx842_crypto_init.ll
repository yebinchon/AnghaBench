; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842.c_nx842_crypto_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842.c_nx842_crypto_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.nx842_driver = type { i32 }
%struct.nx842_crypto_ctx = type { i32*, i32*, i32, %struct.nx842_driver*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@BOUNCE_BUFFER_ORDER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nx842_crypto_init(%struct.crypto_tfm* %0, %struct.nx842_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca %struct.nx842_driver*, align 8
  %6 = alloca %struct.nx842_crypto_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store %struct.nx842_driver* %1, %struct.nx842_driver** %5, align 8
  %7 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %8 = call %struct.nx842_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %7)
  store %struct.nx842_crypto_ctx* %8, %struct.nx842_crypto_ctx** %6, align 8
  %9 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %6, align 8
  %10 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %9, i32 0, i32 4
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.nx842_driver*, %struct.nx842_driver** %5, align 8
  %13 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %13, i32 0, i32 3
  store %struct.nx842_driver* %12, %struct.nx842_driver** %14, align 8
  %15 = load %struct.nx842_driver*, %struct.nx842_driver** %5, align 8
  %16 = getelementptr inbounds %struct.nx842_driver, %struct.nx842_driver* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @kmalloc(i32 %17, i32 %18)
  %20 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load i32, i32* @BOUNCE_BUFFER_ORDER, align 4
  %24 = call i64 @__get_free_pages(i32 %22, i32 %23)
  %25 = inttoptr i64 %24 to i32*
  %26 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i32, i32* @BOUNCE_BUFFER_ORDER, align 4
  %30 = call i64 @__get_free_pages(i32 %28, i32 %29)
  %31 = inttoptr i64 %30 to i32*
  %32 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %2
  %39 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %65, label %48

48:                                               ; preds = %43, %38, %2
  %49 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %6, align 8
  %50 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @kfree(i32 %51)
  %53 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %6, align 8
  %54 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = ptrtoint i32* %55 to i64
  %57 = call i32 @free_page(i64 %56)
  %58 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = ptrtoint i32* %60 to i64
  %62 = call i32 @free_page(i64 %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.nx842_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
