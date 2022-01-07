; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_rem_pdusecount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_rem_pdusecount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_pd = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i40iw_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_rem_pdusecount(%struct.i40iw_pd* %0, %struct.i40iw_device* %1) #0 {
  %3 = alloca %struct.i40iw_pd*, align 8
  %4 = alloca %struct.i40iw_device*, align 8
  store %struct.i40iw_pd* %0, %struct.i40iw_pd** %3, align 8
  store %struct.i40iw_device* %1, %struct.i40iw_device** %4, align 8
  %5 = load %struct.i40iw_pd*, %struct.i40iw_pd** %3, align 8
  %6 = getelementptr inbounds %struct.i40iw_pd, %struct.i40iw_pd* %5, i32 0, i32 1
  %7 = call i32 @atomic_dec_and_test(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %20

10:                                               ; preds = %2
  %11 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %12 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %13 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.i40iw_pd*, %struct.i40iw_pd** %3, align 8
  %16 = getelementptr inbounds %struct.i40iw_pd, %struct.i40iw_pd* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @i40iw_free_resource(%struct.i40iw_device* %11, i32 %14, i32 %18)
  br label %20

20:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @i40iw_free_resource(%struct.i40iw_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
