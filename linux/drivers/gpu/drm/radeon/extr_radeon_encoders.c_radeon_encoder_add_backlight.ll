; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_encoders.c_radeon_encoder_add_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_encoders.c_radeon_encoder_add_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.drm_connector = type { i32 }

@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@radeon_backlight = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_encoder*, %struct.drm_connector*)* @radeon_encoder_add_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_encoder_add_backlight(%struct.radeon_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %8 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  store %struct.radeon_device* %14, %struct.radeon_device** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %84

22:                                               ; preds = %2
  %23 = load i32, i32* @radeon_backlight, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %84

26:                                               ; preds = %22
  %27 = load i32, i32* @radeon_backlight, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  br label %66

30:                                               ; preds = %26
  %31 = load i32, i32* @radeon_backlight, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %65

33:                                               ; preds = %30
  %34 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 38275
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 5940
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 4359
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %64

55:                                               ; preds = %47, %40, %33
  %56 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CHIP_R600, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %63

62:                                               ; preds = %55
  store i32 1, i32* %7, align 4
  br label %63

63:                                               ; preds = %62, %61
  br label %64

64:                                               ; preds = %63, %54
  br label %65

65:                                               ; preds = %64, %30
  br label %66

66:                                               ; preds = %65, %29
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %77 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %78 = call i32 @radeon_atom_backlight_init(%struct.radeon_encoder* %76, %struct.drm_connector* %77)
  br label %83

79:                                               ; preds = %70
  %80 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %81 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %82 = call i32 @radeon_legacy_backlight_init(%struct.radeon_encoder* %80, %struct.drm_connector* %81)
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %21, %25, %83, %67
  ret void
}

declare dso_local i32 @radeon_atom_backlight_init(%struct.radeon_encoder*, %struct.drm_connector*) #1

declare dso_local i32 @radeon_legacy_backlight_init(%struct.radeon_encoder*, %struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
