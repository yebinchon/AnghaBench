; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-scu.c_imx_scu_get_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-scu.c_imx_scu_get_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_sc_ipc = type { i32 }

@imx_sc_ipc_handle = common dso_local global %struct.imx_sc_ipc* null, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_scu_get_handle(%struct.imx_sc_ipc** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_sc_ipc**, align 8
  store %struct.imx_sc_ipc** %0, %struct.imx_sc_ipc*** %3, align 8
  %4 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** @imx_sc_ipc_handle, align 8
  %5 = icmp ne %struct.imx_sc_ipc* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EPROBE_DEFER, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %12

9:                                                ; preds = %1
  %10 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** @imx_sc_ipc_handle, align 8
  %11 = load %struct.imx_sc_ipc**, %struct.imx_sc_ipc*** %3, align 8
  store %struct.imx_sc_ipc* %10, %struct.imx_sc_ipc** %11, align 8
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
