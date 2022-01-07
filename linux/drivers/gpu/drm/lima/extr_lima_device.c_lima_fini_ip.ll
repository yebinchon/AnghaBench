; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_device.c_lima_fini_ip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_device.c_lima_fini_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip_desc = type { i32 (%struct.lima_ip.0*)* }
%struct.lima_ip.0 = type opaque
%struct.lima_device = type { %struct.lima_ip* }
%struct.lima_ip = type { i64 }

@lima_ip_desc = common dso_local global %struct.lima_ip_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lima_device*, i32)* @lima_fini_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lima_fini_ip(%struct.lima_device* %0, i32 %1) #0 {
  %3 = alloca %struct.lima_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lima_ip_desc*, align 8
  %6 = alloca %struct.lima_ip*, align 8
  store %struct.lima_device* %0, %struct.lima_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lima_ip_desc*, %struct.lima_ip_desc** @lima_ip_desc, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.lima_ip_desc, %struct.lima_ip_desc* %7, i64 %9
  store %struct.lima_ip_desc* %10, %struct.lima_ip_desc** %5, align 8
  %11 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %12 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %11, i32 0, i32 0
  %13 = load %struct.lima_ip*, %struct.lima_ip** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %13, i64 %15
  store %struct.lima_ip* %16, %struct.lima_ip** %6, align 8
  %17 = load %struct.lima_ip*, %struct.lima_ip** %6, align 8
  %18 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.lima_ip_desc*, %struct.lima_ip_desc** %5, align 8
  %23 = getelementptr inbounds %struct.lima_ip_desc, %struct.lima_ip_desc* %22, i32 0, i32 0
  %24 = load i32 (%struct.lima_ip.0*)*, i32 (%struct.lima_ip.0*)** %23, align 8
  %25 = load %struct.lima_ip*, %struct.lima_ip** %6, align 8
  %26 = bitcast %struct.lima_ip* %25 to %struct.lima_ip.0*
  %27 = call i32 %24(%struct.lima_ip.0* %26)
  br label %28

28:                                               ; preds = %21, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
