; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_algs_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_algs_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@algs_lock = common dso_local global i32 0, align 4
@active_devs = common dso_local global i64 0, align 8
@qat_aeads = common dso_local global i32 0, align 4
@qat_algs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qat_algs_unregister() #0 {
  %1 = call i32 @mutex_lock(i32* @algs_lock)
  %2 = load i64, i64* @active_devs, align 8
  %3 = add nsw i64 %2, -1
  store i64 %3, i64* @active_devs, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %15

6:                                                ; preds = %0
  %7 = load i32, i32* @qat_aeads, align 4
  %8 = load i32, i32* @qat_aeads, align 4
  %9 = call i32 @ARRAY_SIZE(i32 %8)
  %10 = call i32 @crypto_unregister_aeads(i32 %7, i32 %9)
  %11 = load i32, i32* @qat_algs, align 4
  %12 = load i32, i32* @qat_algs, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = call i32 @crypto_unregister_algs(i32 %11, i32 %13)
  br label %15

15:                                               ; preds = %6, %5
  %16 = call i32 @mutex_unlock(i32* @algs_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @crypto_unregister_aeads(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @crypto_unregister_algs(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
