; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-freeze-bridge.c_altera_freeze_br_enable_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-freeze-bridge.c_altera_freeze_br_enable_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_bridge = type { %struct.altera_freeze_br_data*, %struct.fpga_image_info* }
%struct.altera_freeze_br_data = type { i32 }
%struct.fpga_image_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_bridge*, i32)* @altera_freeze_br_enable_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_freeze_br_enable_set(%struct.fpga_bridge* %0, i32 %1) #0 {
  %3 = alloca %struct.fpga_bridge*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.altera_freeze_br_data*, align 8
  %6 = alloca %struct.fpga_image_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fpga_bridge* %0, %struct.fpga_bridge** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.fpga_bridge*, %struct.fpga_bridge** %3, align 8
  %10 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %9, i32 0, i32 0
  %11 = load %struct.altera_freeze_br_data*, %struct.altera_freeze_br_data** %10, align 8
  store %struct.altera_freeze_br_data* %11, %struct.altera_freeze_br_data** %5, align 8
  %12 = load %struct.fpga_bridge*, %struct.fpga_bridge** %3, align 8
  %13 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %12, i32 0, i32 1
  %14 = load %struct.fpga_image_info*, %struct.fpga_image_info** %13, align 8
  store %struct.fpga_image_info* %14, %struct.fpga_image_info** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.fpga_image_info*, %struct.fpga_image_info** %6, align 8
  %19 = icmp ne %struct.fpga_image_info* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.fpga_image_info*, %struct.fpga_image_info** %6, align 8
  %22 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load %struct.fpga_bridge*, %struct.fpga_bridge** %3, align 8
  %26 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %25, i32 0, i32 0
  %27 = load %struct.altera_freeze_br_data*, %struct.altera_freeze_br_data** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @altera_freeze_br_do_unfreeze(%struct.altera_freeze_br_data* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %43

30:                                               ; preds = %2
  %31 = load %struct.fpga_image_info*, %struct.fpga_image_info** %6, align 8
  %32 = icmp ne %struct.fpga_image_info* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.fpga_image_info*, %struct.fpga_image_info** %6, align 8
  %35 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load %struct.fpga_bridge*, %struct.fpga_bridge** %3, align 8
  %39 = getelementptr inbounds %struct.fpga_bridge, %struct.fpga_bridge* %38, i32 0, i32 0
  %40 = load %struct.altera_freeze_br_data*, %struct.altera_freeze_br_data** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @altera_freeze_br_do_freeze(%struct.altera_freeze_br_data* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %37, %24
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.altera_freeze_br_data*, %struct.altera_freeze_br_data** %5, align 8
  %49 = getelementptr inbounds %struct.altera_freeze_br_data, %struct.altera_freeze_br_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @altera_freeze_br_do_unfreeze(%struct.altera_freeze_br_data*, i32) #1

declare dso_local i32 @altera_freeze_br_do_freeze(%struct.altera_freeze_br_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
