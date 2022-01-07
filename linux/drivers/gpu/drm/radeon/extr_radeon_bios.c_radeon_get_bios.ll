; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_bios.c_radeon_get_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_bios.c_radeon_get_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Unable to locate a BIOS ROM\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"BIOS signature incorrect %x %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Not an x86 BIOS ROM, not using.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ATOM\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"MOTA\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%sBIOS detected\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"COM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_get_bios(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call i32 @radeon_atrm_get_bios(%struct.radeon_device* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @radeon_acpi_vfct_bios(%struct.radeon_device* %11)
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = call i32 @igp_read_bios_from_vram(%struct.radeon_device* %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = call i32 @radeon_read_bios(%struct.radeon_device* %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = call i32 @radeon_read_disabled_bios(%struct.radeon_device* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = call i32 @radeon_read_platform_bios(%struct.radeon_device* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40, %37
  %46 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  store i32 0, i32* %2, align 4
  br label %137

49:                                               ; preds = %40
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 85
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 170
  br i1 %62, label %63, label %75

63:                                               ; preds = %56, %49
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %73)
  br label %130

75:                                               ; preds = %56
  %76 = call i8* @RBIOS16(i32 24)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 20
  %80 = call i32 @RBIOS8(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = call i32 @DRM_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %130

84:                                               ; preds = %75
  %85 = call i8* @RBIOS16(i32 72)
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %84
  br label %130

94:                                               ; preds = %84
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 4
  store i32 %98, i32* %5, align 4
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i32 @memcmp(i32* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %94
  %108 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call i32 @memcmp(i32* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %107, %94
  %117 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %118 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %117, i32 0, i32 2
  store i32 1, i32* %118, align 4
  br label %122

119:                                              ; preds = %107
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %120, i32 0, i32 2
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %116
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %129 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %128)
  store i32 1, i32* %2, align 4
  br label %137

130:                                              ; preds = %93, %82, %63
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @kfree(i32* %133)
  %135 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %136 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %135, i32 0, i32 0
  store i32* null, i32** %136, align 8
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %130, %122, %45
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @radeon_atrm_get_bios(%struct.radeon_device*) #1

declare dso_local i32 @radeon_acpi_vfct_bios(%struct.radeon_device*) #1

declare dso_local i32 @igp_read_bios_from_vram(%struct.radeon_device*) #1

declare dso_local i32 @radeon_read_bios(%struct.radeon_device*) #1

declare dso_local i32 @radeon_read_disabled_bios(%struct.radeon_device*) #1

declare dso_local i32 @radeon_read_platform_bios(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i8* @RBIOS16(i32) #1

declare dso_local i32 @RBIOS8(i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
