; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_set_vft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_set_vft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hisi_qm_set_vft(%struct.hisi_qm* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hisi_qm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.hisi_qm* %0, %struct.hisi_qm** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %12 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* %10, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %17, %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %36

30:                                               ; preds = %21
  %31 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @qm_set_sqc_cqc_vft(%struct.hisi_qm* %31, i64 %32, i64 %33, i64 %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %30, %27
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @qm_set_sqc_cqc_vft(%struct.hisi_qm*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
