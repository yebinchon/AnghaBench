; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bridge.c_drm_bridge_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bridge.c_drm_bridge_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_bridge*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_bridge_detach(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %3 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %4 = icmp ne %struct.drm_bridge* %3, null
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i64 @WARN_ON(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %38

10:                                               ; preds = %1
  %11 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %12 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %38

20:                                               ; preds = %10
  %21 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %22 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.drm_bridge*)*, i32 (%struct.drm_bridge*)** %24, align 8
  %26 = icmp ne i32 (%struct.drm_bridge*)* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %29 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.drm_bridge*)*, i32 (%struct.drm_bridge*)** %31, align 8
  %33 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %34 = call i32 %32(%struct.drm_bridge* %33)
  br label %35

35:                                               ; preds = %27, %20
  %36 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %37 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %35, %19, %9
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
