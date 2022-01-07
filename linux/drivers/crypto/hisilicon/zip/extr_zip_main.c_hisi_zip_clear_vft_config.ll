; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_clear_vft_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_clear_vft_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip = type { %struct.hisi_qm, %struct.hisi_zip_ctrl* }
%struct.hisi_qm = type { i32 }
%struct.hisi_zip_ctrl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_zip*)* @hisi_zip_clear_vft_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_zip_clear_vft_config(%struct.hisi_zip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_zip*, align 8
  %4 = alloca %struct.hisi_zip_ctrl*, align 8
  %5 = alloca %struct.hisi_qm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hisi_zip* %0, %struct.hisi_zip** %3, align 8
  %9 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %10 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %9, i32 0, i32 1
  %11 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %10, align 8
  store %struct.hisi_zip_ctrl* %11, %struct.hisi_zip_ctrl** %4, align 8
  %12 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %13 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %12, i32 0, i32 0
  store %struct.hisi_qm* %13, %struct.hisi_qm** %5, align 8
  %14 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %4, align 8
  %15 = getelementptr inbounds %struct.hisi_zip_ctrl, %struct.hisi_zip_ctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %17

17:                                               ; preds = %30, %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @hisi_qm_set_vft(%struct.hisi_qm* %22, i32 %23, i32 0, i32 0)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %2, align 4
  br label %36

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %17

33:                                               ; preds = %17
  %34 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %4, align 8
  %35 = getelementptr inbounds %struct.hisi_zip_ctrl, %struct.hisi_zip_ctrl* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @hisi_qm_set_vft(%struct.hisi_qm*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
