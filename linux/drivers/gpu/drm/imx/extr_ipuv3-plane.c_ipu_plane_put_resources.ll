; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_ipu_plane_put_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_ipu_plane_put_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_plane = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_plane_put_resources(%struct.ipu_plane* %0) #0 {
  %2 = alloca %struct.ipu_plane*, align 8
  store %struct.ipu_plane* %0, %struct.ipu_plane** %2, align 8
  %3 = load %struct.ipu_plane*, %struct.ipu_plane** %2, align 8
  %4 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @IS_ERR_OR_NULL(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.ipu_plane*, %struct.ipu_plane** %2, align 8
  %10 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ipu_dp_put(i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.ipu_plane*, %struct.ipu_plane** %2, align 8
  %15 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @IS_ERR_OR_NULL(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.ipu_plane*, %struct.ipu_plane** %2, align 8
  %21 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ipu_dmfc_put(i32 %22)
  br label %24

24:                                               ; preds = %19, %13
  %25 = load %struct.ipu_plane*, %struct.ipu_plane** %2, align 8
  %26 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IS_ERR_OR_NULL(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.ipu_plane*, %struct.ipu_plane** %2, align 8
  %32 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ipu_idmac_put(i32 %33)
  br label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.ipu_plane*, %struct.ipu_plane** %2, align 8
  %37 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @IS_ERR_OR_NULL(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.ipu_plane*, %struct.ipu_plane** %2, align 8
  %43 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ipu_idmac_put(i32 %44)
  br label %46

46:                                               ; preds = %41, %35
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @ipu_dp_put(i32) #1

declare dso_local i32 @ipu_dmfc_put(i32) #1

declare dso_local i32 @ipu_idmac_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
