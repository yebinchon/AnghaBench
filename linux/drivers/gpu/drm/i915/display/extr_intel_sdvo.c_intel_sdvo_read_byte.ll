; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"i2c transfer returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, i32, i32*)* @intel_sdvo_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_read_byte(%struct.intel_sdvo* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_sdvo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [2 x %struct.i2c_msg], align 16
  %9 = alloca i32, align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 0
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  store i32* %6, i32** %12, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  %15 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %16 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i64 1
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 1
  %21 = load i32*, i32** %7, align 8
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 2
  %23 = load i32, i32* @I2C_M_RD, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 3
  %25 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %26 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %29 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 0
  %32 = call i32 @i2c_transfer(i32 %30, %struct.i2c_msg* %31, i32 2)
  store i32 %32, i32* %9, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %34
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
