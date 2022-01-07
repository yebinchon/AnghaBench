; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_soft_reset_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_soft_reset_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LIMA_PP_INT_MASK = common dso_local global i32 0, align 4
@LIMA_PP_INT_RAWSTAT = common dso_local global i32 0, align 4
@LIMA_PP_IRQ_MASK_ALL = common dso_local global i32 0, align 4
@LIMA_PP_CTRL = common dso_local global i32 0, align 4
@LIMA_PP_CTRL_SOFT_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lima_ip*)* @lima_pp_soft_reset_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lima_pp_soft_reset_async(%struct.lima_ip* %0) #0 {
  %2 = alloca %struct.lima_ip*, align 8
  store %struct.lima_ip* %0, %struct.lima_ip** %2, align 8
  %3 = load %struct.lima_ip*, %struct.lima_ip** %2, align 8
  %4 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %21

9:                                                ; preds = %1
  %10 = load i32, i32* @LIMA_PP_INT_MASK, align 4
  %11 = call i32 @pp_write(i32 %10, i32 0)
  %12 = load i32, i32* @LIMA_PP_INT_RAWSTAT, align 4
  %13 = load i32, i32* @LIMA_PP_IRQ_MASK_ALL, align 4
  %14 = call i32 @pp_write(i32 %12, i32 %13)
  %15 = load i32, i32* @LIMA_PP_CTRL, align 4
  %16 = load i32, i32* @LIMA_PP_CTRL_SOFT_RESET, align 4
  %17 = call i32 @pp_write(i32 %15, i32 %16)
  %18 = load %struct.lima_ip*, %struct.lima_ip** %2, align 8
  %19 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @pp_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
