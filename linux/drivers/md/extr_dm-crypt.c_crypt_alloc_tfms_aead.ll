; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_alloc_tfms_aead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_alloc_tfms_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s using implementation \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*, i8*)* @crypt_alloc_tfms_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_alloc_tfms_aead(%struct.crypt_config* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypt_config*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.crypt_config* %0, %struct.crypt_config** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32 @kmalloc(i32 8, i32 %7)
  %9 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %10 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 8
  %12 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %13 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %56

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @crypto_alloc_aead(i8* %21, i32 0, i32 0)
  %23 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %24 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %22, i32* %27, align 4
  %28 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %29 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %20
  %37 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %38 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %45 = call i32 @crypt_free_tfms(%struct.crypt_config* %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %56

47:                                               ; preds = %20
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %50 = call i32 @any_tfm_aead(%struct.crypt_config* %49)
  %51 = call %struct.TYPE_6__* @crypto_aead_alg(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DMDEBUG_LIMIT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %47, %36, %17
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @crypto_alloc_aead(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @crypt_free_tfms(%struct.crypt_config*) #1

declare dso_local i32 @DMDEBUG_LIMIT(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @crypto_aead_alg(i32) #1

declare dso_local i32 @any_tfm_aead(%struct.crypt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
