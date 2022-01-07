; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cong.c_mlx5_ib_init_cong_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cong.c_mlx5_ib_init_cong_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mlx5_ib_dbg_cc_params* }
%struct.mlx5_ib_dbg_cc_params = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.mlx5_ib_dev* }
%struct.mlx5_core_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@mlx5_debugfs_root = common dso_local global i32 0, align 4
@cc_query_allowed = common dso_local global i32 0, align 4
@cc_modify_allowed = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cc_params\00", align 1
@MLX5_IB_DBG_CC_MAX = common dso_local global i32 0, align 4
@mlx5_ib_dbg_cc_name = common dso_local global i32* null, align 8
@dbg_cc_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"cong debugfs failure\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_ib_init_cong_debugfs(%struct.mlx5_ib_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dbg_cc_params*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @mlx5_debugfs_root, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %122

11:                                               ; preds = %2
  %12 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 1
  %15 = call %struct.mlx5_core_dev* @mlx5_ib_get_native_port_mdev(%struct.mlx5_ib_dev* %12, i32 %14, i32* null)
  store %struct.mlx5_core_dev* %15, %struct.mlx5_core_dev** %6, align 8
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %17 = icmp ne %struct.mlx5_core_dev* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %122

19:                                               ; preds = %11
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %21 = load i32, i32* @cc_query_allowed, align 4
  %22 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %26 = load i32, i32* @cc_modify_allowed, align 4
  %27 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %19
  br label %107

30:                                               ; preds = %24
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.mlx5_ib_dbg_cc_params* @kzalloc(i32 16, i32 %31)
  store %struct.mlx5_ib_dbg_cc_params* %32, %struct.mlx5_ib_dbg_cc_params** %5, align 8
  %33 = load %struct.mlx5_ib_dbg_cc_params*, %struct.mlx5_ib_dbg_cc_params** %5, align 8
  %34 = icmp ne %struct.mlx5_ib_dbg_cc_params* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %112

36:                                               ; preds = %30
  %37 = load %struct.mlx5_ib_dbg_cc_params*, %struct.mlx5_ib_dbg_cc_params** %5, align 8
  %38 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store %struct.mlx5_ib_dbg_cc_params* %37, %struct.mlx5_ib_dbg_cc_params** %44, align 8
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %46 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.mlx5_ib_dbg_cc_params*, %struct.mlx5_ib_dbg_cc_params** %5, align 8
  %51 = getelementptr inbounds %struct.mlx5_ib_dbg_cc_params, %struct.mlx5_ib_dbg_cc_params* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %103, %36
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @MLX5_IB_DBG_CC_MAX, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %106

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.mlx5_ib_dbg_cc_params*, %struct.mlx5_ib_dbg_cc_params** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5_ib_dbg_cc_params, %struct.mlx5_ib_dbg_cc_params* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %57, i32* %64, align 8
  %65 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %66 = load %struct.mlx5_ib_dbg_cc_params*, %struct.mlx5_ib_dbg_cc_params** %5, align 8
  %67 = getelementptr inbounds %struct.mlx5_ib_dbg_cc_params, %struct.mlx5_ib_dbg_cc_params* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  store %struct.mlx5_ib_dev* %65, %struct.mlx5_ib_dev** %72, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.mlx5_ib_dbg_cc_params*, %struct.mlx5_ib_dbg_cc_params** %5, align 8
  %75 = getelementptr inbounds %struct.mlx5_ib_dbg_cc_params, %struct.mlx5_ib_dbg_cc_params* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i32 %73, i32* %80, align 4
  %81 = load i32*, i32** @mlx5_ib_dbg_cc_name, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mlx5_ib_dbg_cc_params*, %struct.mlx5_ib_dbg_cc_params** %5, align 8
  %87 = getelementptr inbounds %struct.mlx5_ib_dbg_cc_params, %struct.mlx5_ib_dbg_cc_params* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.mlx5_ib_dbg_cc_params*, %struct.mlx5_ib_dbg_cc_params** %5, align 8
  %90 = getelementptr inbounds %struct.mlx5_ib_dbg_cc_params, %struct.mlx5_ib_dbg_cc_params* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = call i32 @debugfs_create_file(i32 %85, i32 384, i32 %88, %struct.TYPE_6__* %94, i32* @dbg_cc_fops)
  %96 = load %struct.mlx5_ib_dbg_cc_params*, %struct.mlx5_ib_dbg_cc_params** %5, align 8
  %97 = getelementptr inbounds %struct.mlx5_ib_dbg_cc_params, %struct.mlx5_ib_dbg_cc_params* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store i32 %95, i32* %102, align 8
  br label %103

103:                                              ; preds = %56
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %52

106:                                              ; preds = %52
  br label %107

107:                                              ; preds = %106, %29
  %108 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  %111 = call i32 @mlx5_ib_put_native_port_mdev(%struct.mlx5_ib_dev* %108, i32 %110)
  br label %122

112:                                              ; preds = %35
  %113 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %114 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %115 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @mlx5_ib_cleanup_cong_debugfs(%struct.mlx5_ib_dev* %115, i32 %116)
  %118 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  %121 = call i32 @mlx5_ib_put_native_port_mdev(%struct.mlx5_ib_dev* %118, i32 %120)
  br label %122

122:                                              ; preds = %112, %107, %18, %10
  ret void
}

declare dso_local %struct.mlx5_core_dev* @mlx5_ib_get_native_port_mdev(%struct.mlx5_ib_dev*, i32, i32*) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local %struct.mlx5_ib_dbg_cc_params* @kzalloc(i32, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i32, i32, i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @mlx5_ib_put_native_port_mdev(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*) #1

declare dso_local i32 @mlx5_ib_cleanup_cong_debugfs(%struct.mlx5_ib_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
