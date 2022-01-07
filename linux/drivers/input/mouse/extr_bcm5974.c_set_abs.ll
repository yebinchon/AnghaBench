; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_set_abs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_set_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.bcm5974_param = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, i32, %struct.bcm5974_param*)* @set_abs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_abs(%struct.input_dev* %0, i32 %1, %struct.bcm5974_param* %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm5974_param*, align 8
  %7 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bcm5974_param* %2, %struct.bcm5974_param** %6, align 8
  %8 = load %struct.bcm5974_param*, %struct.bcm5974_param** %6, align 8
  %9 = getelementptr inbounds %struct.bcm5974_param, %struct.bcm5974_param* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load %struct.bcm5974_param*, %struct.bcm5974_param** %6, align 8
  %14 = getelementptr inbounds %struct.bcm5974_param, %struct.bcm5974_param* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bcm5974_param*, %struct.bcm5974_param** %6, align 8
  %17 = getelementptr inbounds %struct.bcm5974_param, %struct.bcm5974_param* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  %20 = load %struct.bcm5974_param*, %struct.bcm5974_param** %6, align 8
  %21 = getelementptr inbounds %struct.bcm5974_param, %struct.bcm5974_param* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %19, %22
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %12
  %26 = phi i32 [ %23, %12 ], [ 0, %24 ]
  store i32 %26, i32* %7, align 4
  %27 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.bcm5974_param*, %struct.bcm5974_param** %6, align 8
  %30 = getelementptr inbounds %struct.bcm5974_param, %struct.bcm5974_param* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bcm5974_param*, %struct.bcm5974_param** %6, align 8
  %33 = getelementptr inbounds %struct.bcm5974_param, %struct.bcm5974_param* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @input_set_abs_params(%struct.input_dev* %27, i32 %28, i32 %31, i32 %34, i32 %35, i32 0)
  ret void
}

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
