; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_device.c_nvif_device_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_device.c_nvif_device_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_device = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvif_device_fini(%struct.nvif_device* %0) #0 {
  %2 = alloca %struct.nvif_device*, align 8
  store %struct.nvif_device* %0, %struct.nvif_device** %2, align 8
  %3 = load %struct.nvif_device*, %struct.nvif_device** %2, align 8
  %4 = call i32 @nvif_user_fini(%struct.nvif_device* %3)
  %5 = load %struct.nvif_device*, %struct.nvif_device** %2, align 8
  %6 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @kfree(i32* %7)
  %9 = load %struct.nvif_device*, %struct.nvif_device** %2, align 8
  %10 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct.nvif_device*, %struct.nvif_device** %2, align 8
  %12 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %11, i32 0, i32 0
  %13 = call i32 @nvif_object_fini(i32* %12)
  ret void
}

declare dso_local i32 @nvif_user_fini(%struct.nvif_device*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @nvif_object_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
