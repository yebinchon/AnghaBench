; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_pf_probe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_pf_probe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip = type { %struct.hisi_zip_ctrl*, %struct.hisi_qm }
%struct.hisi_zip_ctrl = type { %struct.hisi_zip* }
%struct.hisi_qm = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HZIP_QUEUE_NUM_V1 = common dso_local global i32 0, align 4
@HZIP_QUEUE_NUM_V2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_zip*)* @hisi_zip_pf_probe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_zip_pf_probe_init(%struct.hisi_zip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_zip*, align 8
  %4 = alloca %struct.hisi_qm*, align 8
  %5 = alloca %struct.hisi_zip_ctrl*, align 8
  store %struct.hisi_zip* %0, %struct.hisi_zip** %3, align 8
  %6 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %7 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %6, i32 0, i32 1
  store %struct.hisi_qm* %7, %struct.hisi_qm** %4, align 8
  %8 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %9 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.hisi_zip_ctrl* @devm_kzalloc(i32* %11, i32 8, i32 %12)
  store %struct.hisi_zip_ctrl* %13, %struct.hisi_zip_ctrl** %5, align 8
  %14 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %5, align 8
  %15 = icmp ne %struct.hisi_zip_ctrl* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %1
  %20 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %5, align 8
  %21 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %22 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %21, i32 0, i32 0
  store %struct.hisi_zip_ctrl* %20, %struct.hisi_zip_ctrl** %22, align 8
  %23 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %24 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %5, align 8
  %25 = getelementptr inbounds %struct.hisi_zip_ctrl, %struct.hisi_zip_ctrl* %24, i32 0, i32 0
  store %struct.hisi_zip* %23, %struct.hisi_zip** %25, align 8
  %26 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %27 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %37 [
    i32 129, label %29
    i32 128, label %33
  ]

29:                                               ; preds = %19
  %30 = load i32, i32* @HZIP_QUEUE_NUM_V1, align 4
  %31 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %32 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %40

33:                                               ; preds = %19
  %34 = load i32, i32* @HZIP_QUEUE_NUM_V2, align 4
  %35 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %36 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %40

37:                                               ; preds = %19
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %47

40:                                               ; preds = %33, %29
  %41 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %42 = call i32 @hisi_zip_set_user_domain_and_cache(%struct.hisi_zip* %41)
  %43 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %44 = call i32 @hisi_zip_hw_error_init(%struct.hisi_zip* %43)
  %45 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %46 = call i32 @hisi_zip_debug_regs_clear(%struct.hisi_zip* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %40, %37, %16
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.hisi_zip_ctrl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @hisi_zip_set_user_domain_and_cache(%struct.hisi_zip*) #1

declare dso_local i32 @hisi_zip_hw_error_init(%struct.hisi_zip*) #1

declare dso_local i32 @hisi_zip_debug_regs_clear(%struct.hisi_zip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
