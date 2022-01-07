; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_psp_dev_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_psp_dev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sp_device = type { %struct.psp_device* }
%struct.psp_device = type { i64 }

@misc_dev = common dso_local global %struct.TYPE_2__* null, align 8
@sev_exit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psp_dev_destroy(%struct.sp_device* %0) #0 {
  %2 = alloca %struct.sp_device*, align 8
  %3 = alloca %struct.psp_device*, align 8
  store %struct.sp_device* %0, %struct.sp_device** %2, align 8
  %4 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %5 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %4, i32 0, i32 0
  %6 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  store %struct.psp_device* %6, %struct.psp_device** %3, align 8
  %7 = load %struct.psp_device*, %struct.psp_device** %3, align 8
  %8 = icmp ne %struct.psp_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.psp_device*, %struct.psp_device** %3, align 8
  %12 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @misc_dev, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* @sev_exit, align 4
  %19 = call i32 @kref_put(i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %22 = load %struct.psp_device*, %struct.psp_device** %3, align 8
  %23 = call i32 @sp_free_psp_irq(%struct.sp_device* %21, %struct.psp_device* %22)
  br label %24

24:                                               ; preds = %20, %9
  ret void
}

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @sp_free_psp_irq(%struct.sp_device*, %struct.psp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
