; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_device.c_lima_init_gp_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_device.c_lima_init_gp_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_device = type { i64, %struct.lima_sched_pipe* }
%struct.lima_sched_pipe = type { i32, i64*, i32, i64*, i32, i64* }

@lima_pipe_gp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"gp\00", align 1
@lima_ip_l2_cache0 = common dso_local global i64 0, align 8
@lima_ip_gpmmu = common dso_local global i64 0, align 8
@lima_ip_gp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lima_device*)* @lima_init_gp_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_init_gp_pipe(%struct.lima_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lima_device*, align 8
  %4 = alloca %struct.lima_sched_pipe*, align 8
  %5 = alloca i32, align 4
  store %struct.lima_device* %0, %struct.lima_device** %3, align 8
  %6 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %7 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %6, i32 0, i32 1
  %8 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %7, align 8
  %9 = load i32, i32* @lima_pipe_gp, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %8, i64 %10
  store %struct.lima_sched_pipe* %11, %struct.lima_sched_pipe** %4, align 8
  %12 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %13 = call i32 @lima_sched_pipe_init(%struct.lima_sched_pipe* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %70

18:                                               ; preds = %1
  %19 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %20 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @lima_ip_l2_cache0, align 8
  %23 = add nsw i64 %21, %22
  %24 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %25 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %24, i32 0, i32 5
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %28 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i64, i64* %26, i64 %31
  store i64 %23, i64* %32, align 8
  %33 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %34 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @lima_ip_gpmmu, align 8
  %37 = add nsw i64 %35, %36
  %38 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %39 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %38, i32 0, i32 3
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %42 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i64, i64* %40, i64 %45
  store i64 %37, i64* %46, align 8
  %47 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %48 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @lima_ip_gp, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %53 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %56 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i64, i64* %54, i64 %59
  store i64 %51, i64* %60, align 8
  %61 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %62 = call i32 @lima_gp_pipe_init(%struct.lima_device* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %18
  %66 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %67 = call i32 @lima_sched_pipe_fini(%struct.lima_sched_pipe* %66)
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %65, %16
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @lima_sched_pipe_init(%struct.lima_sched_pipe*, i8*) #1

declare dso_local i32 @lima_gp_pipe_init(%struct.lima_device*) #1

declare dso_local i32 @lima_sched_pipe_fini(%struct.lima_sched_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
