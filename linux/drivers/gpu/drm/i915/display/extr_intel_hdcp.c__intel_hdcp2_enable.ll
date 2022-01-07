; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c__intel_hdcp2_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c__intel_hdcp2_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_4__, %struct.intel_hdcp }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.intel_hdcp = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"[%s:%d] HDCP2.2 is being enabled. Type: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"HDCP2 Type%d  Enabling Failed. (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"[%s:%d] HDCP2.2 is enabled. Type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*)* @_intel_hdcp2_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_intel_hdcp2_enable(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.intel_hdcp*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %6 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %7 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %6, i32 0, i32 1
  store %struct.intel_hdcp* %7, %struct.intel_hdcp** %4, align 8
  %8 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %9 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %13 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.intel_hdcp*, %struct.intel_hdcp** %4, align 8
  %18 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %16, i32 %19)
  %21 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %22 = call i32 @hdcp2_authenticate_and_encrypt(%struct.intel_connector* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.intel_hdcp*, %struct.intel_hdcp** %4, align 8
  %27 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %48

32:                                               ; preds = %1
  %33 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %34 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %38 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.intel_hdcp*, %struct.intel_hdcp** %4, align 8
  %43 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %41, i32 %44)
  %46 = load %struct.intel_hdcp*, %struct.intel_hdcp** %4, align 8
  %47 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %32, %25
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, ...) #1

declare dso_local i32 @hdcp2_authenticate_and_encrypt(%struct.intel_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
