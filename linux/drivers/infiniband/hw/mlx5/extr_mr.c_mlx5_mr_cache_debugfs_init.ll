; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_mr_cache_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_mr_cache_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_4__*, i64, %struct.mlx5_mr_cache }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.mlx5_mr_cache = type { i8*, %struct.mlx5_cache_ent* }
%struct.mlx5_cache_ent = type { i8*, i32, i32, i32 }
%struct.dentry = type { i32 }

@mlx5_debugfs_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mr_cache\00", align 1
@MAX_MR_CACHE_ENTRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@size_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@limit_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"miss\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*)* @mlx5_mr_cache_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_mr_cache_debugfs_init(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx5_ib_dev*, align 8
  %3 = alloca %struct.mlx5_mr_cache*, align 8
  %4 = alloca %struct.mlx5_cache_ent*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %2, align 8
  %7 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %7, i32 0, i32 2
  store %struct.mlx5_mr_cache* %8, %struct.mlx5_mr_cache** %3, align 8
  %9 = load i32, i32* @mlx5_debugfs_root, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  br label %70

17:                                               ; preds = %11
  %18 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %67, %17
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MAX_MR_CACHE_ENTRIES, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %27
  %32 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %32, i32 0, i32 1
  %34 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %34, i64 %36
  store %struct.mlx5_cache_ent* %37, %struct.mlx5_cache_ent** %4, align 8
  %38 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %4, align 8
  %39 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %4, align 8
  %46 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %3, align 8
  %49 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @debugfs_create_dir(i8* %47, i8* %50)
  %52 = bitcast i8* %51 to %struct.dentry*
  store %struct.dentry* %52, %struct.dentry** %5, align 8
  %53 = load %struct.dentry*, %struct.dentry** %5, align 8
  %54 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %4, align 8
  %55 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 384, %struct.dentry* %53, %struct.mlx5_cache_ent* %54, i32* @size_fops)
  %56 = load %struct.dentry*, %struct.dentry** %5, align 8
  %57 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %4, align 8
  %58 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 384, %struct.dentry* %56, %struct.mlx5_cache_ent* %57, i32* @limit_fops)
  %59 = load %struct.dentry*, %struct.dentry** %5, align 8
  %60 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %4, align 8
  %61 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %60, i32 0, i32 3
  %62 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 256, %struct.dentry* %59, i32* %61)
  %63 = load %struct.dentry*, %struct.dentry** %5, align 8
  %64 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %4, align 8
  %65 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %64, i32 0, i32 2
  %66 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 384, %struct.dentry* %63, i32* %65)
  br label %67

67:                                               ; preds = %31
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %27

70:                                               ; preds = %16, %27
  ret void
}

declare dso_local i8* @debugfs_create_dir(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.mlx5_cache_ent*, i32*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
