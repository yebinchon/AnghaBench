; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi.c_msm_hdmi_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi.c_msm_hdmi_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi = type { i32, i64, i32*, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi*)* @msm_hdmi_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_hdmi_destroy(%struct.hdmi* %0) #0 {
  %2 = alloca %struct.hdmi*, align 8
  store %struct.hdmi* %0, %struct.hdmi** %2, align 8
  %3 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %4 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %9 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @flush_workqueue(i64 %10)
  %12 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %13 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @destroy_workqueue(i64 %14)
  br label %16

16:                                               ; preds = %7, %1
  %17 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %18 = call i32 @msm_hdmi_hdcp_destroy(%struct.hdmi* %17)
  %19 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %20 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %25 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @put_device(i32* %26)
  %28 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %29 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %31 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %23, %16
  %33 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %34 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %39 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @msm_hdmi_i2c_destroy(i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %44 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @platform_set_drvdata(i32 %45, i32* null)
  ret void
}

declare dso_local i32 @flush_workqueue(i64) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @msm_hdmi_hdcp_destroy(%struct.hdmi*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @msm_hdmi_i2c_destroy(i64) #1

declare dso_local i32 @platform_set_drvdata(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
