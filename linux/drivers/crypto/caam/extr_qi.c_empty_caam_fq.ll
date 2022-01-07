; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_empty_caam_fq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_empty_caam_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_fq = type { i32 }
%struct.qm_mcr_queryfq_np = type { i32 }

@frm_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qman_fq*)* @empty_caam_fq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @empty_caam_fq(%struct.qman_fq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qman_fq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qm_mcr_queryfq_np, align 4
  store %struct.qman_fq* %0, %struct.qman_fq** %3, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.qman_fq*, %struct.qman_fq** %3, align 8
  %8 = call i32 @qman_query_fq_np(%struct.qman_fq* %7, %struct.qm_mcr_queryfq_np* %5)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %23

13:                                               ; preds = %6
  %14 = load i32, i32* @frm_cnt, align 4
  %15 = call i32 @qm_mcr_np_get(%struct.qm_mcr_queryfq_np* %5, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %21

18:                                               ; preds = %13
  %19 = call i32 @msleep(i32 20)
  br label %20

20:                                               ; preds = %18
  br i1 true, label %6, label %21

21:                                               ; preds = %20, %17
  %22 = call i32 @msleep(i32 20)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @qman_query_fq_np(%struct.qman_fq*, %struct.qm_mcr_queryfq_np*) #1

declare dso_local i32 @qm_mcr_np_get(%struct.qm_mcr_queryfq_np*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
