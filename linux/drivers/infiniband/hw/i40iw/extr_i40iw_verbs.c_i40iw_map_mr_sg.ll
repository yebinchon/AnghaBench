; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_map_mr_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_map_mr_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.scatterlist = type { i32 }
%struct.i40iw_mr = type { i64 }

@i40iw_set_page = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mr*, %struct.scatterlist*, i32, i32*)* @i40iw_map_mr_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_map_mr_sg(%struct.ib_mr* %0, %struct.scatterlist* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ib_mr*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.i40iw_mr*, align 8
  store %struct.ib_mr* %0, %struct.ib_mr** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %11 = call %struct.i40iw_mr* @to_iwmr(%struct.ib_mr* %10)
  store %struct.i40iw_mr* %11, %struct.i40iw_mr** %9, align 8
  %12 = load %struct.i40iw_mr*, %struct.i40iw_mr** %9, align 8
  %13 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %15 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @i40iw_set_page, align 4
  %19 = call i32 @ib_sg_to_pages(%struct.ib_mr* %14, %struct.scatterlist* %15, i32 %16, i32* %17, i32 %18)
  ret i32 %19
}

declare dso_local %struct.i40iw_mr* @to_iwmr(%struct.ib_mr*) #1

declare dso_local i32 @ib_sg_to_pages(%struct.ib_mr*, %struct.scatterlist*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
