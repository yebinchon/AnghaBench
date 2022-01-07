; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_is_valid_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_is_valid_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.devx_obj = type { i32 }

@event_cap = common dso_local global i32 0, align 4
@user_affiliated_events = common dso_local global i32 0, align 4
@user_unaffiliated_events = common dso_local global i32 0, align 4
@MAX_SUPP_EVENT_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32, i32*, %struct.devx_obj*)* @is_valid_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_events(%struct.mlx5_core_dev* %0, i32 %1, i32* %2, %struct.devx_obj* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.devx_obj*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.devx_obj* %3, %struct.devx_obj** %9, align 8
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %16 = load i32, i32* @event_cap, align 4
  %17 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %21 = load i32, i32* @user_affiliated_events, align 4
  %22 = call i32* @MLX5_CAP_DEV_EVENT(%struct.mlx5_core_dev* %20, i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %24 = load i32, i32* @user_unaffiliated_events, align 4
  %25 = call i32* @MLX5_CAP_DEV_EVENT(%struct.mlx5_core_dev* %23, i32 %24)
  store i32* %25, i32** %11, align 8
  br label %31

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.devx_obj*, %struct.devx_obj** %9, align 8
  %30 = call i32 @is_valid_events_legacy(i32 %27, i32* %28, %struct.devx_obj* %29)
  store i32 %30, i32* %5, align 4
  br label %100

31:                                               ; preds = %19
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %96, %31
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %99

36:                                               ; preds = %32
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAX_SUPP_EVENT_NUM, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %100

45:                                               ; preds = %36
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %50, 64
  store i32 %51, i32* %12, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = srem i32 %56, 64
  store i32 %57, i32* %13, align 4
  %58 = load %struct.devx_obj*, %struct.devx_obj** %9, align 8
  %59 = icmp ne %struct.devx_obj* %58, null
  br i1 %59, label %60, label %82

60:                                               ; preds = %45
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %96

68:                                               ; preds = %60
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @be64_to_cpu(i32 %73)
  %75 = load i32, i32* %13, align 4
  %76 = zext i32 %75 to i64
  %77 = shl i64 1, %76
  %78 = and i64 %74, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %100

81:                                               ; preds = %68
  br label %96

82:                                               ; preds = %45
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @be64_to_cpu(i32 %87)
  %89 = load i32, i32* %13, align 4
  %90 = zext i32 %89 to i64
  %91 = shl i64 1, %90
  %92 = and i64 %88, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %100

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %81, %67
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %32

99:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %94, %80, %44, %26
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32* @MLX5_CAP_DEV_EVENT(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @is_valid_events_legacy(i32, i32*, %struct.devx_obj*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
