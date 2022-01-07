; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_pmd_create_debugfs_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_pmd_create_debugfs_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { %struct.xgene_edac_pmd_ctx* }
%struct.xgene_edac_pmd_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dentry = type { i32 }

@CONFIG_EDAC_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"PMD%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"l1_inject_ctrl\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@xgene_edac_pmd_debug_inject_fops = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"l2_inject_ctrl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*)* @xgene_edac_pmd_create_debugfs_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_edac_pmd_create_debugfs_nodes(%struct.edac_device_ctl_info* %0) #0 {
  %2 = alloca %struct.edac_device_ctl_info*, align 8
  %3 = alloca %struct.xgene_edac_pmd_ctx*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca [10 x i8], align 1
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %2, align 8
  %6 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %7 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %6, i32 0, i32 0
  %8 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %7, align 8
  store %struct.xgene_edac_pmd_ctx* %8, %struct.xgene_edac_pmd_ctx** %3, align 8
  %9 = load i32, i32* @CONFIG_EDAC_DEBUG, align 4
  %10 = call i32 @IS_ENABLED(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %1
  br label %49

20:                                               ; preds = %12
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %22 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @snprintf(i8* %21, i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %27 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.dentry* @edac_debugfs_create_dir_at(i8* %26, i32 %31)
  store %struct.dentry* %32, %struct.dentry** %4, align 8
  %33 = load %struct.dentry*, %struct.dentry** %4, align 8
  %34 = icmp ne %struct.dentry* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %20
  br label %49

36:                                               ; preds = %20
  %37 = load i32, i32* @S_IWUSR, align 4
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %40 = load i32*, i32** @xgene_edac_pmd_debug_inject_fops, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i32 @edac_debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %37, %struct.dentry* %38, %struct.edac_device_ctl_info* %39, i32* %41)
  %43 = load i32, i32* @S_IWUSR, align 4
  %44 = load %struct.dentry*, %struct.dentry** %4, align 8
  %45 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %46 = load i32*, i32** @xgene_edac_pmd_debug_inject_fops, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = call i32 @edac_debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %43, %struct.dentry* %44, %struct.edac_device_ctl_info* %45, i32* %47)
  br label %49

49:                                               ; preds = %36, %35, %19
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @edac_debugfs_create_dir_at(i8*, i32) #1

declare dso_local i32 @edac_debugfs_create_file(i8*, i32, %struct.dentry*, %struct.edac_device_ctl_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
