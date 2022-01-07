; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_reg_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_reg_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop = type { i32*, i64, i32 }
%struct.vop_reg = type { i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"Warning: not support %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vop*, %struct.vop_reg*, i32, i32, i32, i8*)* @vop_reg_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vop_reg_set(%struct.vop* %0, %struct.vop_reg* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.vop*, align 8
  %8 = alloca %struct.vop_reg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vop* %0, %struct.vop** %7, align 8
  store %struct.vop_reg* %1, %struct.vop_reg** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %17 = load %struct.vop_reg*, %struct.vop_reg** %8, align 8
  %18 = icmp ne %struct.vop_reg* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %6
  %20 = load %struct.vop_reg*, %struct.vop_reg** %8, align 8
  %21 = getelementptr inbounds %struct.vop_reg, %struct.vop_reg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19, %6
  %25 = load %struct.vop*, %struct.vop** %7, align 8
  %26 = getelementptr inbounds %struct.vop, %struct.vop* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @DRM_DEV_DEBUG(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %110

30:                                               ; preds = %19
  %31 = load %struct.vop_reg*, %struct.vop_reg** %8, align 8
  %32 = getelementptr inbounds %struct.vop_reg, %struct.vop_reg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %13, align 4
  %36 = load %struct.vop_reg*, %struct.vop_reg** %8, align 8
  %37 = getelementptr inbounds %struct.vop_reg, %struct.vop_reg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %14, align 4
  %41 = load %struct.vop_reg*, %struct.vop_reg** %8, align 8
  %42 = getelementptr inbounds %struct.vop_reg, %struct.vop_reg* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %15, align 4
  %44 = load %struct.vop_reg*, %struct.vop_reg** %8, align 8
  %45 = getelementptr inbounds %struct.vop_reg, %struct.vop_reg* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %30
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %15, align 4
  %51 = shl i32 %49, %50
  %52 = and i32 %51, 65535
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, 16
  %56 = shl i32 %53, %55
  %57 = or i32 %52, %56
  store i32 %57, i32* %11, align 4
  br label %87

58:                                               ; preds = %30
  %59 = load %struct.vop*, %struct.vop** %7, align 8
  %60 = getelementptr inbounds %struct.vop, %struct.vop* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = ashr i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = shl i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = and i32 %67, %71
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %14, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* %15, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %72, %77
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.vop*, %struct.vop** %7, align 8
  %81 = getelementptr inbounds %struct.vop, %struct.vop* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = ashr i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %79, i32* %86, align 4
  br label %87

87:                                               ; preds = %58, %48
  %88 = load %struct.vop_reg*, %struct.vop_reg** %8, align 8
  %89 = getelementptr inbounds %struct.vop_reg, %struct.vop_reg* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.vop*, %struct.vop** %7, align 8
  %95 = getelementptr inbounds %struct.vop, %struct.vop* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = call i32 @writel_relaxed(i32 %93, i64 %99)
  br label %110

101:                                              ; preds = %87
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.vop*, %struct.vop** %7, align 8
  %104 = getelementptr inbounds %struct.vop, %struct.vop* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = call i32 @writel(i32 %102, i64 %108)
  br label %110

110:                                              ; preds = %24, %101, %92
  ret void
}

declare dso_local i32 @DRM_DEV_DEBUG(i32, i8*, i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
