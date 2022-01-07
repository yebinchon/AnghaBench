; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_free_tfms_aead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_free_tfms_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypt_config*)* @crypt_free_tfms_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_free_tfms_aead(%struct.crypt_config* %0) #0 {
  %2 = alloca %struct.crypt_config*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %2, align 8
  %3 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %4 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32**, i32*** %5, align 8
  %7 = icmp ne i32** %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %48

9:                                                ; preds = %1
  %10 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %11 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %9
  %18 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %19 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @IS_ERR(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %17
  %27 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %28 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @crypto_free_aead(i32* %32)
  %34 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %35 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32**, i32*** %36, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %26, %17, %9
  %40 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %41 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = call i32 @kfree(i32** %43)
  %45 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %46 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32** null, i32*** %47, align 8
  br label %48

48:                                               ; preds = %39, %8
  ret void
}

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @crypto_free_aead(i32*) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
