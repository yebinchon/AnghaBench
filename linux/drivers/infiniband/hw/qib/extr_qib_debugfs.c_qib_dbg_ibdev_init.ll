; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_debugfs.c_qib_dbg_ibdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_debugfs.c_qib_dbg_ibdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibdev = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"qib%d\00", align 1
@qib_dbg_root = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"opcode_stats\00", align 1
@_opcode_stats_file_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ctx_stats\00", align 1
@_ctx_stats_file_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"qp_stats\00", align 1
@_qp_stats_file_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_dbg_ibdev_init(%struct.qib_ibdev* %0) #0 {
  %2 = alloca %struct.qib_ibdev*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca [10 x i8], align 1
  store %struct.qib_ibdev* %0, %struct.qib_ibdev** %2, align 8
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %6 = load %struct.qib_ibdev*, %struct.qib_ibdev** %2, align 8
  %7 = call %struct.TYPE_2__* @dd_from_dev(%struct.qib_ibdev* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @snprintf(i8* %5, i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %12 = load i32, i32* @qib_dbg_root, align 4
  %13 = call %struct.dentry* @debugfs_create_dir(i8* %11, i32 %12)
  store %struct.dentry* %13, %struct.dentry** %3, align 8
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = load %struct.qib_ibdev*, %struct.qib_ibdev** %2, align 8
  %16 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %15, i32 0, i32 0
  store %struct.dentry* %14, %struct.dentry** %16, align 8
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = load %struct.qib_ibdev*, %struct.qib_ibdev** %2, align 8
  %19 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 256, %struct.dentry* %17, %struct.qib_ibdev* %18, i32* @_opcode_stats_file_ops)
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = load %struct.qib_ibdev*, %struct.qib_ibdev** %2, align 8
  %22 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 256, %struct.dentry* %20, %struct.qib_ibdev* %21, i32* @_ctx_stats_file_ops)
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = load %struct.qib_ibdev*, %struct.qib_ibdev** %2, align 8
  %25 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 256, %struct.dentry* %23, %struct.qib_ibdev* %24, i32* @_qp_stats_file_ops)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @dd_from_dev(%struct.qib_ibdev*) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.qib_ibdev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
