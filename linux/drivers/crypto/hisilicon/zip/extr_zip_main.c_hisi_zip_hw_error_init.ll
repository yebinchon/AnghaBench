; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_hw_error_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_hw_error_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip = type { i32 }

@QM_BASE_CE = common dso_local global i32 0, align 4
@QM_BASE_NFE = common dso_local global i32 0, align 4
@QM_ACC_WB_NOT_READY_TIMEOUT = common dso_local global i32 0, align 4
@QM_DB_RANDOM_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_zip*)* @hisi_zip_hw_error_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_zip_hw_error_init(%struct.hisi_zip* %0) #0 {
  %2 = alloca %struct.hisi_zip*, align 8
  store %struct.hisi_zip* %0, %struct.hisi_zip** %2, align 8
  %3 = load %struct.hisi_zip*, %struct.hisi_zip** %2, align 8
  %4 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %3, i32 0, i32 0
  %5 = load i32, i32* @QM_BASE_CE, align 4
  %6 = load i32, i32* @QM_BASE_NFE, align 4
  %7 = load i32, i32* @QM_ACC_WB_NOT_READY_TIMEOUT, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @QM_DB_RANDOM_INVALID, align 4
  %10 = call i32 @hisi_qm_hw_error_init(i32* %4, i32 %5, i32 %8, i32 0, i32 %9)
  %11 = load %struct.hisi_zip*, %struct.hisi_zip** %2, align 8
  %12 = call i32 @hisi_zip_hw_error_set_state(%struct.hisi_zip* %11, i32 1)
  ret void
}

declare dso_local i32 @hisi_qm_hw_error_init(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @hisi_zip_hw_error_set_state(%struct.hisi_zip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
