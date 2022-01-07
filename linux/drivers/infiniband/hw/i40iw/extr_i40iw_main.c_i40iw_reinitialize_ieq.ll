; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_reinitialize_ieq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_reinitialize_ieq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i64 }
%struct.i40iw_device = type { i32, i32 }

@I40IW_PUDA_RSRC_TYPE_IEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_reinitialize_ieq(%struct.i40iw_sc_dev* %0) #0 {
  %2 = alloca %struct.i40iw_sc_dev*, align 8
  %3 = alloca %struct.i40iw_device*, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %2, align 8
  %4 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %2, align 8
  %5 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.i40iw_device*
  store %struct.i40iw_device* %7, %struct.i40iw_device** %3, align 8
  %8 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %9 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %8, i32 0, i32 1
  %10 = load i32, i32* @I40IW_PUDA_RSRC_TYPE_IEQ, align 4
  %11 = call i32 @i40iw_puda_dele_resources(i32* %9, i32 %10, i32 0)
  %12 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %13 = call i64 @i40iw_initialize_ieq(%struct.i40iw_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %17 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %19 = call i32 @i40iw_request_reset(%struct.i40iw_device* %18)
  br label %20

20:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @i40iw_puda_dele_resources(i32*, i32, i32) #1

declare dso_local i64 @i40iw_initialize_ieq(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_request_reset(%struct.i40iw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
