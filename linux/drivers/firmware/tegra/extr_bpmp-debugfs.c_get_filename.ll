; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-debugfs.c_get_filename.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-debugfs.c_get_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32 }
%struct.file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tegra_bpmp*, %struct.file*, i8*, i32)* @get_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_filename(%struct.tegra_bpmp* %0, %struct.file* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tegra_bpmp*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [512 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %15 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %18 = call i8* @dentry_path(i32 %16, i8* %17, i32 512)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = call i64 @IS_ERR(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %54

23:                                               ; preds = %4
  %24 = load i8*, i8** %11, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %13, align 8
  %26 = load %struct.file*, %struct.file** %7, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i8* @dentry_path(i32 %29, i8* %30, i32 %31)
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  store i8* null, i8** %5, align 8
  br label %54

37:                                               ; preds = %23
  %38 = load i8*, i8** %12, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = load i64, i64* %13, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %12, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i64 @strncmp(i8* %43, i8* %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %37
  store i8* null, i8** %5, align 8
  br label %54

49:                                               ; preds = %42
  %50 = load i64, i64* %13, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  store i8* %53, i8** %5, align 8
  br label %54

54:                                               ; preds = %49, %48, %36, %22
  %55 = load i8*, i8** %5, align 8
  ret i8* %55
}

declare dso_local i8* @dentry_path(i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
