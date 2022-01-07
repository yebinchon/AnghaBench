; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gk20a.c_gk20a_volt_get_cvb_t_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gk20a.c_gk20a_volt_get_cvb_t_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvb_coef = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.cvb_coef*)* @gk20a_volt_get_cvb_t_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk20a_volt_get_cvb_t_voltage(i32 %0, i32 %1, i32 %2, i32 %3, %struct.cvb_coef* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cvb_coef*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.cvb_coef* %4, %struct.cvb_coef** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.cvb_coef*, %struct.cvb_coef** %10, align 8
  %16 = call i32 @gk20a_volt_get_cvb_voltage(i32 %13, i32 %14, %struct.cvb_coef* %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.cvb_coef*, %struct.cvb_coef** %10, align 8
  %18 = getelementptr inbounds %struct.cvb_coef, %struct.cvb_coef* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @DIV_ROUND_CLOSEST(i32 %21, i32 %22)
  %24 = load %struct.cvb_coef*, %struct.cvb_coef** %10, align 8
  %25 = getelementptr inbounds %struct.cvb_coef, %struct.cvb_coef* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = load %struct.cvb_coef*, %struct.cvb_coef** %10, align 8
  %29 = getelementptr inbounds %struct.cvb_coef, %struct.cvb_coef* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @DIV_ROUND_CLOSEST(i32 %32, i32 %33)
  %35 = add nsw i32 %27, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @DIV_ROUND_CLOSEST(i32 %38, i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  ret i32 %43
}

declare dso_local i32 @gk20a_volt_get_cvb_voltage(i32, i32, %struct.cvb_coef*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
