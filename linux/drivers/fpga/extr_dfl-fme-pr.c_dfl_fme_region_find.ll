; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-pr.c_dfl_fme_region_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-pr.c_dfl_fme_region_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_region = type { i32 }
%struct.dfl_fme = type { i32 }
%struct.dfl_fme_region = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dfl_fme_region_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fpga_region* (%struct.dfl_fme*, i32)* @dfl_fme_region_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fpga_region* @dfl_fme_region_find(%struct.dfl_fme* %0, i32 %1) #0 {
  %3 = alloca %struct.fpga_region*, align 8
  %4 = alloca %struct.dfl_fme*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dfl_fme_region*, align 8
  %7 = alloca %struct.fpga_region*, align 8
  store %struct.dfl_fme* %0, %struct.dfl_fme** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dfl_fme*, %struct.dfl_fme** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.dfl_fme_region* @dfl_fme_region_find_by_port_id(%struct.dfl_fme* %8, i32 %9)
  store %struct.dfl_fme_region* %10, %struct.dfl_fme_region** %6, align 8
  %11 = load %struct.dfl_fme_region*, %struct.dfl_fme_region** %6, align 8
  %12 = icmp ne %struct.dfl_fme_region* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.fpga_region* null, %struct.fpga_region** %3, align 8
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.dfl_fme_region*, %struct.dfl_fme_region** %6, align 8
  %16 = getelementptr inbounds %struct.dfl_fme_region, %struct.dfl_fme_region* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* @dfl_fme_region_match, align 4
  %20 = call %struct.fpga_region* @fpga_region_class_find(i32* null, i32* %18, i32 %19)
  store %struct.fpga_region* %20, %struct.fpga_region** %7, align 8
  %21 = load %struct.fpga_region*, %struct.fpga_region** %7, align 8
  %22 = icmp ne %struct.fpga_region* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store %struct.fpga_region* null, %struct.fpga_region** %3, align 8
  br label %26

24:                                               ; preds = %14
  %25 = load %struct.fpga_region*, %struct.fpga_region** %7, align 8
  store %struct.fpga_region* %25, %struct.fpga_region** %3, align 8
  br label %26

26:                                               ; preds = %24, %23, %13
  %27 = load %struct.fpga_region*, %struct.fpga_region** %3, align 8
  ret %struct.fpga_region* %27
}

declare dso_local %struct.dfl_fme_region* @dfl_fme_region_find_by_port_id(%struct.dfl_fme*, i32) #1

declare dso_local %struct.fpga_region* @fpga_region_class_find(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
