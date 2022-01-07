; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_bcast.c_lima_bcast_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_bcast.c_lima_bcast_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_device = type { %struct.lima_ip*, %struct.lima_sched_pipe* }
%struct.lima_ip = type { i32 }
%struct.lima_sched_pipe = type { %struct.lima_ip** }

@lima_pipe_pp = common dso_local global i32 0, align 4
@lima_ip_bcast = common dso_local global i32 0, align 4
@LIMA_BCAST_BROADCAST_MASK = common dso_local global i32 0, align 4
@lima_ip_pp0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lima_bcast_enable(%struct.lima_device* %0, i32 %1) #0 {
  %3 = alloca %struct.lima_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lima_sched_pipe*, align 8
  %6 = alloca %struct.lima_ip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lima_ip*, align 8
  store %struct.lima_device* %0, %struct.lima_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %11 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %10, i32 0, i32 1
  %12 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %11, align 8
  %13 = load i32, i32* @lima_pipe_pp, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %12, i64 %14
  store %struct.lima_sched_pipe* %15, %struct.lima_sched_pipe** %5, align 8
  %16 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %17 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %16, i32 0, i32 0
  %18 = load %struct.lima_ip*, %struct.lima_ip** %17, align 8
  %19 = load i32, i32* @lima_ip_bcast, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %18, i64 %20
  store %struct.lima_ip* %21, %struct.lima_ip** %6, align 8
  %22 = load i32, i32* @LIMA_BCAST_BROADCAST_MASK, align 4
  %23 = call i32 @bcast_read(i32 %22)
  %24 = and i32 %23, -65536
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %45, %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %31 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %30, i32 0, i32 0
  %32 = load %struct.lima_ip**, %struct.lima_ip*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.lima_ip*, %struct.lima_ip** %32, i64 %34
  %36 = load %struct.lima_ip*, %struct.lima_ip** %35, align 8
  store %struct.lima_ip* %36, %struct.lima_ip** %9, align 8
  %37 = load %struct.lima_ip*, %struct.lima_ip** %9, align 8
  %38 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @lima_ip_pp0, align 4
  %41 = sub nsw i32 %39, %40
  %42 = shl i32 1, %41
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %25

48:                                               ; preds = %25
  %49 = load i32, i32* @LIMA_BCAST_BROADCAST_MASK, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @bcast_write(i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @bcast_read(i32) #1

declare dso_local i32 @bcast_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
