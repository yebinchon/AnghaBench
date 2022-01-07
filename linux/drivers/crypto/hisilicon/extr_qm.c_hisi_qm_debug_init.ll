; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_debug_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_debug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry*, i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"qm\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@QM_HW_PF = common dso_local global i64 0, align 8
@CURRENT_Q = common dso_local global i32 0, align 4
@DEBUG_FILE_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"qm_regs\00", align 1
@qm_regs_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hisi_qm_debug_init(%struct.hisi_qm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_qm*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hisi_qm* %0, %struct.hisi_qm** %3, align 8
  %8 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %9 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  store %struct.dentry* %12, %struct.dentry** %4, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = call i64 @IS_ERR(%struct.dentry* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %66

19:                                               ; preds = %1
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %22 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.dentry* %20, %struct.dentry** %23, align 8
  %24 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %25 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @QM_HW_PF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %19
  %30 = load i32, i32* @CURRENT_Q, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %44, %29
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @DEBUG_FILE_NUM, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @qm_create_debugfs_file(%struct.hisi_qm* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %62

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %31

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %19
  %49 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %50 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.dentry*, %struct.dentry** %51, align 8
  %53 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %54 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 292, %struct.dentry* %52, %struct.hisi_qm* %53, i32* @qm_regs_fops)
  store %struct.dentry* %54, %struct.dentry** %5, align 8
  %55 = load %struct.dentry*, %struct.dentry** %5, align 8
  %56 = call i64 @IS_ERR(%struct.dentry* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %62

61:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %66

62:                                               ; preds = %58, %40
  %63 = load %struct.dentry*, %struct.dentry** %4, align 8
  %64 = call i32 @debugfs_remove_recursive(%struct.dentry* %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %61, %16
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @qm_create_debugfs_file(%struct.hisi_qm*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.hisi_qm*, i32*) #1

declare dso_local i32 @debugfs_remove_recursive(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
