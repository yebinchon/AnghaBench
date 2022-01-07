; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_fs.c_create_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_fs.c_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.dentry*, %struct.dentry**, %struct.file_operations*, i8*)* @create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_file(i8* %0, i32 %1, %struct.dentry* %2, %struct.dentry** %3, %struct.file_operations* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry**, align 8
  %11 = alloca %struct.file_operations*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.dentry* %2, %struct.dentry** %9, align 8
  store %struct.dentry** %3, %struct.dentry*** %10, align 8
  store %struct.file_operations* %4, %struct.file_operations** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.dentry*, %struct.dentry** %9, align 8
  %15 = call i32 @d_inode(%struct.dentry* %14)
  %16 = call i32 @inode_lock(i32 %15)
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.dentry*, %struct.dentry** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = call %struct.dentry* @lookup_one_len(i8* %17, %struct.dentry* %18, i32 %20)
  %22 = load %struct.dentry**, %struct.dentry*** %10, align 8
  store %struct.dentry* %21, %struct.dentry** %22, align 8
  %23 = load %struct.dentry**, %struct.dentry*** %10, align 8
  %24 = load %struct.dentry*, %struct.dentry** %23, align 8
  %25 = call i32 @IS_ERR(%struct.dentry* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %6
  %28 = load %struct.dentry*, %struct.dentry** %9, align 8
  %29 = call i32 @d_inode(%struct.dentry* %28)
  %30 = load %struct.dentry**, %struct.dentry*** %10, align 8
  %31 = load %struct.dentry*, %struct.dentry** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @qibfs_mknod(i32 %29, %struct.dentry* %31, i32 %32, %struct.file_operations* %33, i8* %34)
  store i32 %35, i32* %13, align 4
  br label %40

36:                                               ; preds = %6
  %37 = load %struct.dentry**, %struct.dentry*** %10, align 8
  %38 = load %struct.dentry*, %struct.dentry** %37, align 8
  %39 = call i32 @PTR_ERR(%struct.dentry* %38)
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %36, %27
  %41 = load %struct.dentry*, %struct.dentry** %9, align 8
  %42 = call i32 @d_inode(%struct.dentry* %41)
  %43 = call i32 @inode_unlock(i32 %42)
  %44 = load i32, i32* %13, align 4
  ret i32 %44
}

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @qibfs_mknod(i32, %struct.dentry*, i32, %struct.file_operations*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
