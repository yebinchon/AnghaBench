; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_irq_kms.c_radeon_irq_kms_set_irq_n_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_irq_kms.c_radeon_irq_kms_set_irq_n_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"%s%d interrupts enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s%d interrupts disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_irq_kms_set_irq_n_enabled(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @RREG32(i32 %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %48

26:                                               ; preds = %6
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %13, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %13, align 4
  %37 = call i32 @WREG32(i32 %33, i32 %36)
  br label %48

38:                                               ; preds = %26
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %9, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = call i32 @WREG32(i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %25, %38, %29
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i8*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
