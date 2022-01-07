; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_jr.c_unregister_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_jr.c_unregister_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@algs_lock = common dso_local global i32 0, align 4
@active_devs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unregister_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unregister_algs() #0 {
  %1 = call i32 @mutex_lock(i32* @algs_lock)
  %2 = load i64, i64* @active_devs, align 8
  %3 = add nsw i64 %2, -1
  store i64 %3, i64* @active_devs, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %12

6:                                                ; preds = %0
  %7 = call i32 (...) @caam_qi_algapi_exit()
  %8 = call i32 (...) @caam_rng_exit()
  %9 = call i32 (...) @caam_pkc_exit()
  %10 = call i32 (...) @caam_algapi_hash_exit()
  %11 = call i32 (...) @caam_algapi_exit()
  br label %12

12:                                               ; preds = %6, %5
  %13 = call i32 @mutex_unlock(i32* @algs_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @caam_qi_algapi_exit(...) #1

declare dso_local i32 @caam_rng_exit(...) #1

declare dso_local i32 @caam_pkc_exit(...) #1

declare dso_local i32 @caam_algapi_hash_exit(...) #1

declare dso_local i32 @caam_algapi_exit(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
