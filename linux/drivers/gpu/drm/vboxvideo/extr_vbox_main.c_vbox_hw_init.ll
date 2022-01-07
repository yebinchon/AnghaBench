; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_main.c_vbox_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_main.c_vbox_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbox_private = type { i64, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@VBE_DISPI_IOPORT_DATA = common dso_local global i32 0, align 4
@VBE_DISPI_ID_ANYX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"VRAM %08x\0A\00", align 1
@GUEST_HEAP_SIZE = common dso_local global i32 0, align 4
@GUEST_HEAP_USABLE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"vboxvideo: hgsmi_test_query_conf failed\0A\00", align 1
@VBOX_VBVA_CONF32_MONITOR_COUNT = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@VBOX_MAX_SCREENS = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vbox_hw_init(%struct.vbox_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vbox_private*, align 8
  %4 = alloca i32, align 4
  store %struct.vbox_private* %0, %struct.vbox_private** %3, align 8
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @VBE_DISPI_IOPORT_DATA, align 4
  %8 = call i32 @inl(i32 %7)
  %9 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %10 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @VBE_DISPI_ID_ANYX, align 4
  %12 = call i32 @vbox_check_supported(i32 %11)
  %13 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %14 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 4
  %15 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %16 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @DRM_INFO(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %20 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %24 = call i32 @GUEST_HEAP_OFFSET(%struct.vbox_private* %23)
  %25 = load i32, i32* @GUEST_HEAP_SIZE, align 4
  %26 = call i64 @pci_iomap_range(i32 %22, i32 0, i32 %24, i32 %25)
  %27 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %28 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %30 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %135

36:                                               ; preds = %1
  %37 = call i32 @gen_pool_create(i32 4, i32 -1)
  %38 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %39 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %41 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %125

45:                                               ; preds = %36
  %46 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %47 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %50 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %53 = call i32 @GUEST_HEAP_OFFSET(%struct.vbox_private* %52)
  %54 = load i32, i32* @GUEST_HEAP_USABLE_SIZE, align 4
  %55 = call i32 @gen_pool_add_virt(i32 %48, i64 %51, i32 %53, i32 %54, i32 -1)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %120

59:                                               ; preds = %45
  %60 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %61 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @hgsmi_test_query_conf(i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %120

68:                                               ; preds = %59
  %69 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %70 = call i32 @GUEST_HEAP_OFFSET(%struct.vbox_private* %69)
  %71 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %72 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %74 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @VBOX_VBVA_CONF32_MONITOR_COUNT, align 4
  %77 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %78 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %77, i32 0, i32 4
  %79 = call i32 @hgsmi_query_conf(i32 %75, i32 %76, i32* %78)
  %80 = load i32, i32* @u32, align 4
  %81 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %82 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @VBOX_MAX_SCREENS, align 4
  %85 = call i32 @clamp_t(i32 %80, i32 %83, i32 1, i32 %84)
  %86 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %87 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %89 = call i32 @have_hgsmi_mode_hints(%struct.vbox_private* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %68
  %92 = load i32, i32* @ENOTSUPP, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %120

94:                                               ; preds = %68
  %95 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %96 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %100 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i32 @devm_kcalloc(i32 %98, i32 %101, i32 4, i32 %102)
  %104 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %105 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %107 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %94
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %120

113:                                              ; preds = %94
  %114 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %115 = call i32 @vbox_accel_init(%struct.vbox_private* %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %120

119:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %135

120:                                              ; preds = %118, %110, %91, %66, %58
  %121 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %122 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @gen_pool_destroy(i32 %123)
  br label %125

125:                                              ; preds = %120, %44
  %126 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %127 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %131 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @pci_iounmap(i32 %129, i64 %132)
  %134 = load i32, i32* %4, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %125, %119, %33
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @vbox_check_supported(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i64 @pci_iomap_range(i32, i32, i32, i32) #1

declare dso_local i32 @GUEST_HEAP_OFFSET(%struct.vbox_private*) #1

declare dso_local i32 @gen_pool_create(i32, i32) #1

declare dso_local i32 @gen_pool_add_virt(i32, i64, i32, i32, i32) #1

declare dso_local i32 @hgsmi_test_query_conf(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @hgsmi_query_conf(i32, i32, i32*) #1

declare dso_local i32 @clamp_t(i32, i32, i32, i32) #1

declare dso_local i32 @have_hgsmi_mode_hints(%struct.vbox_private*) #1

declare dso_local i32 @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @vbox_accel_init(%struct.vbox_private*) #1

declare dso_local i32 @gen_pool_destroy(i32) #1

declare dso_local i32 @pci_iounmap(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
