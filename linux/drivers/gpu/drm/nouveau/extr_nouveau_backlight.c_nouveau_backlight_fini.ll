; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_backlight.c_nouveau_backlight_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_backlight.c_nouveau_backlight_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.nouveau_connector = type { %struct.nouveau_backlight* }
%struct.nouveau_backlight = type { i64, i32 }

@bl_ida = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_backlight_fini(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.nouveau_connector*, align 8
  %4 = alloca %struct.nouveau_backlight*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %5 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %6 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %5)
  store %struct.nouveau_connector* %6, %struct.nouveau_connector** %3, align 8
  %7 = load %struct.nouveau_connector*, %struct.nouveau_connector** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %7, i32 0, i32 0
  %9 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %8, align 8
  store %struct.nouveau_backlight* %9, %struct.nouveau_backlight** %4, align 8
  %10 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %4, align 8
  %11 = icmp ne %struct.nouveau_backlight* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %4, align 8
  %15 = getelementptr inbounds %struct.nouveau_backlight, %struct.nouveau_backlight* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %4, align 8
  %20 = getelementptr inbounds %struct.nouveau_backlight, %struct.nouveau_backlight* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ida_simple_remove(i32* @bl_ida, i64 %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %4, align 8
  %25 = getelementptr inbounds %struct.nouveau_backlight, %struct.nouveau_backlight* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @backlight_device_unregister(i32 %26)
  %28 = load %struct.nouveau_connector*, %struct.nouveau_connector** %3, align 8
  %29 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %28, i32 0, i32 0
  store %struct.nouveau_backlight* null, %struct.nouveau_backlight** %29, align 8
  %30 = load %struct.nouveau_backlight*, %struct.nouveau_backlight** %4, align 8
  %31 = call i32 @kfree(%struct.nouveau_backlight* %30)
  br label %32

32:                                               ; preds = %23, %12
  ret void
}

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local i32 @ida_simple_remove(i32*, i64) #1

declare dso_local i32 @backlight_device_unregister(i32) #1

declare dso_local i32 @kfree(%struct.nouveau_backlight*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
