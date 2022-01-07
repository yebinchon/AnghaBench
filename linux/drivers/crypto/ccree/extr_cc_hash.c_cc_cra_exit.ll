; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_cra_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_cra_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.cc_hash_ctx = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"cc_cra_exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*)* @cc_cra_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_cra_exit(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.cc_hash_ctx*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %5 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %6 = call %struct.cc_hash_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %5)
  store %struct.cc_hash_ctx* %6, %struct.cc_hash_ctx** %3, align 8
  %7 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.device* @drvdata_to_dev(i32 %9)
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @dev_dbg(%struct.device* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %3, align 8
  %14 = call i32 @cc_free_ctx(%struct.cc_hash_ctx* %13)
  ret void
}

declare dso_local %struct.cc_hash_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.device* @drvdata_to_dev(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @cc_free_ctx(%struct.cc_hash_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
