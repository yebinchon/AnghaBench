; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda9950.c_tda9950_devm_glue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda9950.c_tda9950_devm_glue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tda9950_glue = type { i32 (i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.tda9950_glue*)* @tda9950_devm_glue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9950_devm_glue_init(%struct.device* %0, %struct.tda9950_glue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tda9950_glue*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.tda9950_glue* %1, %struct.tda9950_glue** %5, align 8
  %7 = load %struct.tda9950_glue*, %struct.tda9950_glue** %5, align 8
  %8 = icmp ne %struct.tda9950_glue* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.tda9950_glue*, %struct.tda9950_glue** %5, align 8
  %11 = getelementptr inbounds %struct.tda9950_glue, %struct.tda9950_glue* %10, i32 0, i32 0
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = icmp ne i32 (i32)* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load %struct.tda9950_glue*, %struct.tda9950_glue** %5, align 8
  %16 = getelementptr inbounds %struct.tda9950_glue, %struct.tda9950_glue* %15, i32 0, i32 0
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = load %struct.tda9950_glue*, %struct.tda9950_glue** %5, align 8
  %19 = getelementptr inbounds %struct.tda9950_glue, %struct.tda9950_glue* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %17(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %38

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %9, %2
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.tda9950_glue*, %struct.tda9950_glue** %5, align 8
  %30 = call i32 @devm_add_action(%struct.device* %28, i32 (%struct.tda9950_glue*)* @tda9950_devm_glue_exit, %struct.tda9950_glue* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.tda9950_glue*, %struct.tda9950_glue** %5, align 8
  %35 = call i32 @tda9950_devm_glue_exit(%struct.tda9950_glue* %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %24
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @devm_add_action(%struct.device*, i32 (%struct.tda9950_glue*)*, %struct.tda9950_glue*) #1

declare dso_local i32 @tda9950_devm_glue_exit(%struct.tda9950_glue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
