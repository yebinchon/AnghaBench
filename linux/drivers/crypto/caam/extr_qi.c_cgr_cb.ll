; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_cgr_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_cgr_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32 }
%struct.qman_cgr = type { i32 }

@caam_congested = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CAAM entered congestion\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"CAAM exited congestion\0A\00", align 1
@times_congested = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qman_portal*, %struct.qman_cgr*, i32)* @cgr_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgr_cb(%struct.qman_portal* %0, %struct.qman_cgr* %1, i32 %2) #0 {
  %4 = alloca %struct.qman_portal*, align 8
  %5 = alloca %struct.qman_cgr*, align 8
  %6 = alloca i32, align 4
  store %struct.qman_portal* %0, %struct.qman_portal** %4, align 8
  store %struct.qman_cgr* %1, %struct.qman_cgr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* @caam_congested, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = call i32 @pr_debug_ratelimited(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %14

12:                                               ; preds = %3
  %13 = call i32 @pr_debug_ratelimited(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %10
  ret void
}

declare dso_local i32 @pr_debug_ratelimited(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
