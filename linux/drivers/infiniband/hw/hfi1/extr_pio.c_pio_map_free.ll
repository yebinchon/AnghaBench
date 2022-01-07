; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_pio_map_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_pio_map_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pio_vl_map = type { i32, %struct.pio_vl_map** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pio_vl_map*)* @pio_map_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pio_map_free(%struct.pio_vl_map* %0) #0 {
  %2 = alloca %struct.pio_vl_map*, align 8
  %3 = alloca i32, align 4
  store %struct.pio_vl_map* %0, %struct.pio_vl_map** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %24, %1
  %5 = load %struct.pio_vl_map*, %struct.pio_vl_map** %2, align 8
  %6 = icmp ne %struct.pio_vl_map* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.pio_vl_map*, %struct.pio_vl_map** %2, align 8
  %10 = getelementptr inbounds %struct.pio_vl_map, %struct.pio_vl_map* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br label %13

13:                                               ; preds = %7, %4
  %14 = phi i1 [ false, %4 ], [ %12, %7 ]
  br i1 %14, label %15, label %27

15:                                               ; preds = %13
  %16 = load %struct.pio_vl_map*, %struct.pio_vl_map** %2, align 8
  %17 = getelementptr inbounds %struct.pio_vl_map, %struct.pio_vl_map* %16, i32 0, i32 1
  %18 = load %struct.pio_vl_map**, %struct.pio_vl_map*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.pio_vl_map*, %struct.pio_vl_map** %18, i64 %20
  %22 = load %struct.pio_vl_map*, %struct.pio_vl_map** %21, align 8
  %23 = call i32 @kfree(%struct.pio_vl_map* %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %4

27:                                               ; preds = %13
  %28 = load %struct.pio_vl_map*, %struct.pio_vl_map** %2, align 8
  %29 = call i32 @kfree(%struct.pio_vl_map* %28)
  ret void
}

declare dso_local i32 @kfree(%struct.pio_vl_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
