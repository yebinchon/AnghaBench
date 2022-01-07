; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_kms.c_komeda_kms_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_kms.c_komeda_kms_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_kms_dev = type { i32, %struct.drm_device }
%struct.drm_device = type { i32, %struct.komeda_dev*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.komeda_dev = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.komeda_dev*)*, i32 (%struct.komeda_dev*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@komeda_kms_driver = common dso_local global i32 0, align 4
@komeda_kms_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.komeda_kms_dev* @komeda_kms_attach(%struct.komeda_dev* %0) #0 {
  %2 = alloca %struct.komeda_kms_dev*, align 8
  %3 = alloca %struct.komeda_dev*, align 8
  %4 = alloca %struct.komeda_kms_dev*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.komeda_dev* %0, %struct.komeda_dev** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.komeda_kms_dev* @kzalloc(i32 40, i32 %7)
  store %struct.komeda_kms_dev* %8, %struct.komeda_kms_dev** %4, align 8
  %9 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %10 = icmp ne %struct.komeda_kms_dev* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.komeda_kms_dev* @ERR_PTR(i32 %13)
  store %struct.komeda_kms_dev* %14, %struct.komeda_kms_dev** %2, align 8
  br label %154

15:                                               ; preds = %1
  %16 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %17 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %16, i32 0, i32 1
  store %struct.drm_device* %17, %struct.drm_device** %5, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %20 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @drm_dev_init(%struct.drm_device* %18, i32* @komeda_kms_driver, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %149

26:                                               ; preds = %15
  %27 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 1
  store %struct.komeda_dev* %27, %struct.komeda_dev** %29, align 8
  %30 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %31 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %32 = call i32 @komeda_kms_mode_config_init(%struct.komeda_kms_dev* %30, %struct.komeda_dev* %31)
  %33 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %34 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %35 = call i32 @komeda_kms_add_private_objs(%struct.komeda_kms_dev* %33, %struct.komeda_dev* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %140

39:                                               ; preds = %26
  %40 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %41 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %42 = call i32 @komeda_kms_add_planes(%struct.komeda_kms_dev* %40, %struct.komeda_dev* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %140

46:                                               ; preds = %39
  %47 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %48 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %49 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @drm_vblank_init(%struct.drm_device* %47, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %140

55:                                               ; preds = %46
  %56 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %57 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %58 = call i32 @komeda_kms_add_crtcs(%struct.komeda_kms_dev* %56, %struct.komeda_dev* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %140

62:                                               ; preds = %55
  %63 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %64 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %65 = call i32 @komeda_kms_add_wb_connectors(%struct.komeda_kms_dev* %63, %struct.komeda_dev* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %140

69:                                               ; preds = %62
  %70 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %71 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %74 = call i32 @component_bind_all(i32 %72, %struct.komeda_kms_dev* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %140

78:                                               ; preds = %69
  %79 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %80 = call i32 @drm_mode_config_reset(%struct.drm_device* %79)
  %81 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %82 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %85 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @komeda_kms_irq_handler, align 4
  %88 = load i32, i32* @IRQF_SHARED, align 4
  %89 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %90 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %89, i32 0, i32 2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %95 = call i32 @devm_request_irq(i32 %83, i32 %86, i32 %87, i32 %88, i32 %93, %struct.drm_device* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %78
  br label %134

99:                                               ; preds = %78
  %100 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %101 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32 (%struct.komeda_dev*)*, i32 (%struct.komeda_dev*)** %103, align 8
  %105 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %106 = call i32 %104(%struct.komeda_dev* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %134

110:                                              ; preds = %99
  %111 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %112 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %114 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %113)
  %115 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %116 = call i32 @drm_dev_register(%struct.drm_device* %115, i32 0)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %122

120:                                              ; preds = %110
  %121 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  store %struct.komeda_kms_dev* %121, %struct.komeda_kms_dev** %2, align 8
  br label %154

122:                                              ; preds = %119
  %123 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %124 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %123)
  %125 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %126 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %125, i32 0, i32 0
  store i32 0, i32* %126, align 8
  %127 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %128 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32 (%struct.komeda_dev*)*, i32 (%struct.komeda_dev*)** %130, align 8
  %132 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %133 = call i32 %131(%struct.komeda_dev* %132)
  br label %134

134:                                              ; preds = %122, %109, %98
  %135 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %136 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %139 = call i32 @component_unbind_all(i32 %137, %struct.drm_device* %138)
  br label %140

140:                                              ; preds = %134, %77, %68, %61, %54, %45, %38
  %141 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %142 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %141)
  %143 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %144 = call i32 @komeda_kms_cleanup_private_objs(%struct.komeda_kms_dev* %143)
  %145 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %146 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %145, i32 0, i32 1
  store %struct.komeda_dev* null, %struct.komeda_dev** %146, align 8
  %147 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %148 = call i32 @drm_dev_put(%struct.drm_device* %147)
  br label %149

149:                                              ; preds = %140, %25
  %150 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %151 = call i32 @kfree(%struct.komeda_kms_dev* %150)
  %152 = load i32, i32* %6, align 4
  %153 = call %struct.komeda_kms_dev* @ERR_PTR(i32 %152)
  store %struct.komeda_kms_dev* %153, %struct.komeda_kms_dev** %2, align 8
  br label %154

154:                                              ; preds = %149, %120, %11
  %155 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %2, align 8
  ret %struct.komeda_kms_dev* %155
}

declare dso_local %struct.komeda_kms_dev* @kzalloc(i32, i32) #1

declare dso_local %struct.komeda_kms_dev* @ERR_PTR(i32) #1

declare dso_local i32 @drm_dev_init(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @komeda_kms_mode_config_init(%struct.komeda_kms_dev*, %struct.komeda_dev*) #1

declare dso_local i32 @komeda_kms_add_private_objs(%struct.komeda_kms_dev*, %struct.komeda_dev*) #1

declare dso_local i32 @komeda_kms_add_planes(%struct.komeda_kms_dev*, %struct.komeda_dev*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @komeda_kms_add_crtcs(%struct.komeda_kms_dev*, %struct.komeda_dev*) #1

declare dso_local i32 @komeda_kms_add_wb_connectors(%struct.komeda_kms_dev*, %struct.komeda_dev*) #1

declare dso_local i32 @component_bind_all(i32, %struct.komeda_kms_dev*) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @component_unbind_all(i32, %struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @komeda_kms_cleanup_private_objs(%struct.komeda_kms_dev*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

declare dso_local i32 @kfree(%struct.komeda_kms_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
