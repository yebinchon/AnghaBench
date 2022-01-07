; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_get_i2c_prescale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_get_i2c_prescale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"i2c: unhandled radeon chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @radeon_get_i2c_prescale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_get_i2c_prescale(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %77 [
    i32 167, label %17
    i32 147, label %17
    i32 157, label %17
    i32 146, label %17
    i32 156, label %17
    i32 166, label %17
    i32 145, label %17
    i32 155, label %17
    i32 144, label %17
    i32 165, label %17
    i32 164, label %17
    i32 143, label %17
    i32 142, label %46
    i32 154, label %46
    i32 153, label %46
    i32 163, label %46
    i32 162, label %46
    i32 141, label %46
    i32 152, label %53
    i32 151, label %53
    i32 150, label %53
    i32 140, label %54
    i32 161, label %54
    i32 139, label %54
    i32 138, label %54
    i32 137, label %54
    i32 160, label %54
    i32 159, label %74
    i32 136, label %74
    i32 134, label %74
    i32 132, label %74
    i32 135, label %75
    i32 133, label %75
    i32 149, label %75
    i32 148, label %75
    i32 128, label %75
    i32 130, label %75
    i32 131, label %75
    i32 129, label %75
    i32 171, label %76
    i32 158, label %76
    i32 168, label %76
    i32 170, label %76
    i32 169, label %76
  ]

17:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 60, i32* %9, align 4
  %18 = load i32, i32* %3, align 4
  %19 = mul nsw i32 %18, 10
  %20 = load i32, i32* %9, align 4
  %21 = mul nsw i32 %20, 4
  %22 = sdiv i32 %19, %21
  store i32 %22, i32* %5, align 4
  store i32 1, i32* %8, align 4
  br label %23

23:                                               ; preds = %34, %17
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 255
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sdiv i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %37

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %23

37:                                               ; preds = %32, %23
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %40, 2
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %42, %44
  store i32 %45, i32* %4, align 4
  br label %79

46:                                               ; preds = %1, %1, %1, %1, %1, %1
  %47 = load i32, i32* %3, align 4
  %48 = mul nsw i32 %47, 10
  %49 = sdiv i32 %48, 51200
  %50 = add nsw i32 %49, 1
  %51 = shl i32 %50, 8
  %52 = add nsw i32 %51, 128
  store i32 %52, i32* %4, align 4
  br label %79

53:                                               ; preds = %1, %1, %1
  br label %79

54:                                               ; preds = %1, %1, %1, %1, %1, %1
  store i32 50, i32* %9, align 4
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 161
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32, i32* %3, align 4
  %61 = mul nsw i32 %60, 10
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 508, %62
  %64 = sdiv i32 %61, %63
  %65 = add nsw i32 32512, %64
  store i32 %65, i32* %4, align 4
  br label %73

66:                                               ; preds = %54
  %67 = load i32, i32* %3, align 4
  %68 = mul nsw i32 %67, 10
  %69 = sdiv i32 %68, 51200
  %70 = add nsw i32 %69, 1
  %71 = shl i32 %70, 8
  %72 = add nsw i32 %71, 128
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %66, %59
  br label %79

74:                                               ; preds = %1, %1, %1, %1
  br label %79

75:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  br label %79

76:                                               ; preds = %1, %1, %1, %1, %1
  br label %79

77:                                               ; preds = %1
  %78 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %76, %75, %74, %73, %53, %46, %37
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
