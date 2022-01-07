; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_delay_drop_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_delay_drop_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, %struct.mlx5_ib_dbg_delay_drop* }
%struct.mlx5_ib_dbg_delay_drop = type { i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@mlx5_debugfs_root = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"delay_drop\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"num_timeout_events\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"num_rqs\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@fops_delay_drop_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*)* @delay_drop_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delay_drop_debugfs_init(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_ib_dbg_delay_drop*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  %5 = load i32, i32* @mlx5_debugfs_root, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

8:                                                ; preds = %1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mlx5_ib_dbg_delay_drop* @kzalloc(i32 24, i32 %9)
  store %struct.mlx5_ib_dbg_delay_drop* %10, %struct.mlx5_ib_dbg_delay_drop** %4, align 8
  %11 = load %struct.mlx5_ib_dbg_delay_drop*, %struct.mlx5_ib_dbg_delay_drop** %4, align 8
  %12 = icmp ne %struct.mlx5_ib_dbg_delay_drop* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %85

16:                                               ; preds = %8
  %17 = load %struct.mlx5_ib_dbg_delay_drop*, %struct.mlx5_ib_dbg_delay_drop** %4, align 8
  %18 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store %struct.mlx5_ib_dbg_delay_drop* %17, %struct.mlx5_ib_dbg_delay_drop** %20, align 8
  %21 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.mlx5_ib_dbg_delay_drop*, %struct.mlx5_ib_dbg_delay_drop** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_dbg_delay_drop, %struct.mlx5_ib_dbg_delay_drop* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.mlx5_ib_dbg_delay_drop*, %struct.mlx5_ib_dbg_delay_drop** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_dbg_delay_drop, %struct.mlx5_ib_dbg_delay_drop* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %16
  br label %80

35:                                               ; preds = %16
  %36 = load %struct.mlx5_ib_dbg_delay_drop*, %struct.mlx5_ib_dbg_delay_drop** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_dbg_delay_drop, %struct.mlx5_ib_dbg_delay_drop* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = call i8* @debugfs_create_atomic_t(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 256, i32 %38, i32* %41)
  %43 = load %struct.mlx5_ib_dbg_delay_drop*, %struct.mlx5_ib_dbg_delay_drop** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5_ib_dbg_delay_drop, %struct.mlx5_ib_dbg_delay_drop* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.mlx5_ib_dbg_delay_drop*, %struct.mlx5_ib_dbg_delay_drop** %4, align 8
  %46 = getelementptr inbounds %struct.mlx5_ib_dbg_delay_drop, %struct.mlx5_ib_dbg_delay_drop* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  br label %80

50:                                               ; preds = %35
  %51 = load %struct.mlx5_ib_dbg_delay_drop*, %struct.mlx5_ib_dbg_delay_drop** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_ib_dbg_delay_drop, %struct.mlx5_ib_dbg_delay_drop* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %55 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i8* @debugfs_create_atomic_t(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 256, i32 %53, i32* %56)
  %58 = load %struct.mlx5_ib_dbg_delay_drop*, %struct.mlx5_ib_dbg_delay_drop** %4, align 8
  %59 = getelementptr inbounds %struct.mlx5_ib_dbg_delay_drop, %struct.mlx5_ib_dbg_delay_drop* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.mlx5_ib_dbg_delay_drop*, %struct.mlx5_ib_dbg_delay_drop** %4, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_dbg_delay_drop, %struct.mlx5_ib_dbg_delay_drop* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %50
  br label %80

65:                                               ; preds = %50
  %66 = load %struct.mlx5_ib_dbg_delay_drop*, %struct.mlx5_ib_dbg_delay_drop** %4, align 8
  %67 = getelementptr inbounds %struct.mlx5_ib_dbg_delay_drop, %struct.mlx5_ib_dbg_delay_drop* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %70 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %69, i32 0, i32 0
  %71 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 384, i32 %68, %struct.TYPE_6__* %70, i32* @fops_delay_drop_timeout)
  %72 = load %struct.mlx5_ib_dbg_delay_drop*, %struct.mlx5_ib_dbg_delay_drop** %4, align 8
  %73 = getelementptr inbounds %struct.mlx5_ib_dbg_delay_drop, %struct.mlx5_ib_dbg_delay_drop* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.mlx5_ib_dbg_delay_drop*, %struct.mlx5_ib_dbg_delay_drop** %4, align 8
  %75 = getelementptr inbounds %struct.mlx5_ib_dbg_delay_drop, %struct.mlx5_ib_dbg_delay_drop* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %65
  br label %80

79:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %85

80:                                               ; preds = %78, %64, %49, %34
  %81 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %82 = call i32 @delay_drop_debugfs_cleanup(%struct.mlx5_ib_dev* %81)
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %80, %79, %13, %7
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.mlx5_ib_dbg_delay_drop* @kzalloc(i32, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i8* @debugfs_create_atomic_t(i8*, i32, i32, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @delay_drop_debugfs_cleanup(%struct.mlx5_ib_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
