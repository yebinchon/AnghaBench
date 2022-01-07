; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_add_mst_branch_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_add_mst_branch_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_branch = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_dp_mst_branch* (i32, i32*)* @drm_dp_add_mst_branch_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_dp_mst_branch* @drm_dp_add_mst_branch_device(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.drm_dp_mst_branch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.drm_dp_mst_branch*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.drm_dp_mst_branch* @kzalloc(i32 20, i32 %7)
  store %struct.drm_dp_mst_branch* %8, %struct.drm_dp_mst_branch** %6, align 8
  %9 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %10 = icmp ne %struct.drm_dp_mst_branch* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.drm_dp_mst_branch* null, %struct.drm_dp_mst_branch** %3, align 8
  br label %37

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %15 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %20 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sdiv i32 %23, 2
  %25 = call i32 @memcpy(i32 %21, i32* %22, i32 %24)
  br label %26

26:                                               ; preds = %18, %12
  %27 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %28 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %27, i32 0, i32 3
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %31 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %30, i32 0, i32 2
  %32 = call i32 @kref_init(i32* %31)
  %33 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %34 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %33, i32 0, i32 1
  %35 = call i32 @kref_init(i32* %34)
  %36 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  store %struct.drm_dp_mst_branch* %36, %struct.drm_dp_mst_branch** %3, align 8
  br label %37

37:                                               ; preds = %26, %11
  %38 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %3, align 8
  ret %struct.drm_dp_mst_branch* %38
}

declare dso_local %struct.drm_dp_mst_branch* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
