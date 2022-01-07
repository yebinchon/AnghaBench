; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-debugfs.c_create_debugfs_mirror.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-debugfs.c_create_debugfs_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32* }
%struct.dentry = type { i32 }
%struct.seqbuf = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp*, i8*, i64, %struct.dentry*)* @create_debugfs_mirror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_debugfs_mirror(%struct.tegra_bpmp* %0, i8* %1, i64 %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_bpmp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.seqbuf, align 4
  %11 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %12 = load %struct.dentry*, %struct.dentry** %9, align 8
  %13 = call i32* @debugfs_create_dir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.dentry* %12)
  %14 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %15 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %17 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %43

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @seqbuf_init(%struct.seqbuf* %10, i8* %24, i64 %25)
  %27 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %28 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %29 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @bpmp_populate_dir(%struct.tegra_bpmp* %27, %struct.seqbuf* %10, i32* %30, i32 0)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %23
  %35 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %36 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @debugfs_remove_recursive(i32* %37)
  %39 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %40 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %34, %23
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %20
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @seqbuf_init(%struct.seqbuf*, i8*, i64) #1

declare dso_local i32 @bpmp_populate_dir(%struct.tegra_bpmp*, %struct.seqbuf*, i32*, i32) #1

declare dso_local i32 @debugfs_remove_recursive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
