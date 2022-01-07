; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_debugfs.c_nitrox_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_debugfs.c_nitrox_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { %struct.dentry* }
%struct.dentry = type { i32 }

@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@firmware_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@device_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nitrox_debugfs_init(%struct.nitrox_device* %0) #0 {
  %2 = alloca %struct.nitrox_device*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.nitrox_device* %0, %struct.nitrox_device** %2, align 8
  %4 = load i32, i32* @KBUILD_MODNAME, align 4
  %5 = call %struct.dentry* @debugfs_create_dir(i32 %4, i32* null)
  store %struct.dentry* %5, %struct.dentry** %3, align 8
  %6 = load %struct.dentry*, %struct.dentry** %3, align 8
  %7 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %8 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %7, i32 0, i32 0
  store %struct.dentry* %6, %struct.dentry** %8, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %11 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 256, %struct.dentry* %9, %struct.nitrox_device* %10, i32* @firmware_fops)
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %14 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 256, %struct.dentry* %12, %struct.nitrox_device* %13, i32* @device_fops)
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %17 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 256, %struct.dentry* %15, %struct.nitrox_device* %16, i32* @stats_fops)
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.nitrox_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
