; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_tcw_wipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_tcw_wipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iv_tcw_private }
%struct.iv_tcw_private = type { i32, i32 }

@TCW_WHITENING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*)* @crypt_iv_tcw_wipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_iv_tcw_wipe(%struct.crypt_config* %0) #0 {
  %2 = alloca %struct.crypt_config*, align 8
  %3 = alloca %struct.iv_tcw_private*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %2, align 8
  %4 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %5 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.iv_tcw_private* %6, %struct.iv_tcw_private** %3, align 8
  %7 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %3, align 8
  %8 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %11 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memset(i32 %9, i32 0, i32 %12)
  %14 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %3, align 8
  %15 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TCW_WHITENING_SIZE, align 4
  %18 = call i32 @memset(i32 %16, i32 0, i32 %17)
  ret i32 0
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
