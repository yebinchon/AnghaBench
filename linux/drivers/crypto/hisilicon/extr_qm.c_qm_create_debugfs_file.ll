; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_create_debugfs_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_create_debugfs_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.debugfs_file*, %struct.dentry* }
%struct.debugfs_file = type { i32, %struct.TYPE_2__*, i32 }
%struct.dentry = type { i32 }

@qm_debug_file_name = common dso_local global i32* null, align 8
@qm_debug_fops = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_qm*, i32)* @qm_create_debugfs_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_create_debugfs_file(%struct.hisi_qm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_qm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.debugfs_file*, align 8
  store %struct.hisi_qm* %0, %struct.hisi_qm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %10 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %12, %struct.dentry** %6, align 8
  %13 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %14 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.debugfs_file*, %struct.debugfs_file** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.debugfs_file, %struct.debugfs_file* %16, i64 %18
  store %struct.debugfs_file* %19, %struct.debugfs_file** %8, align 8
  %20 = load i32*, i32** @qm_debug_file_name, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = load %struct.debugfs_file*, %struct.debugfs_file** %8, align 8
  %27 = call %struct.dentry* @debugfs_create_file(i32 %24, i32 384, %struct.dentry* %25, %struct.debugfs_file* %26, i32* @qm_debug_fops)
  store %struct.dentry* %27, %struct.dentry** %7, align 8
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = call i64 @IS_ERR(%struct.dentry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %45

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.debugfs_file*, %struct.debugfs_file** %8, align 8
  %37 = getelementptr inbounds %struct.debugfs_file, %struct.debugfs_file* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.debugfs_file*, %struct.debugfs_file** %8, align 8
  %39 = getelementptr inbounds %struct.debugfs_file, %struct.debugfs_file* %38, i32 0, i32 2
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %42 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %41, i32 0, i32 0
  %43 = load %struct.debugfs_file*, %struct.debugfs_file** %8, align 8
  %44 = getelementptr inbounds %struct.debugfs_file, %struct.debugfs_file* %43, i32 0, i32 1
  store %struct.TYPE_2__* %42, %struct.TYPE_2__** %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %34, %31
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.dentry* @debugfs_create_file(i32, i32, %struct.dentry*, %struct.debugfs_file*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
