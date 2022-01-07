; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_alloc_dm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_alloc_dm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_dm = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_dm_alloc_attr = type { i32, i32 }
%struct.uverbs_attr_bundle = type { i32 }
%struct.mlx5_ib_dm = type { i32, %struct.ib_dm }

@MLX5_IB_ATTR_ALLOC_DM_REQ_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"alloc_dm req: dm_type=%d user_length=0x%llx log_alignment=%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_SW_ICM_TYPE_STEERING = common dso_local global i32 0, align 4
@MLX5_SW_ICM_TYPE_HEADER_MODIFY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_dm* @mlx5_ib_alloc_dm(%struct.ib_device* %0, %struct.ib_ucontext* %1, %struct.ib_dm_alloc_attr* %2, %struct.uverbs_attr_bundle* %3) #0 {
  %5 = alloca %struct.ib_dm*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.ib_ucontext*, align 8
  %8 = alloca %struct.ib_dm_alloc_attr*, align 8
  %9 = alloca %struct.uverbs_attr_bundle*, align 8
  %10 = alloca %struct.mlx5_ib_dm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store %struct.ib_ucontext* %1, %struct.ib_ucontext** %7, align 8
  store %struct.ib_dm_alloc_attr* %2, %struct.ib_dm_alloc_attr** %8, align 8
  store %struct.uverbs_attr_bundle* %3, %struct.uverbs_attr_bundle** %9, align 8
  %13 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %14 = load i32, i32* @MLX5_IB_ATTR_ALLOC_DM_REQ_TYPE, align 4
  %15 = call i32 @uverbs_get_const_default(i32* %11, %struct.uverbs_attr_bundle* %13, i32 %14, i32 129)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  %20 = call %struct.ib_dm* @ERR_PTR(i32 %19)
  store %struct.ib_dm* %20, %struct.ib_dm** %5, align 8
  br label %90

21:                                               ; preds = %4
  %22 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %23 = call i32 @to_mdev(%struct.ib_device* %22)
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.ib_dm_alloc_attr*, %struct.ib_dm_alloc_attr** %8, align 8
  %26 = getelementptr inbounds %struct.ib_dm_alloc_attr, %struct.ib_dm_alloc_attr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ib_dm_alloc_attr*, %struct.ib_dm_alloc_attr** %8, align 8
  %29 = getelementptr inbounds %struct.ib_dm_alloc_attr, %struct.ib_dm_alloc_attr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mlx5_ib_dbg(i32 %23, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30)
  %32 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %33 = call i32 @to_mdev(%struct.ib_device* %32)
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @check_dm_type_support(i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %21
  %39 = load i32, i32* %12, align 4
  %40 = call %struct.ib_dm* @ERR_PTR(i32 %39)
  store %struct.ib_dm* %40, %struct.ib_dm** %5, align 8
  br label %90

41:                                               ; preds = %21
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.mlx5_ib_dm* @kzalloc(i32 8, i32 %42)
  store %struct.mlx5_ib_dm* %43, %struct.mlx5_ib_dm** %10, align 8
  %44 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %10, align 8
  %45 = icmp ne %struct.mlx5_ib_dm* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.ib_dm* @ERR_PTR(i32 %48)
  store %struct.ib_dm* %49, %struct.ib_dm** %5, align 8
  br label %90

50:                                               ; preds = %41
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %10, align 8
  %53 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %11, align 4
  switch i32 %54, label %75 [
    i32 129, label %55
    i32 128, label %61
    i32 130, label %68
  ]

55:                                               ; preds = %50
  %56 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  %57 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %10, align 8
  %58 = load %struct.ib_dm_alloc_attr*, %struct.ib_dm_alloc_attr** %8, align 8
  %59 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %60 = call i32 @handle_alloc_dm_memic(%struct.ib_ucontext* %56, %struct.mlx5_ib_dm* %57, %struct.ib_dm_alloc_attr* %58, %struct.uverbs_attr_bundle* %59)
  store i32 %60, i32* %12, align 4
  br label %78

61:                                               ; preds = %50
  %62 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  %63 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %10, align 8
  %64 = load %struct.ib_dm_alloc_attr*, %struct.ib_dm_alloc_attr** %8, align 8
  %65 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %66 = load i32, i32* @MLX5_SW_ICM_TYPE_STEERING, align 4
  %67 = call i32 @handle_alloc_dm_sw_icm(%struct.ib_ucontext* %62, %struct.mlx5_ib_dm* %63, %struct.ib_dm_alloc_attr* %64, %struct.uverbs_attr_bundle* %65, i32 %66)
  store i32 %67, i32* %12, align 4
  br label %78

68:                                               ; preds = %50
  %69 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  %70 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %10, align 8
  %71 = load %struct.ib_dm_alloc_attr*, %struct.ib_dm_alloc_attr** %8, align 8
  %72 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %73 = load i32, i32* @MLX5_SW_ICM_TYPE_HEADER_MODIFY, align 4
  %74 = call i32 @handle_alloc_dm_sw_icm(%struct.ib_ucontext* %69, %struct.mlx5_ib_dm* %70, %struct.ib_dm_alloc_attr* %71, %struct.uverbs_attr_bundle* %72, i32 %73)
  store i32 %74, i32* %12, align 4
  br label %78

75:                                               ; preds = %50
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %75, %68, %61, %55
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %85

82:                                               ; preds = %78
  %83 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %10, align 8
  %84 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %83, i32 0, i32 1
  store %struct.ib_dm* %84, %struct.ib_dm** %5, align 8
  br label %90

85:                                               ; preds = %81
  %86 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %10, align 8
  %87 = call i32 @kfree(%struct.mlx5_ib_dm* %86)
  %88 = load i32, i32* %12, align 4
  %89 = call %struct.ib_dm* @ERR_PTR(i32 %88)
  store %struct.ib_dm* %89, %struct.ib_dm** %5, align 8
  br label %90

90:                                               ; preds = %85, %82, %46, %38, %18
  %91 = load %struct.ib_dm*, %struct.ib_dm** %5, align 8
  ret %struct.ib_dm* %91
}

declare dso_local i32 @uverbs_get_const_default(i32*, %struct.uverbs_attr_bundle*, i32, i32) #1

declare dso_local %struct.ib_dm* @ERR_PTR(i32) #1

declare dso_local i32 @mlx5_ib_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @check_dm_type_support(i32, i32) #1

declare dso_local %struct.mlx5_ib_dm* @kzalloc(i32, i32) #1

declare dso_local i32 @handle_alloc_dm_memic(%struct.ib_ucontext*, %struct.mlx5_ib_dm*, %struct.ib_dm_alloc_attr*, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @handle_alloc_dm_sw_icm(%struct.ib_ucontext*, %struct.mlx5_ib_dm*, %struct.ib_dm_alloc_attr*, %struct.uverbs_attr_bundle*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_dm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
