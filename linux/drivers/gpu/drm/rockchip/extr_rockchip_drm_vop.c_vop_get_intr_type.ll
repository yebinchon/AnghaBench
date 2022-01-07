; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_get_intr_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_get_intr_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32* }
%struct.vop_reg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vop*, %struct.vop_reg*, i32)* @vop_get_intr_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vop_get_intr_type(%struct.vop* %0, %struct.vop_reg* %1, i32 %2) #0 {
  %4 = alloca %struct.vop*, align 8
  %5 = alloca %struct.vop_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.vop* %0, %struct.vop** %4, align 8
  store %struct.vop_reg* %1, %struct.vop_reg** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %10 = load %struct.vop*, %struct.vop** %4, align 8
  %11 = load %struct.vop_reg*, %struct.vop_reg** %5, align 8
  %12 = call i64 @vop_read_reg(%struct.vop* %10, i32 0, %struct.vop_reg* %11)
  store i64 %12, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %60, %3
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.vop*, %struct.vop** %4, align 8
  %16 = getelementptr inbounds %struct.vop, %struct.vop* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %14, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.vop*, %struct.vop** %4, align 8
  %26 = getelementptr inbounds %struct.vop, %struct.vop* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %24, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %23
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 1, %40
  %42 = sext i32 %41 to i64
  %43 = and i64 %38, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %37
  %46 = load %struct.vop*, %struct.vop** %4, align 8
  %47 = getelementptr inbounds %struct.vop, %struct.vop* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %8, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %45, %37, %23
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %13

63:                                               ; preds = %13
  %64 = load i64, i64* %8, align 8
  ret i64 %64
}

declare dso_local i64 @vop_read_reg(%struct.vop*, i32, %struct.vop_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
