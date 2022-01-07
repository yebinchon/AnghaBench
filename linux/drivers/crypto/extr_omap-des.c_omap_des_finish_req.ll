; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_finish_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_finish_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_des_dev = type { i32, i32, %struct.ablkcipher_request* }
%struct.ablkcipher_request = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_des_dev*, i32)* @omap_des_finish_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_des_finish_req(%struct.omap_des_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_des_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ablkcipher_request*, align 8
  store %struct.omap_des_dev* %0, %struct.omap_des_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %7 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %6, i32 0, i32 2
  %8 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  store %struct.ablkcipher_request* %8, %struct.ablkcipher_request** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %12 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @crypto_finalize_ablkcipher_request(i32 %13, %struct.ablkcipher_request* %14, i32 %15)
  %17 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %18 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pm_runtime_mark_last_busy(i32 %19)
  %21 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %22 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pm_runtime_put_autosuspend(i32 %23)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @crypto_finalize_ablkcipher_request(i32, %struct.ablkcipher_request*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
