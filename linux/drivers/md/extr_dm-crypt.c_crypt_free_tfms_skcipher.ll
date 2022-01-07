; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_free_tfms_skcipher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_free_tfms_skcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypt_config*)* @crypt_free_tfms_skcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_free_tfms_skcipher(%struct.crypt_config* %0) #0 {
  %2 = alloca %struct.crypt_config*, align 8
  %3 = alloca i32, align 4
  store %struct.crypt_config* %0, %struct.crypt_config** %2, align 8
  %4 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %5 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32**, i32*** %6, align 8
  %8 = icmp ne i32** %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %68

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %56, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %14 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %11
  %18 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %19 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %55

27:                                               ; preds = %17
  %28 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %29 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @IS_ERR(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %27
  %39 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %40 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @crypto_free_skcipher(i32* %46)
  %48 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %49 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %38, %27, %17
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %11

59:                                               ; preds = %11
  %60 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %61 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = call i32 @kfree(i32** %63)
  %65 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %66 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32** null, i32*** %67, align 8
  br label %68

68:                                               ; preds = %59, %9
  ret void
}

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @crypto_free_skcipher(i32*) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
