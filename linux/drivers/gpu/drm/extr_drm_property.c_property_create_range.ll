; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_property_create_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_property_create_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property = type { i8** }
%struct.drm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_property* (%struct.drm_device*, i32, i8*, i8*, i8*)* @property_create_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_property* @property_create_range(%struct.drm_device* %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.drm_property*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %13, i32 %14, i8* %15, i32 2)
  store %struct.drm_property* %16, %struct.drm_property** %12, align 8
  %17 = load %struct.drm_property*, %struct.drm_property** %12, align 8
  %18 = icmp ne %struct.drm_property* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store %struct.drm_property* null, %struct.drm_property** %6, align 8
  br label %32

20:                                               ; preds = %5
  %21 = load i8*, i8** %10, align 8
  %22 = load %struct.drm_property*, %struct.drm_property** %12, align 8
  %23 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  store i8* %21, i8** %25, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load %struct.drm_property*, %struct.drm_property** %12, align 8
  %28 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  store i8* %26, i8** %30, align 8
  %31 = load %struct.drm_property*, %struct.drm_property** %12, align 8
  store %struct.drm_property* %31, %struct.drm_property** %6, align 8
  br label %32

32:                                               ; preds = %20, %19
  %33 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  ret %struct.drm_property* %33
}

declare dso_local %struct.drm_property* @drm_property_create(%struct.drm_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
