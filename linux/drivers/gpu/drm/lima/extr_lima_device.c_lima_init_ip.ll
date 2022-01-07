; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_device.c_lima_init_ip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_device.c_lima_init_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip_desc = type { i32*, i32*, i32 (%struct.lima_ip.0*)*, i64 }
%struct.lima_ip.0 = type opaque
%struct.lima_device = type { i64, i32, i64, %struct.lima_ip* }
%struct.lima_ip = type { i32, i32, i32, i64, %struct.lima_device* }

@lima_ip_desc = common dso_local global %struct.lima_ip_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lima_device*, i32)* @lima_init_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_init_ip(%struct.lima_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lima_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lima_ip_desc*, align 8
  %7 = alloca %struct.lima_ip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lima_device* %0, %struct.lima_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.lima_ip_desc*, %struct.lima_ip_desc** @lima_ip_desc, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.lima_ip_desc, %struct.lima_ip_desc* %11, i64 %13
  store %struct.lima_ip_desc* %14, %struct.lima_ip_desc** %6, align 8
  %15 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %16 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %15, i32 0, i32 3
  %17 = load %struct.lima_ip*, %struct.lima_ip** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %17, i64 %19
  store %struct.lima_ip* %20, %struct.lima_ip** %7, align 8
  %21 = load %struct.lima_ip_desc*, %struct.lima_ip_desc** %6, align 8
  %22 = getelementptr inbounds %struct.lima_ip_desc, %struct.lima_ip_desc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %25 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.lima_ip_desc*, %struct.lima_ip_desc** %6, align 8
  %30 = getelementptr inbounds %struct.lima_ip_desc, %struct.lima_ip_desc* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %33 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %95

40:                                               ; preds = %2
  %41 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %42 = load %struct.lima_ip*, %struct.lima_ip** %7, align 8
  %43 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %42, i32 0, i32 4
  store %struct.lima_device* %41, %struct.lima_device** %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.lima_ip*, %struct.lima_ip** %7, align 8
  %46 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %48 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load %struct.lima_ip*, %struct.lima_ip** %7, align 8
  %54 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load %struct.lima_ip_desc*, %struct.lima_ip_desc** %6, align 8
  %56 = getelementptr inbounds %struct.lima_ip_desc, %struct.lima_ip_desc* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %40
  %60 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %61 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.lima_ip_desc*, %struct.lima_ip_desc** %6, align 8
  %64 = getelementptr inbounds %struct.lima_ip_desc, %struct.lima_ip_desc* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @platform_get_irq_byname(i32 %62, i64 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %87

70:                                               ; preds = %59
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.lima_ip*, %struct.lima_ip** %7, align 8
  %73 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %40
  %75 = load %struct.lima_ip_desc*, %struct.lima_ip_desc** %6, align 8
  %76 = getelementptr inbounds %struct.lima_ip_desc, %struct.lima_ip_desc* %75, i32 0, i32 2
  %77 = load i32 (%struct.lima_ip.0*)*, i32 (%struct.lima_ip.0*)** %76, align 8
  %78 = load %struct.lima_ip*, %struct.lima_ip** %7, align 8
  %79 = bitcast %struct.lima_ip* %78 to %struct.lima_ip.0*
  %80 = call i32 %77(%struct.lima_ip.0* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %74
  %84 = load %struct.lima_ip*, %struct.lima_ip** %7, align 8
  %85 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %84, i32 0, i32 2
  store i32 1, i32* %85, align 8
  store i32 0, i32* %3, align 4
  br label %95

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %69
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  br label %93

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %83, %39
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @platform_get_irq_byname(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
