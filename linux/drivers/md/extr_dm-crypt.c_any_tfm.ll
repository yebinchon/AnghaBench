; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_any_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_any_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.crypt_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.crypto_skcipher** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_skcipher* (%struct.crypt_config*)* @any_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_skcipher* @any_tfm(%struct.crypt_config* %0) #0 {
  %2 = alloca %struct.crypt_config*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %2, align 8
  %3 = load %struct.crypt_config*, %struct.crypt_config** %2, align 8
  %4 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load %struct.crypto_skcipher**, %struct.crypto_skcipher*** %5, align 8
  %7 = getelementptr inbounds %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, i64 0
  %8 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  ret %struct.crypto_skcipher* %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
