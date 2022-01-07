; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_ctrl_debug_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_ctrl_debug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip_ctrl = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.hisi_zip_ctrl*, i32 }
%struct.dentry = type { i32 }

@HZIP_CURRENT_QM = common dso_local global i32 0, align 4
@HZIP_DEBUG_FILE_NUM = common dso_local global i32 0, align 4
@ctrl_debug_file_name = common dso_local global i32* null, align 8
@ctrl_debug_fops = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_zip_ctrl*)* @hisi_zip_ctrl_debug_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_zip_ctrl_debug_init(%struct.hisi_zip_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_zip_ctrl*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  store %struct.hisi_zip_ctrl* %0, %struct.hisi_zip_ctrl** %3, align 8
  %6 = load i32, i32* @HZIP_CURRENT_QM, align 4
  store i32 %6, i32* %5, align 4
  br label %7

7:                                                ; preds = %57, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @HZIP_DEBUG_FILE_NUM, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %60

11:                                               ; preds = %7
  %12 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.hisi_zip_ctrl, %struct.hisi_zip_ctrl* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %3, align 8
  %21 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %3, align 8
  %22 = getelementptr inbounds %struct.hisi_zip_ctrl, %struct.hisi_zip_ctrl* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store %struct.hisi_zip_ctrl* %20, %struct.hisi_zip_ctrl** %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %3, align 8
  %30 = getelementptr inbounds %struct.hisi_zip_ctrl, %struct.hisi_zip_ctrl* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %28, i32* %35, align 8
  %36 = load i32*, i32** @ctrl_debug_file_name, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %3, align 8
  %42 = getelementptr inbounds %struct.hisi_zip_ctrl, %struct.hisi_zip_ctrl* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %3, align 8
  %45 = getelementptr inbounds %struct.hisi_zip_ctrl, %struct.hisi_zip_ctrl* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = call %struct.dentry* @debugfs_create_file(i32 %40, i32 384, i32 %43, %struct.TYPE_2__* %49, i32* @ctrl_debug_fops)
  store %struct.dentry* %50, %struct.dentry** %4, align 8
  %51 = load %struct.dentry*, %struct.dentry** %4, align 8
  %52 = icmp ne %struct.dentry* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %11
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %63

56:                                               ; preds = %11
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %7

60:                                               ; preds = %7
  %61 = load %struct.hisi_zip_ctrl*, %struct.hisi_zip_ctrl** %3, align 8
  %62 = call i32 @hisi_zip_core_debug_init(%struct.hisi_zip_ctrl* %61)
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %53
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i32, i32, i32, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @hisi_zip_core_debug_init(%struct.hisi_zip_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
