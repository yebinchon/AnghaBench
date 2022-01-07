; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_init_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.talitos_ctx = type { i32, i32, i32 }
%struct.talitos_crypto_alg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.talitos_private = type { i32, i32 }

@DESC_HDR_DONE_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.talitos_ctx*, %struct.talitos_crypto_alg*)* @talitos_init_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @talitos_init_common(%struct.talitos_ctx* %0, %struct.talitos_crypto_alg* %1) #0 {
  %3 = alloca %struct.talitos_ctx*, align 8
  %4 = alloca %struct.talitos_crypto_alg*, align 8
  %5 = alloca %struct.talitos_private*, align 8
  store %struct.talitos_ctx* %0, %struct.talitos_ctx** %3, align 8
  store %struct.talitos_crypto_alg* %1, %struct.talitos_crypto_alg** %4, align 8
  %6 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %4, align 8
  %7 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.talitos_ctx*, %struct.talitos_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.talitos_ctx*, %struct.talitos_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.talitos_private* @dev_get_drvdata(i32 %13)
  store %struct.talitos_private* %14, %struct.talitos_private** %5, align 8
  %15 = load %struct.talitos_private*, %struct.talitos_private** %5, align 8
  %16 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %15, i32 0, i32 1
  %17 = call i32 @atomic_inc_return(i32* %16)
  %18 = load %struct.talitos_private*, %struct.talitos_private** %5, align 8
  %19 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %17, %21
  %23 = load %struct.talitos_ctx*, %struct.talitos_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %4, align 8
  %26 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.talitos_ctx*, %struct.talitos_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @DESC_HDR_DONE_NOTIFY, align 4
  %32 = load %struct.talitos_ctx*, %struct.talitos_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  ret i32 0
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
