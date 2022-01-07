; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_encoder.c_drm_encoder_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_encoder.c_drm_encoder_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, i32, i32, %struct.drm_bridge*, %struct.drm_device* }
%struct.drm_bridge = type { %struct.drm_bridge* }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_encoder_cleanup(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_bridge*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %6, i32 0, i32 4
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 3
  %11 = load %struct.drm_bridge*, %struct.drm_bridge** %10, align 8
  %12 = icmp ne %struct.drm_bridge* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 3
  %16 = load %struct.drm_bridge*, %struct.drm_bridge** %15, align 8
  store %struct.drm_bridge* %16, %struct.drm_bridge** %4, align 8
  br label %17

17:                                               ; preds = %20, %13
  %18 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %19 = icmp ne %struct.drm_bridge* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %22 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %21, i32 0, i32 0
  %23 = load %struct.drm_bridge*, %struct.drm_bridge** %22, align 8
  store %struct.drm_bridge* %23, %struct.drm_bridge** %5, align 8
  %24 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %25 = call i32 @drm_bridge_detach(%struct.drm_bridge* %24)
  %26 = load %struct.drm_bridge*, %struct.drm_bridge** %5, align 8
  store %struct.drm_bridge* %26, %struct.drm_bridge** %4, align 8
  br label %17

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %31 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %30, i32 0, i32 2
  %32 = call i32 @drm_mode_object_unregister(%struct.drm_device* %29, i32* %31)
  %33 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %34 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kfree(i32 %35)
  %37 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %38 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %37, i32 0, i32 0
  %39 = call i32 @list_del(i32* %38)
  %40 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %46 = call i32 @memset(%struct.drm_encoder* %45, i32 0, i32 32)
  ret void
}

declare dso_local i32 @drm_bridge_detach(%struct.drm_bridge*) #1

declare dso_local i32 @drm_mode_object_unregister(%struct.drm_device*, i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @memset(%struct.drm_encoder*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
