; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_debug.c_host1x_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_debug.c_host1x_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { %struct.dentry* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"tegra-host1x\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@host1x_debug_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"status_all\00", align 1
@host1x_debug_all_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"trace_cmdbuf\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@host1x_debug_trace_cmdbuf = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"force_timeout_pid\00", align 1
@host1x_debug_force_timeout_pid = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"force_timeout_val\00", align 1
@host1x_debug_force_timeout_val = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"force_timeout_channel\00", align 1
@host1x_debug_force_timeout_channel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x*)* @host1x_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host1x_debugfs_init(%struct.host1x* %0) #0 {
  %2 = alloca %struct.host1x*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.host1x* %0, %struct.host1x** %2, align 8
  %4 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.dentry* %4, %struct.dentry** %3, align 8
  %5 = load %struct.dentry*, %struct.dentry** %3, align 8
  %6 = load %struct.host1x*, %struct.host1x** %2, align 8
  %7 = getelementptr inbounds %struct.host1x, %struct.host1x* %6, i32 0, i32 0
  store %struct.dentry* %5, %struct.dentry** %7, align 8
  %8 = load i32, i32* @S_IRUGO, align 4
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = load %struct.host1x*, %struct.host1x** %2, align 8
  %11 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %8, %struct.dentry* %9, %struct.host1x* %10, i32* @host1x_debug_fops)
  %12 = load i32, i32* @S_IRUGO, align 4
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = load %struct.host1x*, %struct.host1x** %2, align 8
  %15 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %12, %struct.dentry* %13, %struct.host1x* %14, i32* @host1x_debug_all_fops)
  %16 = load i32, i32* @S_IRUGO, align 4
  %17 = load i32, i32* @S_IWUSR, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %18, %struct.dentry* %19, i32* @host1x_debug_trace_cmdbuf)
  %21 = load %struct.host1x*, %struct.host1x** %2, align 8
  %22 = load %struct.dentry*, %struct.dentry** %3, align 8
  %23 = call i32 @host1x_hw_debug_init(%struct.host1x* %21, %struct.dentry* %22)
  %24 = load i32, i32* @S_IRUGO, align 4
  %25 = load i32, i32* @S_IWUSR, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.dentry*, %struct.dentry** %3, align 8
  %28 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %26, %struct.dentry* %27, i32* @host1x_debug_force_timeout_pid)
  %29 = load i32, i32* @S_IRUGO, align 4
  %30 = load i32, i32* @S_IWUSR, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.dentry*, %struct.dentry** %3, align 8
  %33 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %31, %struct.dentry* %32, i32* @host1x_debug_force_timeout_val)
  %34 = load i32, i32* @S_IRUGO, align 4
  %35 = load i32, i32* @S_IWUSR, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.dentry*, %struct.dentry** %3, align 8
  %38 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %36, %struct.dentry* %37, i32* @host1x_debug_force_timeout_channel)
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.host1x*, i32*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @host1x_hw_debug_init(%struct.host1x*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
