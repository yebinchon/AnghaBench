; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-debugfs.c_smsdvb_debugfs_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-debugfs.c_smsdvb_debugfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsdvb_client_t = type { i32, i32, i32, %struct.smsdvb_debugfs*, i32, %struct.smscore_device_t* }
%struct.smsdvb_debugfs = type { i32, i32, i32 }
%struct.smscore_device_t = type { i32, i32 }
%struct.dentry = type { i32 }

@smsdvb_debugfs_usb_root = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to create debugfs %s directory.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@debugfs_stats_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@smsdvb_print_dvb_stats = common dso_local global i32 0, align 4
@smsdvb_print_isdb_stats = common dso_local global i32 0, align 4
@smsdvb_print_isdb_stats_ex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smsdvb_debugfs_create(%struct.smsdvb_client_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smsdvb_client_t*, align 8
  %4 = alloca %struct.smscore_device_t*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.smsdvb_debugfs*, align 8
  store %struct.smsdvb_client_t* %0, %struct.smsdvb_client_t** %3, align 8
  %7 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %8 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %7, i32 0, i32 5
  %9 = load %struct.smscore_device_t*, %struct.smscore_device_t** %8, align 8
  store %struct.smscore_device_t* %9, %struct.smscore_device_t** %4, align 8
  %10 = load i32, i32* @smsdvb_debugfs_usb_root, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %14 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %88

20:                                               ; preds = %12
  %21 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %22 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @smsdvb_debugfs_usb_root, align 4
  %25 = call i32 @debugfs_create_dir(i32 %23, i32 %24)
  %26 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %27 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %29 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR_OR_NULL(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %20
  %34 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %35 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %88

40:                                               ; preds = %20
  %41 = load i32, i32* @S_IRUGO, align 4
  %42 = load i32, i32* @S_IWUSR, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %45 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %48 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46, %struct.smsdvb_client_t* %47, i32* @debugfs_stats_ops)
  store %struct.dentry* %48, %struct.dentry** %5, align 8
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = icmp ne %struct.dentry* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %40
  %52 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %53 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @debugfs_remove(i32 %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %88

58:                                               ; preds = %40
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.smsdvb_debugfs* @kzalloc(i32 12, i32 %59)
  store %struct.smsdvb_debugfs* %60, %struct.smsdvb_debugfs** %6, align 8
  %61 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %6, align 8
  %62 = icmp ne %struct.smsdvb_debugfs* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %88

66:                                               ; preds = %58
  %67 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %6, align 8
  %68 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %69 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %68, i32 0, i32 3
  store %struct.smsdvb_debugfs* %67, %struct.smsdvb_debugfs** %69, align 8
  %70 = load i32, i32* @smsdvb_print_dvb_stats, align 4
  %71 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %72 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @smsdvb_print_isdb_stats, align 4
  %74 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %75 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @smsdvb_print_isdb_stats_ex, align 4
  %77 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %78 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %6, align 8
  %80 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %79, i32 0, i32 2
  %81 = call i32 @init_waitqueue_head(i32* %80)
  %82 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %6, align 8
  %83 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %82, i32 0, i32 1
  %84 = call i32 @spin_lock_init(i32* %83)
  %85 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %6, align 8
  %86 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %85, i32 0, i32 0
  %87 = call i32 @kref_init(i32* %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %66, %63, %51, %33, %17
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, i32, %struct.smsdvb_client_t*, i32*) #1

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local %struct.smsdvb_debugfs* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
