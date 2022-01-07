; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_alloc_tfms_skcipher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_alloc_tfms_skcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s using implementation \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*, i8*)* @crypt_alloc_tfms_skcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_alloc_tfms_skcipher(%struct.crypt_config* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypt_config*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.crypt_config* %0, %struct.crypt_config** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %9 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32* @kcalloc(i32 %10, i32 8, i32 %11)
  %13 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %14 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32* %12, i32** %15, align 8
  %16 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %17 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %77

24:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %65, %24
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %28 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @crypto_alloc_skcipher(i8* %32, i32 0, i32 0)
  %34 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %35 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %33, i32* %40, align 4
  %41 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %42 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %31
  %52 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %53 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %62 = call i32 @crypt_free_tfms(%struct.crypt_config* %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %77

64:                                               ; preds = %31
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %25

68:                                               ; preds = %25
  %69 = load i8*, i8** %5, align 8
  %70 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %71 = call i32 @any_tfm(%struct.crypt_config* %70)
  %72 = call %struct.TYPE_6__* @crypto_skcipher_alg(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @DMDEBUG_LIMIT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %69, i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %68, %51, %21
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @crypto_alloc_skcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @crypt_free_tfms(%struct.crypt_config*) #1

declare dso_local i32 @DMDEBUG_LIMIT(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @crypto_skcipher_alg(i32) #1

declare dso_local i32 @any_tfm(%struct.crypt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
