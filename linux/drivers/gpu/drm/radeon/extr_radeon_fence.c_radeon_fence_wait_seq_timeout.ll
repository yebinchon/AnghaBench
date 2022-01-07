; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_wait_seq_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_wait_seq_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, i32 }

@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.radeon_device*, i32*, i32, i64)* @radeon_fence_wait_seq_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @radeon_fence_wait_seq_timeout(%struct.radeon_device* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @radeon_fence_any_seq_signaled(%struct.radeon_device* %12, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* %5, align 8
  br label %127

18:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %45, %18
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %19
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %45

31:                                               ; preds = %23
  %32 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @trace_radeon_fence_wait_begin(i32 %34, i32 %35, i32 %40)
  %42 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @radeon_irq_kms_sw_irq_get(%struct.radeon_device* %42, i32 %43)
  br label %45

45:                                               ; preds = %31, %30
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %19

48:                                               ; preds = %19
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i64 @radeon_fence_any_seq_signaled(%struct.radeon_device* %55, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %51
  %60 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %59, %51
  %65 = phi i1 [ true, %51 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @wait_event_interruptible_timeout(i32 %54, i32 %66, i64 %67)
  store i64 %68, i64* %10, align 8
  br label %87

69:                                               ; preds = %48
  %70 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i64 @radeon_fence_any_seq_signaled(%struct.radeon_device* %73, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %69
  %78 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br label %82

82:                                               ; preds = %77, %69
  %83 = phi i1 [ true, %69 ], [ %81, %77 ]
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %9, align 8
  %86 = call i64 @wait_event_timeout(i32 %72, i32 %84, i64 %85)
  store i64 %86, i64* %10, align 8
  br label %87

87:                                               ; preds = %82, %64
  %88 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i64, i64* @EDEADLK, align 8
  %94 = sub nsw i64 0, %93
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %92, %87
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %122, %95
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %125

100:                                              ; preds = %96
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %100
  br label %122

108:                                              ; preds = %100
  %109 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @radeon_irq_kms_sw_irq_put(%struct.radeon_device* %109, i32 %110)
  %112 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @trace_radeon_fence_wait_end(i32 %114, i32 %115, i32 %120)
  br label %122

122:                                              ; preds = %108, %107
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %96

125:                                              ; preds = %96
  %126 = load i64, i64* %10, align 8
  store i64 %126, i64* %5, align 8
  br label %127

127:                                              ; preds = %125, %16
  %128 = load i64, i64* %5, align 8
  ret i64 %128
}

declare dso_local i64 @radeon_fence_any_seq_signaled(%struct.radeon_device*, i32*) #1

declare dso_local i32 @trace_radeon_fence_wait_begin(i32, i32, i32) #1

declare dso_local i32 @radeon_irq_kms_sw_irq_get(%struct.radeon_device*, i32) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @radeon_irq_kms_sw_irq_put(%struct.radeon_device*, i32) #1

declare dso_local i32 @trace_radeon_fence_wait_end(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
