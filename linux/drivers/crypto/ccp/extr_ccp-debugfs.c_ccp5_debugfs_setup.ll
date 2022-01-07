; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-debugfs.c_ccp5_debugfs_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-debugfs.c_ccp5_debugfs_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ccp_device = type { i8*, i32, i32, %struct.dentry*, %struct.ccp_device* }
%struct.ccp_cmd_queue = type { i8*, i32, i32, %struct.dentry*, %struct.ccp_cmd_queue* }

@MAX_NAME_LEN = common dso_local global i32 0, align 4
@ccp_debugfs_lock = common dso_local global i32 0, align 4
@ccp_debugfs_dir = common dso_local global %struct.dentry* null, align 8
@KBUILD_MODNAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"info\00", align 1
@ccp_debugfs_info_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@ccp_debugfs_stats_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"q%d\00", align 1
@ccp_debugfs_queue_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccp5_debugfs_setup(%struct.ccp_device* %0) #0 {
  %2 = alloca %struct.ccp_device*, align 8
  %3 = alloca %struct.ccp_cmd_queue*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ccp_device* %0, %struct.ccp_device** %2, align 8
  %9 = load i32, i32* @MAX_NAME_LEN, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = call i32 (...) @debugfs_initialized()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %78

17:                                               ; preds = %1
  %18 = call i32 @mutex_lock(i32* @ccp_debugfs_lock)
  %19 = load %struct.dentry*, %struct.dentry** @ccp_debugfs_dir, align 8
  %20 = icmp ne %struct.dentry* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** @KBUILD_MODNAME, align 8
  %23 = call i8* @debugfs_create_dir(i8* %22, %struct.dentry* null)
  %24 = bitcast i8* %23 to %struct.dentry*
  store %struct.dentry* %24, %struct.dentry** @ccp_debugfs_dir, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = call i32 @mutex_unlock(i32* @ccp_debugfs_lock)
  %27 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %28 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.dentry*, %struct.dentry** @ccp_debugfs_dir, align 8
  %31 = call i8* @debugfs_create_dir(i8* %29, %struct.dentry* %30)
  %32 = bitcast i8* %31 to %struct.dentry*
  %33 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %34 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %33, i32 0, i32 3
  store %struct.dentry* %32, %struct.dentry** %34, align 8
  %35 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %36 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %35, i32 0, i32 3
  %37 = load %struct.dentry*, %struct.dentry** %36, align 8
  %38 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %39 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 256, %struct.dentry* %37, %struct.ccp_device* %38, i32* @ccp_debugfs_info_ops)
  %40 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %41 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %40, i32 0, i32 3
  %42 = load %struct.dentry*, %struct.dentry** %41, align 8
  %43 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %44 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 384, %struct.dentry* %42, %struct.ccp_device* %43, i32* @ccp_debugfs_stats_ops)
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %74, %25
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %48 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %45
  %52 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %53 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %52, i32 0, i32 4
  %54 = load %struct.ccp_device*, %struct.ccp_device** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %54, i64 %56
  %58 = bitcast %struct.ccp_device* %57 to %struct.ccp_cmd_queue*
  store %struct.ccp_cmd_queue* %58, %struct.ccp_cmd_queue** %3, align 8
  %59 = load i32, i32* @MAX_NAME_LEN, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %62 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @snprintf(i8* %13, i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  %66 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %65, i32 0, i32 3
  %67 = load %struct.dentry*, %struct.dentry** %66, align 8
  %68 = call i8* @debugfs_create_dir(i8* %13, %struct.dentry* %67)
  %69 = bitcast i8* %68 to %struct.dentry*
  store %struct.dentry* %69, %struct.dentry** %6, align 8
  %70 = load %struct.dentry*, %struct.dentry** %6, align 8
  %71 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %3, align 8
  %72 = bitcast %struct.ccp_cmd_queue* %71 to %struct.ccp_device*
  %73 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 384, %struct.dentry* %70, %struct.ccp_device* %72, i32* @ccp_debugfs_queue_ops)
  br label %74

74:                                               ; preds = %51
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %45

77:                                               ; preds = %45
  store i32 1, i32* %8, align 4
  br label %78

78:                                               ; preds = %77, %16
  %79 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %79)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @debugfs_initialized(...) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i8* @debugfs_create_dir(i8*, %struct.dentry*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.ccp_device*, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
