; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_edd.c_edd_has_edd30.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_edd.c_edd_has_edd30.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edd_device = type { i32 }
%struct.edd_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edd_device*)* @edd_has_edd30 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edd_has_edd30(%struct.edd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.edd_device*, align 8
  %4 = alloca %struct.edd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.edd_device* %0, %struct.edd_device** %3, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.edd_device*, %struct.edd_device** %3, align 8
  %8 = icmp ne %struct.edd_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

10:                                               ; preds = %1
  %11 = load %struct.edd_device*, %struct.edd_device** %3, align 8
  %12 = call %struct.edd_info* @edd_dev_get_info(%struct.edd_device* %11)
  store %struct.edd_info* %12, %struct.edd_info** %4, align 8
  %13 = load %struct.edd_info*, %struct.edd_info** %4, align 8
  %14 = icmp ne %struct.edd_info* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %63

16:                                               ; preds = %10
  %17 = load %struct.edd_info*, %struct.edd_info** %4, align 8
  %18 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 48861
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load %struct.edd_info*, %struct.edd_info** %4, align 8
  %24 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 56766
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %63

29:                                               ; preds = %22, %16
  %30 = load %struct.edd_info*, %struct.edd_info** %4, align 8
  %31 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 44
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %63

36:                                               ; preds = %29
  store i32 30, i32* %5, align 4
  br label %37

37:                                               ; preds = %55, %36
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.edd_info*, %struct.edd_info** %4, align 8
  %40 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 30
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  %46 = load %struct.edd_info*, %struct.edd_info** %4, align 8
  %47 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %46, i32 0, i32 0
  %48 = bitcast %struct.TYPE_2__* %47 to i64*
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %37

58:                                               ; preds = %37
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %63

62:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %61, %35, %28, %15, %9
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.edd_info* @edd_dev_get_info(%struct.edd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
