; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_aux_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_aux_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_aux_register(%struct.drm_dp_aux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_dp_aux*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %3, align 8
  %5 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %6 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %12 = call i32 @drm_dp_aux_init(%struct.drm_dp_aux* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* @I2C_CLASS_DDC, align 4
  %15 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %16 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @THIS_MODULE, align 4
  %19 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %20 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 8
  %22 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %23 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %26 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %30 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %34 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %13
  %38 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %39 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  br label %46

41:                                               ; preds = %13
  %42 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %43 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @dev_name(i32 %44)
  br label %46

46:                                               ; preds = %41, %37
  %47 = phi i64 [ %40, %37 ], [ %45, %41 ]
  %48 = call i32 @strlcpy(i32 %32, i64 %47, i32 4)
  %49 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %50 = call i32 @drm_dp_aux_register_devnode(%struct.drm_dp_aux* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %66

55:                                               ; preds = %46
  %56 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %57 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %56, i32 0, i32 0
  %58 = call i32 @i2c_add_adapter(%struct.TYPE_4__* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %63 = call i32 @drm_dp_aux_unregister_devnode(%struct.drm_dp_aux* %62)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %61, %53
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @drm_dp_aux_init(%struct.drm_dp_aux*) #1

declare dso_local i32 @strlcpy(i32, i64, i32) #1

declare dso_local i64 @dev_name(i32) #1

declare dso_local i32 @drm_dp_aux_register_devnode(%struct.drm_dp_aux*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_4__*) #1

declare dso_local i32 @drm_dp_aux_unregister_devnode(%struct.drm_dp_aux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
