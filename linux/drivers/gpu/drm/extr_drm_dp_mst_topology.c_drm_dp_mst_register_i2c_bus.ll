; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_register_i2c_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_register_i2c_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { %struct.TYPE_5__, %struct.TYPE_6__*, i64 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32, i32, %struct.drm_dp_aux*, i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@drm_dp_mst_i2c_algo = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_aux*)* @drm_dp_mst_register_i2c_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_mst_register_i2c_bus(%struct.drm_dp_aux* %0) #0 {
  %2 = alloca %struct.drm_dp_aux*, align 8
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %2, align 8
  %3 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %4 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 6
  store i32* @drm_dp_mst_i2c_algo, i32** %5, align 8
  %6 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %7 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %8 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 5
  store %struct.drm_dp_aux* %6, %struct.drm_dp_aux** %9, align 8
  %10 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %11 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 3, i32* %12, align 8
  %13 = load i32, i32* @I2C_CLASS_DDC, align 4
  %14 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %15 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @THIS_MODULE, align 4
  %18 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %19 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 8
  %21 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %22 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %25 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %27, align 8
  %28 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %29 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %34 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 8
  %37 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %38 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %42 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %1
  %46 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %47 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  br label %54

49:                                               ; preds = %1
  %50 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %51 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i64 @dev_name(%struct.TYPE_6__* %52)
  br label %54

54:                                               ; preds = %49, %45
  %55 = phi i64 [ %48, %45 ], [ %53, %49 ]
  %56 = call i32 @strlcpy(i32 %40, i64 %55, i32 4)
  %57 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %58 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %57, i32 0, i32 0
  %59 = call i32 @i2c_add_adapter(%struct.TYPE_5__* %58)
  ret i32 %59
}

declare dso_local i32 @strlcpy(i32, i64, i32) #1

declare dso_local i64 @dev_name(%struct.TYPE_6__*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
