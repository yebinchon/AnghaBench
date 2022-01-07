; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_fs.c_qibfs_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_fs.c_qibfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.file_operations*, i32*, i8*, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.file_operations*, i8*)* @qibfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qibfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.file_operations* %3, i8* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file_operations*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.file_operations* %3, %struct.file_operations** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 11
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.inode* @new_inode(i32 %15)
  store %struct.inode* %16, %struct.inode** %12, align 8
  %17 = load %struct.inode*, %struct.inode** %12, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  br label %71

22:                                               ; preds = %5
  %23 = call i32 (...) @get_next_ino()
  %24 = load %struct.inode*, %struct.inode** %12, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 10
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.inode*, %struct.inode** %12, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %30 = load %struct.inode*, %struct.inode** %12, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %33 = load %struct.inode*, %struct.inode** %12, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load %struct.inode*, %struct.inode** %12, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = load %struct.inode*, %struct.inode** %12, align 8
  %38 = call i32 @current_time(%struct.inode* %37)
  %39 = load %struct.inode*, %struct.inode** %12, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.inode*, %struct.inode** %12, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.inode*, %struct.inode** %12, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.inode*, %struct.inode** %12, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.inode*, %struct.inode** %12, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load %struct.inode*, %struct.inode** %12, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @S_ISDIR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %22
  %58 = load %struct.inode*, %struct.inode** %12, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  store i32* @simple_dir_inode_operations, i32** %59, align 8
  %60 = load %struct.inode*, %struct.inode** %12, align 8
  %61 = call i32 @inc_nlink(%struct.inode* %60)
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = call i32 @inc_nlink(%struct.inode* %62)
  br label %64

64:                                               ; preds = %57, %22
  %65 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %66 = load %struct.inode*, %struct.inode** %12, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  store %struct.file_operations* %65, %struct.file_operations** %67, align 8
  %68 = load %struct.dentry*, %struct.dentry** %7, align 8
  %69 = load %struct.inode*, %struct.inode** %12, align 8
  %70 = call i32 @d_instantiate(%struct.dentry* %68, %struct.inode* %69)
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %64, %19
  %72 = load i32, i32* %11, align 4
  ret i32 %72
}

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @get_next_ino(...) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
