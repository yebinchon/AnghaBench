; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_setup_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_setup_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.TYPE_2__*, %struct.i5100_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.i5100_priv = type { i32, i32, i32, i32, i32, i32, i32 }

@i5100_debugfs = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"inject_channel\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"inject_hlinesel\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"inject_deviceptr1\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"inject_deviceptr2\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"inject_eccmask1\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"inject_eccmask2\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"inject_enable\00", align 1
@i5100_inject_enable_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @i5100_setup_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i5100_setup_debugfs(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i5100_priv*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  %5 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %6 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %5, i32 0, i32 2
  %7 = load %struct.i5100_priv*, %struct.i5100_priv** %6, align 8
  store %struct.i5100_priv* %7, %struct.i5100_priv** %4, align 8
  %8 = load i32, i32* @i5100_debugfs, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %92

13:                                               ; preds = %1
  %14 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %15 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @i5100_debugfs, align 4
  %20 = call i32 @edac_debugfs_create_dir_at(i32 %18, i32 %19)
  %21 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %22 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %24 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %13
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %92

30:                                               ; preds = %13
  %31 = load i32, i32* @S_IRUGO, align 4
  %32 = load i32, i32* @S_IWUSR, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %35 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %38 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %37, i32 0, i32 6
  %39 = call i32 @edac_debugfs_create_x8(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32* %38)
  %40 = load i32, i32* @S_IRUGO, align 4
  %41 = load i32, i32* @S_IWUSR, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %44 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %47 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %46, i32 0, i32 5
  %48 = call i32 @edac_debugfs_create_x8(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45, i32* %47)
  %49 = load i32, i32* @S_IRUGO, align 4
  %50 = load i32, i32* @S_IWUSR, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %53 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %56 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %55, i32 0, i32 4
  %57 = call i32 @edac_debugfs_create_x8(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %54, i32* %56)
  %58 = load i32, i32* @S_IRUGO, align 4
  %59 = load i32, i32* @S_IWUSR, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %62 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %65 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %64, i32 0, i32 3
  %66 = call i32 @edac_debugfs_create_x8(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %63, i32* %65)
  %67 = load i32, i32* @S_IRUGO, align 4
  %68 = load i32, i32* @S_IWUSR, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %71 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %74 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %73, i32 0, i32 2
  %75 = call i32 @edac_debugfs_create_x16(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %69, i32 %72, i32* %74)
  %76 = load i32, i32* @S_IRUGO, align 4
  %77 = load i32, i32* @S_IWUSR, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %80 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %83 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %82, i32 0, i32 1
  %84 = call i32 @edac_debugfs_create_x16(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %78, i32 %81, i32* %83)
  %85 = load i32, i32* @S_IWUSR, align 4
  %86 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %87 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %90 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %89, i32 0, i32 0
  %91 = call i32 @edac_debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %85, i32 %88, i32* %90, i32* @i5100_inject_enable_fops)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %30, %27, %10
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @edac_debugfs_create_dir_at(i32, i32) #1

declare dso_local i32 @edac_debugfs_create_x8(i8*, i32, i32, i32*) #1

declare dso_local i32 @edac_debugfs_create_x16(i8*, i32, i32, i32*) #1

declare dso_local i32 @edac_debugfs_create_file(i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
