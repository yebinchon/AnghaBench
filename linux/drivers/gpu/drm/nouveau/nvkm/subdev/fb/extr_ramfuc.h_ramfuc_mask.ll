; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramfuc.h_ramfuc_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramfuc.h_ramfuc_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ramfuc = type { i32 }
%struct.ramfuc_reg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ramfuc*, %struct.ramfuc_reg*, i32, i32)* @ramfuc_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ramfuc_mask(%struct.ramfuc* %0, %struct.ramfuc_reg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ramfuc*, align 8
  %6 = alloca %struct.ramfuc_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ramfuc* %0, %struct.ramfuc** %5, align 8
  store %struct.ramfuc_reg* %1, %struct.ramfuc_reg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ramfuc*, %struct.ramfuc** %5, align 8
  %11 = load %struct.ramfuc_reg*, %struct.ramfuc_reg** %6, align 8
  %12 = call i32 @ramfuc_rd32(%struct.ramfuc* %10, %struct.ramfuc_reg* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %17, %18
  %20 = icmp ne i32 %13, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load %struct.ramfuc_reg*, %struct.ramfuc_reg** %6, align 8
  %23 = getelementptr inbounds %struct.ramfuc_reg, %struct.ramfuc_reg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21, %4
  %27 = load %struct.ramfuc*, %struct.ramfuc** %5, align 8
  %28 = load %struct.ramfuc_reg*, %struct.ramfuc_reg** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @ramfuc_wr32(%struct.ramfuc* %27, %struct.ramfuc_reg* %28, i32 %34)
  %36 = load %struct.ramfuc_reg*, %struct.ramfuc_reg** %6, align 8
  %37 = getelementptr inbounds %struct.ramfuc_reg, %struct.ramfuc_reg* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %26, %21
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local i32 @ramfuc_rd32(%struct.ramfuc*, %struct.ramfuc_reg*) #1

declare dso_local i32 @ramfuc_wr32(%struct.ramfuc*, %struct.ramfuc_reg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
