; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_channel_hw.c_synchronize_syncpt_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_channel_hw.c_synchronize_syncpt_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_job = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.host1x = type { %struct.host1x_syncpt* }
%struct.host1x_syncpt = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@HOST1X_CLASS_HOST1X = common dso_local global i32 0, align 4
@HOST1X_UCLASS_LOAD_SYNCPT_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x_job*)* @synchronize_syncpt_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synchronize_syncpt_base(%struct.host1x_job* %0) #0 {
  %2 = alloca %struct.host1x_job*, align 8
  %3 = alloca %struct.host1x*, align 8
  %4 = alloca %struct.host1x_syncpt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.host1x_job* %0, %struct.host1x_job** %2, align 8
  %7 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %8 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.host1x* @dev_get_drvdata(i32 %13)
  store %struct.host1x* %14, %struct.host1x** %3, align 8
  %15 = load %struct.host1x*, %struct.host1x** %3, align 8
  %16 = getelementptr inbounds %struct.host1x, %struct.host1x* %15, i32 0, i32 0
  %17 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %16, align 8
  %18 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %19 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %17, i64 %21
  store %struct.host1x_syncpt* %22, %struct.host1x_syncpt** %4, align 8
  %23 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %4, align 8
  %24 = call i32 @host1x_syncpt_read_max(%struct.host1x_syncpt* %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %4, align 8
  %26 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %31 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* @HOST1X_CLASS_HOST1X, align 4
  %35 = load i32, i32* @HOST1X_UCLASS_LOAD_SYNCPT_BASE, align 4
  %36 = call i32 @host1x_opcode_setclass(i32 %34, i32 %35, i32 1)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @HOST1X_UCLASS_LOAD_SYNCPT_BASE_BASE_INDX_F(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @HOST1X_UCLASS_LOAD_SYNCPT_BASE_VALUE_F(i32 %39)
  %41 = or i32 %38, %40
  %42 = call i32 @host1x_cdma_push(i32* %33, i32 %36, i32 %41)
  ret void
}

declare dso_local %struct.host1x* @dev_get_drvdata(i32) #1

declare dso_local i32 @host1x_syncpt_read_max(%struct.host1x_syncpt*) #1

declare dso_local i32 @host1x_cdma_push(i32*, i32, i32) #1

declare dso_local i32 @host1x_opcode_setclass(i32, i32, i32) #1

declare dso_local i32 @HOST1X_UCLASS_LOAD_SYNCPT_BASE_BASE_INDX_F(i32) #1

declare dso_local i32 @HOST1X_UCLASS_LOAD_SYNCPT_BASE_VALUE_F(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
