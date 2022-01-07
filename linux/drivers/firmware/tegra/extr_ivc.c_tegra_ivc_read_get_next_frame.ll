; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_ivc.c_tegra_ivc_read_get_next_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_ivc.c_tegra_ivc_read_get_next_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_ivc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tegra_ivc_read_get_next_frame(%struct.tegra_ivc* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tegra_ivc*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_ivc* %0, %struct.tegra_ivc** %3, align 8
  %5 = load %struct.tegra_ivc*, %struct.tegra_ivc** %3, align 8
  %6 = icmp eq %struct.tegra_ivc* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i8* @ERR_PTR(i32 %12)
  store i8* %13, i8** %2, align 8
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.tegra_ivc*, %struct.tegra_ivc** %3, align 8
  %16 = call i32 @tegra_ivc_check_read(%struct.tegra_ivc* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @ERR_PTR(i32 %20)
  store i8* %21, i8** %2, align 8
  br label %47

22:                                               ; preds = %14
  %23 = call i32 (...) @smp_rmb()
  %24 = load %struct.tegra_ivc*, %struct.tegra_ivc** %3, align 8
  %25 = load %struct.tegra_ivc*, %struct.tegra_ivc** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tegra_ivc*, %struct.tegra_ivc** %3, align 8
  %30 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tegra_ivc*, %struct.tegra_ivc** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @tegra_ivc_invalidate_frame(%struct.tegra_ivc* %24, i32 %28, i32 %32, i32 0, i32 %35)
  %37 = load %struct.tegra_ivc*, %struct.tegra_ivc** %3, align 8
  %38 = load %struct.tegra_ivc*, %struct.tegra_ivc** %3, align 8
  %39 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tegra_ivc*, %struct.tegra_ivc** %3, align 8
  %43 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @tegra_ivc_frame_virt(%struct.tegra_ivc* %37, i32 %41, i32 %45)
  store i8* %46, i8** %2, align 8
  br label %47

47:                                               ; preds = %22, %19, %10
  %48 = load i8*, i8** %2, align 8
  ret i8* %48
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @tegra_ivc_check_read(%struct.tegra_ivc*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @tegra_ivc_invalidate_frame(%struct.tegra_ivc*, i32, i32, i32, i32) #1

declare dso_local i8* @tegra_ivc_frame_virt(%struct.tegra_ivc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
