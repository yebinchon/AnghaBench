; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_tcw_dtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_tcw_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iv_tcw_private }
%struct.iv_tcw_private = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypt_config*)* @crypt_iv_tcw_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_iv_tcw_dtr(%struct.crypt_config* %0) #0 {
  %2 = alloca %struct.crypt_config*, align 8
  %3 = alloca %struct.iv_tcw_private*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %2, align 8
  %4 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %5 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.iv_tcw_private* %6, %struct.iv_tcw_private** %3, align 8
  %7 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %3, align 8
  %8 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @kzfree(i32* %9)
  %11 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %3, align 8
  %12 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %11, i32 0, i32 2
  store i32* null, i32** %12, align 8
  %13 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %3, align 8
  %14 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @kzfree(i32* %15)
  %17 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %3, align 8
  %18 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %3, align 8
  %20 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %3, align 8
  %25 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @IS_ERR(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %3, align 8
  %31 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @crypto_free_shash(i32* %32)
  br label %34

34:                                               ; preds = %29, %23, %1
  %35 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %3, align 8
  %36 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  ret void
}

declare dso_local i32 @kzfree(i32*) #1

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @crypto_free_shash(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
