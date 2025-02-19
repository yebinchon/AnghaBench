; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c_dpu_iomap_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c_dpu_iomap_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to get memory resource: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.platform_device*, i8*)* @dpu_iomap_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dpu_iomap_size(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = load i32, i32* @IORESOURCE_MEM, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %7, i32 %8, i8* %9)
  store %struct.resource* %10, %struct.resource** %6, align 8
  %11 = load %struct.resource*, %struct.resource** %6, align 8
  %12 = icmp ne %struct.resource* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i64 0, i64* %3, align 8
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.resource*, %struct.resource** %6, align 8
  %18 = call i64 @resource_size(%struct.resource* %17)
  store i64 %18, i64* %3, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i64, i64* %3, align 8
  ret i64 %20
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @DRM_ERROR(i8*, i8*) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
