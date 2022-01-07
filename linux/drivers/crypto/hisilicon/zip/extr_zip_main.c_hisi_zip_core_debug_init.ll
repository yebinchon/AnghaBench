; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_core_debug_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_core_debug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip_ctrl = type { i32, %struct.hisi_zip* }
%struct.hisi_zip = type { %struct.hisi_qm }
%struct.hisi_qm = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.debugfs_regset32 = type { i64, i32, i32 }
%struct.dentry = type { i32 }

@HZIP_BUF_SIZE = common dso_local global i32 0, align 4
@HZIP_CORE_NUM = common dso_local global i32 0, align 4
@HZIP_COMP_CORE_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"comp_core%d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"decomp_core%d\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@hzip_dfx_regs = common dso_local global i32 0, align 4
@core_offsets = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_zip_ctrl*)* @hisi_zip_core_debug_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_zip_core_debug_init(%struct.hisi_zip_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_zip_ctrl*, align 8
  %4 = alloca %struct.hisi_zip*, align 8
  %5 = alloca %struct.hisi_qm*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.debugfs_regset32*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hisi_zip_ctrl* %0, %struct.hisi_zip_ctrl** %3, align 8
  %14 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %3, align 8
  %15 = getelementptr inbounds %struct.hisi_zip_ctrl, %struct.hisi_zip_ctrl* %14, i32 0, i32 1
  %16 = load %struct.hisi_zip*, %struct.hisi_zip** %15, align 8
  store %struct.hisi_zip* %16, %struct.hisi_zip** %4, align 8
  %17 = load %struct.hisi_zip*, %struct.hisi_zip** %4, align 8
  %18 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %17, i32 0, i32 0
  store %struct.hisi_qm* %18, %struct.hisi_qm** %5, align 8
  %19 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %20 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %6, align 8
  %23 = load i32, i32* @HZIP_BUF_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %90, %1
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @HZIP_CORE_NUM, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %93

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @HZIP_COMP_CORE_NUM, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %43

38:                                               ; preds = %31
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @HZIP_COMP_CORE_NUM, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %35
  %44 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %3, align 8
  %45 = getelementptr inbounds %struct.hisi_zip_ctrl, %struct.hisi_zip_ctrl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.dentry* @debugfs_create_dir(i8* %26, i32 %46)
  store %struct.dentry* %47, %struct.dentry** %8, align 8
  %48 = load %struct.dentry*, %struct.dentry** %8, align 8
  %49 = icmp ne %struct.dentry* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %94

53:                                               ; preds = %43
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.debugfs_regset32* @devm_kzalloc(%struct.device* %54, i32 16, i32 %55)
  store %struct.debugfs_regset32* %56, %struct.debugfs_regset32** %7, align 8
  %57 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %7, align 8
  %58 = icmp ne %struct.debugfs_regset32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %94

62:                                               ; preds = %53
  %63 = load i32, i32* @hzip_dfx_regs, align 4
  %64 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %7, align 8
  %65 = getelementptr inbounds %struct.debugfs_regset32, %struct.debugfs_regset32* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @hzip_dfx_regs, align 4
  %67 = call i32 @ARRAY_SIZE(i32 %66)
  %68 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %7, align 8
  %69 = getelementptr inbounds %struct.debugfs_regset32, %struct.debugfs_regset32* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %71 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** @core_offsets, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %72, %77
  %79 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %7, align 8
  %80 = getelementptr inbounds %struct.debugfs_regset32, %struct.debugfs_regset32* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.dentry*, %struct.dentry** %8, align 8
  %82 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %7, align 8
  %83 = call %struct.dentry* @debugfs_create_regset32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 292, %struct.dentry* %81, %struct.debugfs_regset32* %82)
  store %struct.dentry* %83, %struct.dentry** %9, align 8
  %84 = load %struct.dentry*, %struct.dentry** %9, align 8
  %85 = icmp ne %struct.dentry* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %62
  %87 = load i32, i32* @ENOENT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %94

89:                                               ; preds = %62
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %27

93:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %94

94:                                               ; preds = %93, %86, %59, %50
  %95 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #2

declare dso_local %struct.debugfs_regset32* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local %struct.dentry* @debugfs_create_regset32(i8*, i32, %struct.dentry*, %struct.debugfs_regset32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
