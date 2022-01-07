; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_convert_did_to_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_convert_did_to_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.trinity_power_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32)* @trinity_convert_did_to_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trinity_convert_did_to_freq(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trinity_power_info*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = call %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device* %8)
  store %struct.trinity_power_info* %9, %struct.trinity_power_info** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 8
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sle i32 %13, 63
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %16, 25
  store i32 %17, i32* %7, align 4
  br label %48

18:                                               ; preds = %12, %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 63
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %22, 95
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 64
  %27 = mul nsw i32 %26, 50
  %28 = add nsw i32 %27, 1600
  store i32 %28, i32* %7, align 4
  br label %47

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %30, 95
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp sle i32 %33, 126
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %36, 96
  %38 = mul nsw i32 %37, 100
  %39 = add nsw i32 %38, 3200
  store i32 %39, i32* %7, align 4
  br label %46

40:                                               ; preds = %32, %29
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 127
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 12800, i32* %7, align 4
  br label %45

44:                                               ; preds = %40
  store i32 10000, i32* %3, align 4
  br label %59

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45, %35
  br label %47

47:                                               ; preds = %46, %24
  br label %48

48:                                               ; preds = %47, %15
  %49 = load %struct.trinity_power_info*, %struct.trinity_power_info** %6, align 8
  %50 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 100
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 1
  %56 = add nsw i32 %53, %55
  %57 = load i32, i32* %7, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %48, %44
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
