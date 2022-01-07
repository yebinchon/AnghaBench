; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_ctr_auth_cipher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_ctr_auth_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32, i32 }
%struct.crypto_ahash = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"authenc(\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*, i8*)* @crypt_ctr_auth_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_ctr_auth_cipher(%struct.crypt_config* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypt_config*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.crypto_ahash*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strstarts(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 40)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 44)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ugt i8* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %21, %14
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %88

32:                                               ; preds = %24
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = add nsw i64 %37, 1
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kzalloc(i32 %39, i32 %40)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %88

47:                                               ; preds = %32
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @strncpy(i8* %48, i8* %49, i32 %55)
  %57 = load i8*, i8** %8, align 8
  %58 = call %struct.crypto_ahash* @crypto_alloc_ahash(i8* %57, i32 0, i32 0)
  store %struct.crypto_ahash* %58, %struct.crypto_ahash** %9, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @kfree(i8* %59)
  %61 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %62 = call i64 @IS_ERR(%struct.crypto_ahash* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %47
  %65 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %66 = call i32 @PTR_ERR(%struct.crypto_ahash* %65)
  store i32 %66, i32* %3, align 4
  br label %88

67:                                               ; preds = %47
  %68 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %69 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %68)
  %70 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %71 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %73 = call i32 @crypto_free_ahash(%struct.crypto_ahash* %72)
  %74 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %75 = call i32 @crypt_authenckey_size(%struct.crypt_config* %74)
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i32 @kmalloc(i32 %75, i32 %76)
  %78 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %79 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %81 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %67
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %88

87:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %84, %64, %44, %29, %13
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @strstarts(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local %struct.crypto_ahash* @crypto_alloc_ahash(i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_ahash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_free_ahash(%struct.crypto_ahash*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @crypt_authenckey_size(%struct.crypt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
