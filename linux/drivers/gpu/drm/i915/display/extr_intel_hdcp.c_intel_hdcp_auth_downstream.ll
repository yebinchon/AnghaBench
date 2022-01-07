; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_auth_downstream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_auth_downstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.TYPE_3__ = type { %struct.intel_hdcp_shim* }
%struct.intel_hdcp_shim = type { i32 (%struct.intel_digital_port*, i32*)*, i32 (%struct.intel_digital_port.0*, i32, i32*)* }
%struct.intel_digital_port = type opaque
%struct.intel_digital_port.0 = type opaque
%struct.intel_digital_port.1 = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"KSV list failed to become ready (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Max Topology Limit Exceeded\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Repeater with zero downstream devices\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRM_HDCP_KSV_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Out of mem: ksv_fifo\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Revoked Ksv(s) in ksv_fifo\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"V Prime validation failed.(%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"HDCP is enabled (%d downstream devices)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*)* @intel_hdcp_auth_downstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdcp_auth_downstream(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.intel_digital_port.1*, align 8
  %5 = alloca %struct.intel_hdcp_shim*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %13 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %14 = call %struct.intel_digital_port.1* @conn_to_dig_port(%struct.intel_connector* %13)
  store %struct.intel_digital_port.1* %14, %struct.intel_digital_port.1** %4, align 8
  %15 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %16 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %17, align 8
  store %struct.intel_hdcp_shim* %18, %struct.intel_hdcp_shim** %5, align 8
  %19 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %20 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %6, align 8
  store i32 3, i32* %12, align 4
  %23 = load %struct.intel_digital_port.1*, %struct.intel_digital_port.1** %4, align 8
  %24 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %5, align 8
  %25 = call i32 @intel_hdcp_poll_ksv_fifo(%struct.intel_digital_port.1* %23, %struct.intel_hdcp_shim* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %2, align 4
  br label %134

32:                                               ; preds = %1
  %33 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %5, align 8
  %34 = getelementptr inbounds %struct.intel_hdcp_shim, %struct.intel_hdcp_shim* %33, i32 0, i32 0
  %35 = load i32 (%struct.intel_digital_port*, i32*)*, i32 (%struct.intel_digital_port*, i32*)** %34, align 8
  %36 = load %struct.intel_digital_port.1*, %struct.intel_digital_port.1** %4, align 8
  %37 = bitcast %struct.intel_digital_port.1* %36 to %struct.intel_digital_port*
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %39 = call i32 %35(%struct.intel_digital_port* %37, i32* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %2, align 4
  br label %134

44:                                               ; preds = %32
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @DRM_HDCP_MAX_DEVICE_EXCEEDED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @DRM_HDCP_MAX_CASCADE_EXCEEDED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %44
  %55 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %134

58:                                               ; preds = %49
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @DRM_HDCP_NUM_DOWNSTREAM(i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %134

68:                                               ; preds = %58
  %69 = load i32, i32* @DRM_HDCP_KSV_LEN, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32* @kcalloc(i32 %69, i32 %70, i32 %71)
  store i32* %72, i32** %9, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %68
  %76 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %134

79:                                               ; preds = %68
  %80 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %5, align 8
  %81 = getelementptr inbounds %struct.intel_hdcp_shim, %struct.intel_hdcp_shim* %80, i32 0, i32 1
  %82 = load i32 (%struct.intel_digital_port.0*, i32, i32*)*, i32 (%struct.intel_digital_port.0*, i32, i32*)** %81, align 8
  %83 = load %struct.intel_digital_port.1*, %struct.intel_digital_port.1** %4, align 8
  %84 = bitcast %struct.intel_digital_port.1* %83 to %struct.intel_digital_port.0*
  %85 = load i32, i32* %8, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 %82(%struct.intel_digital_port.0* %84, i32 %85, i32* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %130

91:                                               ; preds = %79
  %92 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i64 @drm_hdcp_check_ksvs_revoked(%struct.drm_device* %92, i32* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i32, i32* @EPERM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %10, align 4
  br label %130

101:                                              ; preds = %91
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %117, %101
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %102
  %107 = load %struct.intel_digital_port.1*, %struct.intel_digital_port.1** %4, align 8
  %108 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %5, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %8, align 4
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %112 = call i32 @intel_hdcp_validate_v_prime(%struct.intel_digital_port.1* %107, %struct.intel_hdcp_shim* %108, i32* %109, i32 %110, i32* %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %106
  br label %120

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %102

120:                                              ; preds = %115, %102
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* %10, align 4
  %126 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  br label %130

127:                                              ; preds = %120
  %128 = load i32, i32* %8, align 4
  %129 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  store i32 0, i32* %10, align 4
  br label %130

130:                                              ; preds = %127, %124, %97, %90
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @kfree(i32* %131)
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %130, %75, %64, %54, %42, %28
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.intel_digital_port.1* @conn_to_dig_port(%struct.intel_connector*) #1

declare dso_local i32 @intel_hdcp_poll_ksv_fifo(%struct.intel_digital_port.1*, %struct.intel_hdcp_shim*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i64 @DRM_HDCP_MAX_DEVICE_EXCEEDED(i32) #1

declare dso_local i64 @DRM_HDCP_MAX_CASCADE_EXCEEDED(i32) #1

declare dso_local i32 @DRM_HDCP_NUM_DOWNSTREAM(i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @drm_hdcp_check_ksvs_revoked(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @intel_hdcp_validate_v_prime(%struct.intel_digital_port.1*, %struct.intel_hdcp_shim*, i32*, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
