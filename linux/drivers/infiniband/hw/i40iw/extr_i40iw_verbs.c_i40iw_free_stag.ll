; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_free_stag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_free_stag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, i32 }

@I40IW_CQPSQ_STAG_IDX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_device*, i32)* @i40iw_free_stag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_free_stag(%struct.i40iw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %8 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %6, %9
  %11 = load i32, i32* @I40IW_CQPSQ_STAG_IDX_SHIFT, align 4
  %12 = ashr i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %14 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %15 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @i40iw_free_resource(%struct.i40iw_device* %13, i32 %16, i32 %17)
  %19 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %20 = call i32 @i40iw_rem_devusecount(%struct.i40iw_device* %19)
  ret void
}

declare dso_local i32 @i40iw_free_resource(%struct.i40iw_device*, i32, i32) #1

declare dso_local i32 @i40iw_rem_devusecount(%struct.i40iw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
