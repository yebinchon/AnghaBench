; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_drm_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_drm_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_driver*, i32 }
%struct.drm_driver = type { i32 }
%struct.device = type { i32 }

@drm_core_init_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"DRM core is not initialized\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Cannot allocate anonymous inode: %d\0A\00", align 1
@DRIVER_RENDER = common dso_local global i32 0, align 4
@DRM_MINOR_RENDER = common dso_local global i32 0, align 4
@DRM_MINOR_PRIMARY = common dso_local global i32 0, align 4
@DRIVER_GEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Cannot initialize graphics execution manager (GEM)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dev_init(%struct.drm_device* %0, %struct.drm_driver* %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_driver*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_driver* %1, %struct.drm_driver** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %9 = load i32, i32* @drm_core_init_complete, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %172

15:                                               ; preds = %3
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = icmp ne %struct.device* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 13
  %23 = call i32 @kref_init(i32* %22)
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = call i32 @get_device(%struct.device* %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.drm_driver*, %struct.drm_driver** %6, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 12
  store %struct.drm_driver* %28, %struct.drm_driver** %30, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %34 = call i32 @drm_legacy_init_members(%struct.drm_device* %33)
  %35 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 11
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 10
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %42 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %41, i32 0, i32 9
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 8
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 7
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 1
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %54 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %53, i32 0, i32 2
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %57 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %56, i32 0, i32 3
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %60 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %59, i32 0, i32 4
  %61 = call i32 @mutex_init(i32* %60)
  %62 = call i32 (...) @drm_fs_inode_new()
  %63 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %66 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %15
  %71 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %72 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @PTR_ERR(i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %152

77:                                               ; preds = %15
  %78 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %79 = load i32, i32* @DRIVER_RENDER, align 4
  %80 = call i64 @drm_core_check_feature(%struct.drm_device* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %84 = load i32, i32* @DRM_MINOR_RENDER, align 4
  %85 = call i32 @drm_minor_alloc(%struct.drm_device* %83, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %141

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %77
  %91 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %92 = load i32, i32* @DRM_MINOR_PRIMARY, align 4
  %93 = call i32 @drm_minor_alloc(%struct.drm_device* %91, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %141

97:                                               ; preds = %90
  %98 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %99 = call i32 @drm_legacy_create_map_hash(%struct.drm_device* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %141

103:                                              ; preds = %97
  %104 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %105 = call i32 @drm_legacy_ctxbitmap_init(%struct.drm_device* %104)
  %106 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %107 = load i32, i32* @DRIVER_GEM, align 4
  %108 = call i64 @drm_core_check_feature(%struct.drm_device* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %112 = call i32 @drm_gem_init(%struct.drm_device* %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %136

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %103
  %119 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %120 = load %struct.device*, %struct.device** %7, align 8
  %121 = call i32 @dev_name(%struct.device* %120)
  %122 = call i32 @drm_dev_set_unique(%struct.drm_device* %119, i32 %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %127

126:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %172

127:                                              ; preds = %125
  %128 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %129 = load i32, i32* @DRIVER_GEM, align 4
  %130 = call i64 @drm_core_check_feature(%struct.drm_device* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %134 = call i32 @drm_gem_destroy(%struct.drm_device* %133)
  br label %135

135:                                              ; preds = %132, %127
  br label %136

136:                                              ; preds = %135, %115
  %137 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %138 = call i32 @drm_legacy_ctxbitmap_cleanup(%struct.drm_device* %137)
  %139 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %140 = call i32 @drm_legacy_remove_map_hash(%struct.drm_device* %139)
  br label %141

141:                                              ; preds = %136, %102, %96, %88
  %142 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %143 = load i32, i32* @DRM_MINOR_PRIMARY, align 4
  %144 = call i32 @drm_minor_free(%struct.drm_device* %142, i32 %143)
  %145 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %146 = load i32, i32* @DRM_MINOR_RENDER, align 4
  %147 = call i32 @drm_minor_free(%struct.drm_device* %145, i32 %146)
  %148 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %149 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @drm_fs_inode_free(i32 %150)
  br label %152

152:                                              ; preds = %141, %70
  %153 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %154 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @put_device(i32 %155)
  %157 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %158 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %157, i32 0, i32 4
  %159 = call i32 @mutex_destroy(i32* %158)
  %160 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %161 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %160, i32 0, i32 3
  %162 = call i32 @mutex_destroy(i32* %161)
  %163 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %164 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %163, i32 0, i32 2
  %165 = call i32 @mutex_destroy(i32* %164)
  %166 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %167 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %166, i32 0, i32 1
  %168 = call i32 @mutex_destroy(i32* %167)
  %169 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %170 = call i32 @drm_legacy_destroy_members(%struct.drm_device* %169)
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %152, %126, %11
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @drm_legacy_init_members(%struct.drm_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @drm_fs_inode_new(...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_minor_alloc(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_legacy_create_map_hash(%struct.drm_device*) #1

declare dso_local i32 @drm_legacy_ctxbitmap_init(%struct.drm_device*) #1

declare dso_local i32 @drm_gem_init(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_set_unique(%struct.drm_device*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @drm_gem_destroy(%struct.drm_device*) #1

declare dso_local i32 @drm_legacy_ctxbitmap_cleanup(%struct.drm_device*) #1

declare dso_local i32 @drm_legacy_remove_map_hash(%struct.drm_device*) #1

declare dso_local i32 @drm_minor_free(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_fs_inode_free(i32) #1

declare dso_local i32 @put_device(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @drm_legacy_destroy_members(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
