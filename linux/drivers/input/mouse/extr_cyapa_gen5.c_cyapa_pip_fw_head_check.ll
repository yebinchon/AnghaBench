; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_fw_head_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_fw_head_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32, i32 }
%struct.cyapa_tsg_bin_image_head = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, %struct.cyapa_tsg_bin_image_head*)* @cyapa_pip_fw_head_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_pip_fw_head_check(%struct.cyapa* %0, %struct.cyapa_tsg_bin_image_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cyapa*, align 8
  %5 = alloca %struct.cyapa_tsg_bin_image_head*, align 8
  store %struct.cyapa* %0, %struct.cyapa** %4, align 8
  store %struct.cyapa_tsg_bin_image_head* %1, %struct.cyapa_tsg_bin_image_head** %5, align 8
  %6 = load %struct.cyapa_tsg_bin_image_head*, %struct.cyapa_tsg_bin_image_head** %5, align 8
  %7 = getelementptr inbounds %struct.cyapa_tsg_bin_image_head, %struct.cyapa_tsg_bin_image_head* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 12
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.cyapa_tsg_bin_image_head*, %struct.cyapa_tsg_bin_image_head** %5, align 8
  %12 = getelementptr inbounds %struct.cyapa_tsg_bin_image_head, %struct.cyapa_tsg_bin_image_head* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 18
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %68

18:                                               ; preds = %10, %2
  %19 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %20 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %64 [
    i32 128, label %22
    i32 129, label %36
  ]

22:                                               ; preds = %18
  %23 = load %struct.cyapa_tsg_bin_image_head*, %struct.cyapa_tsg_bin_image_head** %5, align 8
  %24 = getelementptr inbounds %struct.cyapa_tsg_bin_image_head, %struct.cyapa_tsg_bin_image_head* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 155
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.cyapa_tsg_bin_image_head*, %struct.cyapa_tsg_bin_image_head** %5, align 8
  %29 = getelementptr inbounds %struct.cyapa_tsg_bin_image_head, %struct.cyapa_tsg_bin_image_head* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 11
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %68

35:                                               ; preds = %27
  br label %67

36:                                               ; preds = %18
  %37 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %38 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.cyapa_tsg_bin_image_head*, %struct.cyapa_tsg_bin_image_head** %5, align 8
  %43 = getelementptr inbounds %struct.cyapa_tsg_bin_image_head, %struct.cyapa_tsg_bin_image_head* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %67

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %68

50:                                               ; preds = %36
  %51 = load %struct.cyapa_tsg_bin_image_head*, %struct.cyapa_tsg_bin_image_head** %5, align 8
  %52 = getelementptr inbounds %struct.cyapa_tsg_bin_image_head, %struct.cyapa_tsg_bin_image_head* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 145
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.cyapa_tsg_bin_image_head*, %struct.cyapa_tsg_bin_image_head** %5, align 8
  %57 = getelementptr inbounds %struct.cyapa_tsg_bin_image_head, %struct.cyapa_tsg_bin_image_head* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 2
  br i1 %59, label %60, label %63

60:                                               ; preds = %55, %50
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %68

63:                                               ; preds = %55
  br label %67

64:                                               ; preds = %18
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %63, %46, %35
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %64, %60, %47, %32, %15
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
