; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_main.c_mgag200_driver_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_main.c_mgag200_driver_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i8* }
%struct.mga_device = type { %struct.drm_device*, %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32*, i32*, i32* }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Fatal error during GPU init: %d\0A\00", align 1
@mga_mode_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Fatal error during modeset init: %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"Could not allocate space for cursors. Not doing hardware cursors.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgag200_driver_load(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mga_device*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mga_device* @devm_kzalloc(i32 %10, i32 40, i32 %11)
  store %struct.mga_device* %12, %struct.mga_device** %6, align 8
  %13 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %14 = icmp eq %struct.mga_device* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %155

18:                                               ; preds = %2
  %19 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %20 = bitcast %struct.mga_device* %19 to i8*
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %26 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %25, i32 0, i32 0
  store %struct.drm_device* %24, %struct.drm_device** %26, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @mgag200_device_init(%struct.drm_device* %27, i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %18
  %33 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %155

40:                                               ; preds = %18
  %41 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %42 = call i32 @mgag200_mm_init(%struct.mga_device* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %151

46:                                               ; preds = %40
  %47 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %48 = call i32 @drm_mode_config_init(%struct.drm_device* %47)
  %49 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store i8* bitcast (i32* @mga_mode_funcs to i8*), i8** %51, align 8
  %52 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %53 = call i64 @IS_G200_SE(%struct.mga_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %57 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 2097152
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %63 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 16, i32* %64, align 8
  br label %69

65:                                               ; preds = %55, %46
  %66 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %67 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 32, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %71 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %74 = call i32 @mgag200_modeset_init(%struct.mga_device* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %79 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %78, i32 0, i32 1
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %146

84:                                               ; preds = %69
  %85 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %86 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %87 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %86, i32 0, i32 2
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* @PAGE_SIZE, align 4
  %91 = call i32 @roundup(i32 3072, i32 %90)
  %92 = call i8* @drm_gem_vram_create(%struct.drm_device* %85, i32* %89, i32 %91, i32 0, i32 0)
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %95 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  store i32* %93, i32** %96, align 8
  %97 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %98 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %99 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %98, i32 0, i32 2
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = call i32 @roundup(i32 3072, i32 %102)
  %104 = call i8* @drm_gem_vram_create(%struct.drm_device* %97, i32* %101, i32 %103, i32 0, i32 0)
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %107 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  store i32* %105, i32** %108, align 8
  %109 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %110 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @IS_ERR(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %84
  %116 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %117 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = call i64 @IS_ERR(i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %115, %84
  %123 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %124 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  store i32* null, i32** %125, align 8
  %126 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %127 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  store i32* null, i32** %128, align 8
  %129 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %130 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %129, i32 0, i32 1
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = call i32 @dev_warn(i32* %132, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  br label %134

134:                                              ; preds = %122, %115
  %135 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %136 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  store i32* null, i32** %137, align 8
  %138 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %139 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %138, i32 0, i32 0
  %140 = load %struct.drm_device*, %struct.drm_device** %139, align 8
  %141 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %140, i32 0)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %134
  br label %146

145:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %155

146:                                              ; preds = %144, %77
  %147 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %148 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %147)
  %149 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %150 = call i32 @mgag200_mm_fini(%struct.mga_device* %149)
  br label %151

151:                                              ; preds = %146, %45
  %152 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %153 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %152, i32 0, i32 0
  store i32* null, i32** %153, align 8
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %151, %145, %32, %15
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.mga_device* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @mgag200_device_init(%struct.drm_device*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mgag200_mm_init(%struct.mga_device*) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i64 @IS_G200_SE(%struct.mga_device*) #1

declare dso_local i32 @mgag200_modeset_init(%struct.mga_device*) #1

declare dso_local i8* @drm_gem_vram_create(%struct.drm_device*, i32*, i32, i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @mgag200_mm_fini(%struct.mga_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
