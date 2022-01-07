; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_replace_blob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_replace_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property_blob = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_property_replace_blob(%struct.drm_property_blob** %0, %struct.drm_property_blob* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_property_blob**, align 8
  %5 = alloca %struct.drm_property_blob*, align 8
  %6 = alloca %struct.drm_property_blob*, align 8
  store %struct.drm_property_blob** %0, %struct.drm_property_blob*** %4, align 8
  store %struct.drm_property_blob* %1, %struct.drm_property_blob** %5, align 8
  %7 = load %struct.drm_property_blob**, %struct.drm_property_blob*** %4, align 8
  %8 = load %struct.drm_property_blob*, %struct.drm_property_blob** %7, align 8
  store %struct.drm_property_blob* %8, %struct.drm_property_blob** %6, align 8
  %9 = load %struct.drm_property_blob*, %struct.drm_property_blob** %6, align 8
  %10 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %11 = icmp eq %struct.drm_property_blob* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.drm_property_blob*, %struct.drm_property_blob** %6, align 8
  %15 = call i32 @drm_property_blob_put(%struct.drm_property_blob* %14)
  %16 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %17 = icmp ne %struct.drm_property_blob* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %20 = call i32 @drm_property_blob_get(%struct.drm_property_blob* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %23 = load %struct.drm_property_blob**, %struct.drm_property_blob*** %4, align 8
  store %struct.drm_property_blob* %22, %struct.drm_property_blob** %23, align 8
  store i32 1, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @drm_property_blob_put(%struct.drm_property_blob*) #1

declare dso_local i32 @drm_property_blob_get(%struct.drm_property_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
