; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_write_svga.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_write_svga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i64 }

@SVGA_CAP_PITCHLOCK = common dso_local global i32 0, align 4
@SVGA_REG_PITCHLOCK = common dso_local global i32 0, align 4
@SVGA_FIFO_PITCHLOCK = common dso_local global i64 0, align 8
@SVGA_REG_WIDTH = common dso_local global i32 0, align 4
@SVGA_REG_HEIGHT = common dso_local global i32 0, align 4
@SVGA_REG_BITS_PER_PIXEL = common dso_local global i32 0, align 4
@SVGA_REG_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Invalid depth %u for %u bpp, host expects %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_kms_write_svga(%struct.vmw_private* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmw_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %15 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SVGA_CAP_PITCHLOCK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %22 = load i32, i32* @SVGA_REG_PITCHLOCK, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @vmw_write(%struct.vmw_private* %21, i32 %22, i32 %23)
  br label %38

25:                                               ; preds = %6
  %26 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %27 = call i64 @vmw_fifo_have_pitchlock(%struct.vmw_private* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %32 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SVGA_FIFO_PITCHLOCK, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @vmw_mmio_write(i32 %30, i64 %35)
  br label %37

37:                                               ; preds = %29, %25
  br label %38

38:                                               ; preds = %37, %20
  %39 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %40 = load i32, i32* @SVGA_REG_WIDTH, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @vmw_write(%struct.vmw_private* %39, i32 %40, i32 %41)
  %43 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %44 = load i32, i32* @SVGA_REG_HEIGHT, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @vmw_write(%struct.vmw_private* %43, i32 %44, i32 %45)
  %47 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %48 = load i32, i32* @SVGA_REG_BITS_PER_PIXEL, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @vmw_write(%struct.vmw_private* %47, i32 %48, i32 %49)
  %51 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %52 = load i32, i32* @SVGA_REG_DEPTH, align 4
  %53 = call i32 @vmw_read(%struct.vmw_private* %51, i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %38
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %60 = load i32, i32* @SVGA_REG_DEPTH, align 4
  %61 = call i32 @vmw_read(%struct.vmw_private* %59, i32 %60)
  %62 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %66

65:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %56
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @vmw_write(%struct.vmw_private*, i32, i32) #1

declare dso_local i64 @vmw_fifo_have_pitchlock(%struct.vmw_private*) #1

declare dso_local i32 @vmw_mmio_write(i32, i64) #1

declare dso_local i32 @vmw_read(%struct.vmw_private*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
