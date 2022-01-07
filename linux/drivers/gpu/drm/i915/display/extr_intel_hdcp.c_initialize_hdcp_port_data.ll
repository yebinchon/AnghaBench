; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_initialize_hdcp_port_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_initialize_hdcp_port_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_3__*, %struct.intel_hdcp }
%struct.TYPE_3__ = type { i32 }
%struct.intel_hdcp = type { i32, %struct.hdcp_port_data }
%struct.hdcp_port_data = type { i32, %struct.TYPE_4__*, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.intel_hdcp_shim = type { i64 }

@HDCP_PORT_TYPE_INTEGRATED = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of Memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*, %struct.intel_hdcp_shim*)* @initialize_hdcp_port_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_hdcp_port_data(%struct.intel_connector* %0, %struct.intel_hdcp_shim* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca %struct.intel_hdcp_shim*, align 8
  %6 = alloca %struct.intel_hdcp*, align 8
  %7 = alloca %struct.hdcp_port_data*, align 8
  store %struct.intel_connector* %0, %struct.intel_connector** %4, align 8
  store %struct.intel_hdcp_shim* %1, %struct.intel_hdcp_shim** %5, align 8
  %8 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %9 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %8, i32 0, i32 1
  store %struct.intel_hdcp* %9, %struct.intel_hdcp** %6, align 8
  %10 = load %struct.intel_hdcp*, %struct.intel_hdcp** %6, align 8
  %11 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %10, i32 0, i32 1
  store %struct.hdcp_port_data* %11, %struct.hdcp_port_data** %7, align 8
  %12 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %13 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %7, align 8
  %18 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load i64, i64* @HDCP_PORT_TYPE_INTEGRATED, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %7, align 8
  %22 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load %struct.intel_hdcp_shim*, %struct.intel_hdcp_shim** %5, align 8
  %24 = getelementptr inbounds %struct.intel_hdcp_shim, %struct.intel_hdcp_shim* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %7, align 8
  %28 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %7, align 8
  %30 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %7, align 8
  %32 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %2
  %36 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %7, align 8
  %37 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.TYPE_4__* @kcalloc(i32 %38, i32 4, i32 %39)
  %41 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %7, align 8
  %42 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %41, i32 0, i32 1
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %42, align 8
  br label %43

43:                                               ; preds = %35, %2
  %44 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %7, align 8
  %45 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = icmp ne %struct.TYPE_4__* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %66

52:                                               ; preds = %43
  %53 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %7, align 8
  %54 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.intel_hdcp*, %struct.intel_hdcp** %6, align 8
  %59 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %7, align 8
  %62 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %60, i32* %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %52, %48
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_4__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
