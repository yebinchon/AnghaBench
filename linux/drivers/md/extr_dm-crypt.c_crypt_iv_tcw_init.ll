; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_tcw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_tcw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iv_tcw_private }
%struct.iv_tcw_private = type { i32, i32 }

@TCW_WHITENING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*)* @crypt_iv_tcw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_iv_tcw_init(%struct.crypt_config* %0) #0 {
  %2 = alloca %struct.crypt_config*, align 8
  %3 = alloca %struct.iv_tcw_private*, align 8
  %4 = alloca i32, align 4
  store %struct.crypt_config* %0, %struct.crypt_config** %2, align 8
  %5 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %6 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.iv_tcw_private* %7, %struct.iv_tcw_private** %3, align 8
  %8 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %9 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %12 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  %15 = load i32, i32* @TCW_WHITENING_SIZE, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %3, align 8
  %18 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %21 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %27 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memcpy(i32 %19, i32* %25, i32 %28)
  %30 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %3, align 8
  %31 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %34 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %38 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %35, i64 %41
  %43 = load i32, i32* @TCW_WHITENING_SIZE, align 4
  %44 = call i32 @memcpy(i32 %32, i32* %42, i32 %43)
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
