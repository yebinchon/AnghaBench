; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_debugfs.c_kfd_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_debugfs.c_kfd_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"kfd\00", align 1
@debugfs_root = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mqds\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@kfd_debugfs_mqds_by_process = common dso_local global i32* null, align 8
@kfd_debugfs_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"hqds\00", align 1
@kfd_debugfs_hqds_by_device = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"rls\00", align 1
@kfd_debugfs_rls_by_device = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"hang_hws\00", align 1
@kfd_debugfs_hang_hws_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kfd_debugfs_init() #0 {
  %1 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %1, i32* @debugfs_root, align 4
  %2 = load i32, i32* @S_IFREG, align 4
  %3 = or i32 %2, 292
  %4 = load i32, i32* @debugfs_root, align 4
  %5 = load i32*, i32** @kfd_debugfs_mqds_by_process, align 8
  %6 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %3, i32 %4, i32* %5, i32* @kfd_debugfs_fops)
  %7 = load i32, i32* @S_IFREG, align 4
  %8 = or i32 %7, 292
  %9 = load i32, i32* @debugfs_root, align 4
  %10 = load i32*, i32** @kfd_debugfs_hqds_by_device, align 8
  %11 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %8, i32 %9, i32* %10, i32* @kfd_debugfs_fops)
  %12 = load i32, i32* @S_IFREG, align 4
  %13 = or i32 %12, 292
  %14 = load i32, i32* @debugfs_root, align 4
  %15 = load i32*, i32** @kfd_debugfs_rls_by_device, align 8
  %16 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %13, i32 %14, i32* %15, i32* @kfd_debugfs_fops)
  %17 = load i32, i32* @S_IFREG, align 4
  %18 = or i32 %17, 420
  %19 = load i32, i32* @debugfs_root, align 4
  %20 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %18, i32 %19, i32* null, i32* @kfd_debugfs_hang_hws_fops)
  ret void
}

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
