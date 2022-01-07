; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_xfer_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_xfer_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_xfer = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.scmi_handle = type { i32 }
%struct.scmi_xfers_info = type { %struct.scmi_xfer*, i32, i32 }
%struct.scmi_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scmi_xfer* (%struct.scmi_handle*, %struct.scmi_xfers_info*)* @scmi_xfer_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scmi_xfer* @scmi_xfer_get(%struct.scmi_handle* %0, %struct.scmi_xfers_info* %1) #0 {
  %3 = alloca %struct.scmi_xfer*, align 8
  %4 = alloca %struct.scmi_handle*, align 8
  %5 = alloca %struct.scmi_xfers_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.scmi_xfer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scmi_info*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %4, align 8
  store %struct.scmi_xfers_info* %1, %struct.scmi_xfers_info** %5, align 8
  %11 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %12 = call %struct.scmi_info* @handle_to_scmi_info(%struct.scmi_handle* %11)
  store %struct.scmi_info* %12, %struct.scmi_info** %10, align 8
  %13 = load %struct.scmi_xfers_info*, %struct.scmi_xfers_info** %5, align 8
  %14 = getelementptr inbounds %struct.scmi_xfers_info, %struct.scmi_xfers_info* %13, i32 0, i32 1
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.scmi_xfers_info*, %struct.scmi_xfers_info** %5, align 8
  %18 = getelementptr inbounds %struct.scmi_xfers_info, %struct.scmi_xfers_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.scmi_info*, %struct.scmi_info** %10, align 8
  %21 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @find_first_zero_bit(i32 %19, i64 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.scmi_info*, %struct.scmi_info** %10, align 8
  %28 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %26, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load %struct.scmi_xfers_info*, %struct.scmi_xfers_info** %5, align 8
  %35 = getelementptr inbounds %struct.scmi_xfers_info, %struct.scmi_xfers_info* %34, i32 0, i32 1
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.scmi_xfer* @ERR_PTR(i32 %39)
  store %struct.scmi_xfer* %40, %struct.scmi_xfer** %3, align 8
  br label %65

41:                                               ; preds = %2
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.scmi_xfers_info*, %struct.scmi_xfers_info** %5, align 8
  %44 = getelementptr inbounds %struct.scmi_xfers_info, %struct.scmi_xfers_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @set_bit(i64 %42, i32 %45)
  %47 = load %struct.scmi_xfers_info*, %struct.scmi_xfers_info** %5, align 8
  %48 = getelementptr inbounds %struct.scmi_xfers_info, %struct.scmi_xfers_info* %47, i32 0, i32 1
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %6, align 8
  %52 = load %struct.scmi_xfers_info*, %struct.scmi_xfers_info** %5, align 8
  %53 = getelementptr inbounds %struct.scmi_xfers_info, %struct.scmi_xfers_info* %52, i32 0, i32 0
  %54 = load %struct.scmi_xfer*, %struct.scmi_xfer** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %54, i64 %55
  store %struct.scmi_xfer* %56, %struct.scmi_xfer** %7, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.scmi_xfer*, %struct.scmi_xfer** %7, align 8
  %59 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load %struct.scmi_xfer*, %struct.scmi_xfer** %7, align 8
  %62 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %61, i32 0, i32 0
  %63 = call i32 @reinit_completion(i32* %62)
  %64 = load %struct.scmi_xfer*, %struct.scmi_xfer** %7, align 8
  store %struct.scmi_xfer* %64, %struct.scmi_xfer** %3, align 8
  br label %65

65:                                               ; preds = %41, %33
  %66 = load %struct.scmi_xfer*, %struct.scmi_xfer** %3, align 8
  ret %struct.scmi_xfer* %66
}

declare dso_local %struct.scmi_info* @handle_to_scmi_info(%struct.scmi_handle*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.scmi_xfer* @ERR_PTR(i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
