; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_edd.c_edd_show_raw_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_edd.c_edd_show_raw_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edd_device = type { i32 }
%struct.edd_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edd_device*, i8*)* @edd_show_raw_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edd_show_raw_data(%struct.edd_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edd_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.edd_info*, align 8
  %7 = alloca i32, align 4
  store %struct.edd_device* %0, %struct.edd_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 8, i32* %7, align 4
  %8 = load %struct.edd_device*, %struct.edd_device** %4, align 8
  %9 = icmp ne %struct.edd_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %53

13:                                               ; preds = %2
  %14 = load %struct.edd_device*, %struct.edd_device** %4, align 8
  %15 = call %struct.edd_info* @edd_dev_get_info(%struct.edd_device* %14)
  store %struct.edd_info* %15, %struct.edd_info** %6, align 8
  %16 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %17 = icmp ne %struct.edd_info* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %18
  %25 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %26 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 48861
  br i1 %29, label %41, label %30

30:                                               ; preds = %24
  %31 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %32 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 56766
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %38 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %30, %24
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ugt i64 %43, 8
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 8, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %49 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %48, i32 0, i32 0
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @memcpy(i8* %47, %struct.TYPE_2__* %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %21, %10
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.edd_info* @edd_dev_get_info(%struct.edd_device*) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
