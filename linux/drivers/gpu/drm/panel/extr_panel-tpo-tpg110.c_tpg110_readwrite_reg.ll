; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-tpg110.c_tpg110_readwrite_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-tpg110.c_tpg110_readwrite_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg110 = type { i32, i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [22 x i8] c"SPI message error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpg110*, i32, i32, i32)* @tpg110_readwrite_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpg110_readwrite_reg(%struct.tpg110* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpg110*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_message, align 4
  %11 = alloca [2 x %struct.spi_transfer], align 16
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  store %struct.tpg110* %0, %struct.tpg110** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = call i32 @spi_message_init(%struct.spi_message* %10)
  %15 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %16 = call i32 @memset(%struct.spi_transfer* %15, i32 0, i32 64)
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = shl i32 %20, 2
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -4
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 0
  store i32 8, i32* %29, align 16
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %31 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 2
  store i32 1, i32* %34, align 16
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %36 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 1
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 1
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %38, i32 0, i32 2
  store i32 1, i32* %39, align 16
  %40 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 1
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 0
  store i32 8, i32* %41, align 16
  br label %63

42:                                               ; preds = %4
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %43, 1
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %50 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %49, i32 0, i32 0
  store i32 7, i32* %50, align 16
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %52 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %53 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %55 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %54, i32 0, i32 2
  store i32 1, i32* %55, align 16
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %57 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 1
  %58 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %57, i32 0, i32 3
  store i32* %56, i32** %58, align 8
  %59 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 1
  %60 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %59, i32 0, i32 2
  store i32 1, i32* %60, align 16
  %61 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 1
  %62 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %61, i32 0, i32 0
  store i32 8, i32* %62, align 16
  br label %63

63:                                               ; preds = %42, %19
  %64 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %65 = call i32 @spi_message_add_tail(%struct.spi_transfer* %64, %struct.spi_message* %10)
  %66 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 1
  %67 = call i32 @spi_message_add_tail(%struct.spi_transfer* %66, %struct.spi_message* %10)
  %68 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %69 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @spi_sync(i32 %70, %struct.spi_message* %10)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %63
  %75 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %76 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @DRM_DEV_ERROR(i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %5, align 4
  br label %88

81:                                               ; preds = %63
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %88

85:                                               ; preds = %81
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %85, %84, %74
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
