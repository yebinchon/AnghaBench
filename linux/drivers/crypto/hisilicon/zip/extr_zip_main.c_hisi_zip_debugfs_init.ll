; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip = type { %struct.TYPE_6__*, %struct.hisi_qm }
%struct.TYPE_6__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.hisi_qm = type { i64, %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }

@hzip_debugfs_root = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@QM_HW_PF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_zip*)* @hisi_zip_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_zip_debugfs_init(%struct.hisi_zip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_zip*, align 8
  %4 = alloca %struct.hisi_qm*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  store %struct.hisi_zip* %0, %struct.hisi_zip** %3, align 8
  %8 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %9 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %8, i32 0, i32 1
  store %struct.hisi_qm* %9, %struct.hisi_qm** %4, align 8
  %10 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %11 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i32 @dev_name(%struct.device* %14)
  %16 = load i32, i32* @hzip_debugfs_root, align 4
  %17 = call %struct.dentry* @debugfs_create_dir(i32 %15, i32 %16)
  store %struct.dentry* %17, %struct.dentry** %6, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = icmp ne %struct.dentry* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %58

23:                                               ; preds = %1
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %26 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.dentry* %24, %struct.dentry** %27, align 8
  %28 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %29 = call i32 @hisi_qm_debug_init(%struct.hisi_qm* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %54

33:                                               ; preds = %23
  %34 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %35 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @QM_HW_PF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.dentry*, %struct.dentry** %6, align 8
  %41 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %42 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store %struct.dentry* %40, %struct.dentry** %44, align 8
  %45 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %46 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i32 @hisi_zip_ctrl_debug_init(%struct.TYPE_6__* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %54

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %33
  store i32 0, i32* %2, align 4
  br label %58

54:                                               ; preds = %51, %32
  %55 = load i32, i32* @hzip_debugfs_root, align 4
  %56 = call i32 @debugfs_remove_recursive(i32 %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %53, %20
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @hisi_qm_debug_init(%struct.hisi_qm*) #1

declare dso_local i32 @hisi_zip_ctrl_debug_init(%struct.TYPE_6__*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
