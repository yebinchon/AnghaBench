; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_create_buf_file_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_create_buf_file_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.rchan_buf = type { i32 }

@relay_file_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (i8*, %struct.dentry*, i32, %struct.rchan_buf*, i32*)* @create_buf_file_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @create_buf_file_callback(i8* %0, %struct.dentry* %1, i32 %2, %struct.rchan_buf* %3, i32* %4) #0 {
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rchan_buf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dentry*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.rchan_buf* %3, %struct.rchan_buf** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %11, align 8
  store i32 1, i32* %13, align 4
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  %15 = icmp ne %struct.dentry* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store %struct.dentry* null, %struct.dentry** %6, align 8
  br label %29

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.dentry*, %struct.dentry** %8, align 8
  %21 = load %struct.rchan_buf*, %struct.rchan_buf** %10, align 8
  %22 = call %struct.dentry* @debugfs_create_file(i8* %18, i32 %19, %struct.dentry* %20, %struct.rchan_buf* %21, i32* @relay_file_operations)
  store %struct.dentry* %22, %struct.dentry** %12, align 8
  %23 = load %struct.dentry*, %struct.dentry** %12, align 8
  %24 = call i64 @IS_ERR(%struct.dentry* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store %struct.dentry* null, %struct.dentry** %6, align 8
  br label %29

27:                                               ; preds = %17
  %28 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %28, %struct.dentry** %6, align 8
  br label %29

29:                                               ; preds = %27, %26, %16
  %30 = load %struct.dentry*, %struct.dentry** %6, align 8
  ret %struct.dentry* %30
}

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.rchan_buf*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
