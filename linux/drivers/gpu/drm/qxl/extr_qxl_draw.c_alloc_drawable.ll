; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_draw.c_alloc_drawable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_draw.c_alloc_drawable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32 }
%struct.qxl_release = type { i32 }

@QXL_RELEASE_DRAWABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qxl_device*, %struct.qxl_release**)* @alloc_drawable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_drawable(%struct.qxl_device* %0, %struct.qxl_release** %1) #0 {
  %3 = alloca %struct.qxl_device*, align 8
  %4 = alloca %struct.qxl_release**, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %3, align 8
  store %struct.qxl_release** %1, %struct.qxl_release*** %4, align 8
  %5 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %6 = load i32, i32* @QXL_RELEASE_DRAWABLE, align 4
  %7 = load %struct.qxl_release**, %struct.qxl_release*** %4, align 8
  %8 = call i32 @qxl_alloc_release_reserved(%struct.qxl_device* %5, i32 4, i32 %6, %struct.qxl_release** %7, i32* null)
  ret i32 %8
}

declare dso_local i32 @qxl_alloc_release_reserved(%struct.qxl_device*, i32, i32, %struct.qxl_release**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
