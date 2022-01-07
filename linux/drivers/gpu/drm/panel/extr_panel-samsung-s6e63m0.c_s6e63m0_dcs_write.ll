; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63m0.c_s6e63m0_dcs_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63m0.c_s6e63m0_dcs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6e63m0 = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"writing dcs seq: %*ph\0A\00", align 1
@DATA_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"error %d writing dcs seq: %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s6e63m0*, i32*, i64)* @s6e63m0_dcs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6e63m0_dcs_write(%struct.s6e63m0* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.s6e63m0*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.s6e63m0* %0, %struct.s6e63m0** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.s6e63m0*, %struct.s6e63m0** %4, align 8
  %9 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  br label %63

16:                                               ; preds = %12
  %17 = load %struct.s6e63m0*, %struct.s6e63m0** %4, align 8
  %18 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %6, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @DRM_DEV_DEBUG(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %21, i32* %22)
  %24 = load %struct.s6e63m0*, %struct.s6e63m0** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @s6e63m0_spi_write_word(%struct.s6e63m0* %24, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %37, %16
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %46

37:                                               ; preds = %35
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %5, align 8
  %40 = load %struct.s6e63m0*, %struct.s6e63m0** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DATA_MASK, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @s6e63m0_spi_write_word(%struct.s6e63m0* %40, i32 %44)
  store i32 %45, i32* %7, align 4
  br label %28

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load %struct.s6e63m0*, %struct.s6e63m0** %4, align 8
  %51 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i64, i64* %6, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @DRM_DEV_ERROR(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %55, i32* %56)
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.s6e63m0*, %struct.s6e63m0** %4, align 8
  %60 = getelementptr inbounds %struct.s6e63m0, %struct.s6e63m0* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %49, %46
  %62 = call i32 @usleep_range(i32 300, i32 310)
  br label %63

63:                                               ; preds = %61, %15
  ret void
}

declare dso_local i32 @DRM_DEV_DEBUG(i32, i8*, i32, i32*) #1

declare dso_local i32 @s6e63m0_spi_write_word(%struct.s6e63m0*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
