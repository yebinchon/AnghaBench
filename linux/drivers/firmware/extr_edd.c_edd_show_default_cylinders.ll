; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_edd.c_edd_show_default_cylinders.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_edd.c_edd_show_default_cylinders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edd_device = type { i32 }
%struct.edd_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@left = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edd_device*, i8*)* @edd_show_default_cylinders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edd_show_default_cylinders(%struct.edd_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edd_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.edd_info*, align 8
  %7 = alloca i8*, align 8
  store %struct.edd_device* %0, %struct.edd_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %7, align 8
  %9 = load %struct.edd_device*, %struct.edd_device** %4, align 8
  %10 = icmp ne %struct.edd_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.edd_device*, %struct.edd_device** %4, align 8
  %16 = call %struct.edd_info* @edd_dev_get_info(%struct.edd_device* %15)
  store %struct.edd_info* %16, %struct.edd_info** %6, align 8
  %17 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %18 = icmp ne %struct.edd_info* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %42

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @left, align 4
  %28 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %29 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @scnprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i8*, i8** %7, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %25, %22, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.edd_info* @edd_dev_get_info(%struct.edd_device*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
