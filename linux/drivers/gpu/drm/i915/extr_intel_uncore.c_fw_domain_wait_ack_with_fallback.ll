; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_fw_domain_wait_ack_with_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_fw_domain_wait_ack_with_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_forcewake_domain = type { i32 }

@FORCEWAKE_KERNEL = common dso_local global i32 0, align 4
@ACK_SET = common dso_local global i32 0, align 4
@FORCEWAKE_KERNEL_FALLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s had to use fallback to %s ack, 0x%x (passes %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_forcewake_domain*, i32)* @fw_domain_wait_ack_with_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_domain_wait_ack_with_fallback(%struct.intel_uncore_forcewake_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_uncore_forcewake_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_uncore_forcewake_domain* %0, %struct.intel_uncore_forcewake_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @FORCEWAKE_KERNEL, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ACK_SET, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  store i32 %17, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %18

18:                                               ; preds = %48, %16
  %19 = load %struct.intel_uncore_forcewake_domain*, %struct.intel_uncore_forcewake_domain** %3, align 8
  %20 = load i32, i32* @FORCEWAKE_KERNEL_FALLBACK, align 4
  %21 = call i32 @wait_ack_clear(%struct.intel_uncore_forcewake_domain* %19, i32 %20)
  %22 = load %struct.intel_uncore_forcewake_domain*, %struct.intel_uncore_forcewake_domain** %3, align 8
  %23 = load i32, i32* @FORCEWAKE_KERNEL_FALLBACK, align 4
  %24 = call i32 @fw_set(%struct.intel_uncore_forcewake_domain* %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = mul i32 10, %25
  %27 = call i32 @udelay(i32 %26)
  %28 = load %struct.intel_uncore_forcewake_domain*, %struct.intel_uncore_forcewake_domain** %3, align 8
  %29 = load i32, i32* @FORCEWAKE_KERNEL_FALLBACK, align 4
  %30 = call i32 @wait_ack_set(%struct.intel_uncore_forcewake_domain* %28, i32 %29)
  %31 = load %struct.intel_uncore_forcewake_domain*, %struct.intel_uncore_forcewake_domain** %3, align 8
  %32 = call i32 @fw_ack(%struct.intel_uncore_forcewake_domain* %31)
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load %struct.intel_uncore_forcewake_domain*, %struct.intel_uncore_forcewake_domain** %3, align 8
  %39 = load i32, i32* @FORCEWAKE_KERNEL_FALLBACK, align 4
  %40 = call i32 @fw_clear(%struct.intel_uncore_forcewake_domain* %38, i32 %39)
  br label %41

41:                                               ; preds = %18
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = icmp ult i32 %45, 10
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %18, label %50

50:                                               ; preds = %48
  %51 = load %struct.intel_uncore_forcewake_domain*, %struct.intel_uncore_forcewake_domain** %3, align 8
  %52 = getelementptr inbounds %struct.intel_uncore_forcewake_domain, %struct.intel_uncore_forcewake_domain* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @intel_uncore_forcewake_domain_to_str(i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @ACK_SET, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %60 = load %struct.intel_uncore_forcewake_domain*, %struct.intel_uncore_forcewake_domain** %3, align 8
  %61 = call i32 @fw_ack(%struct.intel_uncore_forcewake_domain* %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %54, i8* %59, i32 %61, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %50
  br label %70

67:                                               ; preds = %50
  %68 = load i32, i32* @ETIMEDOUT, align 4
  %69 = sub nsw i32 0, %68
  br label %70

70:                                               ; preds = %67, %66
  %71 = phi i32 [ 0, %66 ], [ %69, %67 ]
  ret i32 %71
}

declare dso_local i32 @wait_ack_clear(%struct.intel_uncore_forcewake_domain*, i32) #1

declare dso_local i32 @fw_set(%struct.intel_uncore_forcewake_domain*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wait_ack_set(%struct.intel_uncore_forcewake_domain*, i32) #1

declare dso_local i32 @fw_ack(%struct.intel_uncore_forcewake_domain*) #1

declare dso_local i32 @fw_clear(%struct.intel_uncore_forcewake_domain*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @intel_uncore_forcewake_domain_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
