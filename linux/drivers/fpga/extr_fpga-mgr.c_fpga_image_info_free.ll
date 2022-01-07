; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_fpga_image_info_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_fpga_image_info_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_image_info = type { %struct.fpga_image_info*, %struct.device* }
%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpga_image_info_free(%struct.fpga_image_info* %0) #0 {
  %2 = alloca %struct.fpga_image_info*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.fpga_image_info* %0, %struct.fpga_image_info** %2, align 8
  %4 = load %struct.fpga_image_info*, %struct.fpga_image_info** %2, align 8
  %5 = icmp ne %struct.fpga_image_info* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %27

7:                                                ; preds = %1
  %8 = load %struct.fpga_image_info*, %struct.fpga_image_info** %2, align 8
  %9 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %8, i32 0, i32 1
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %3, align 8
  %11 = load %struct.fpga_image_info*, %struct.fpga_image_info** %2, align 8
  %12 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %11, i32 0, i32 0
  %13 = load %struct.fpga_image_info*, %struct.fpga_image_info** %12, align 8
  %14 = icmp ne %struct.fpga_image_info* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load %struct.fpga_image_info*, %struct.fpga_image_info** %2, align 8
  %18 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %17, i32 0, i32 0
  %19 = load %struct.fpga_image_info*, %struct.fpga_image_info** %18, align 8
  %20 = call i32 @devm_kfree(%struct.device* %16, %struct.fpga_image_info* %19)
  br label %21

21:                                               ; preds = %15, %7
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = load %struct.fpga_image_info*, %struct.fpga_image_info** %2, align 8
  %24 = call i32 @devm_kfree(%struct.device* %22, %struct.fpga_image_info* %23)
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i32 @put_device(%struct.device* %25)
  br label %27

27:                                               ; preds = %21, %6
  ret void
}

declare dso_local i32 @devm_kfree(%struct.device*, %struct.fpga_image_info*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
