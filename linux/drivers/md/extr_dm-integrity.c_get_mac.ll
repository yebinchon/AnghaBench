; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_get_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_get_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.alg_spec = type { i32, i64, i64 }

@CRYPTO_TFM_NEED_KEY = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash**, %struct.alg_spec*, i8**, i8*, i8*)* @get_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mac(%struct.crypto_shash** %0, %struct.alg_spec* %1, i8** %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_shash**, align 8
  %8 = alloca %struct.alg_spec*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.crypto_shash** %0, %struct.crypto_shash*** %7, align 8
  store %struct.alg_spec* %1, %struct.alg_spec** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.alg_spec*, %struct.alg_spec** %8, align 8
  %14 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %71

17:                                               ; preds = %5
  %18 = load %struct.alg_spec*, %struct.alg_spec** %8, align 8
  %19 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.crypto_shash* @crypto_alloc_shash(i64 %20, i32 0, i32 0)
  %22 = load %struct.crypto_shash**, %struct.crypto_shash*** %7, align 8
  store %struct.crypto_shash* %21, %struct.crypto_shash** %22, align 8
  %23 = load %struct.crypto_shash**, %struct.crypto_shash*** %7, align 8
  %24 = load %struct.crypto_shash*, %struct.crypto_shash** %23, align 8
  %25 = call i64 @IS_ERR(%struct.crypto_shash* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load i8*, i8** %10, align 8
  %29 = load i8**, i8*** %9, align 8
  store i8* %28, i8** %29, align 8
  %30 = load %struct.crypto_shash**, %struct.crypto_shash*** %7, align 8
  %31 = load %struct.crypto_shash*, %struct.crypto_shash** %30, align 8
  %32 = call i32 @PTR_ERR(%struct.crypto_shash* %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.crypto_shash**, %struct.crypto_shash*** %7, align 8
  store %struct.crypto_shash* null, %struct.crypto_shash** %33, align 8
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %6, align 4
  br label %72

35:                                               ; preds = %17
  %36 = load %struct.alg_spec*, %struct.alg_spec** %8, align 8
  %37 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load %struct.crypto_shash**, %struct.crypto_shash*** %7, align 8
  %42 = load %struct.crypto_shash*, %struct.crypto_shash** %41, align 8
  %43 = load %struct.alg_spec*, %struct.alg_spec** %8, align 8
  %44 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.alg_spec*, %struct.alg_spec** %8, align 8
  %47 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @crypto_shash_setkey(%struct.crypto_shash* %42, i64 %45, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load i8*, i8** %11, align 8
  %54 = load i8**, i8*** %9, align 8
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %6, align 4
  br label %72

56:                                               ; preds = %40
  br label %70

57:                                               ; preds = %35
  %58 = load %struct.crypto_shash**, %struct.crypto_shash*** %7, align 8
  %59 = load %struct.crypto_shash*, %struct.crypto_shash** %58, align 8
  %60 = call i32 @crypto_shash_get_flags(%struct.crypto_shash* %59)
  %61 = load i32, i32* @CRYPTO_TFM_NEED_KEY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i8*, i8** %11, align 8
  %66 = load i8**, i8*** %9, align 8
  store i8* %65, i8** %66, align 8
  %67 = load i32, i32* @ENOKEY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %72

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %56
  br label %71

71:                                               ; preds = %70, %5
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %64, %52, %27
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_setkey(%struct.crypto_shash*, i64, i32) #1

declare dso_local i32 @crypto_shash_get_flags(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
