; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_dma_ib_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_dma_ib_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ib = type { i64, i64* }

@.str = private unnamed_addr constant [57 x i8] c"bad DMA_PACKET_WRITE [%6d] 0x%08x sub cmd is not 0 or 8\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"bad DMA_PACKET_COPY [%6d] 0x%08x invalid sub cmd\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unknown packet type %d at %d !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_dma_ib_parse(%struct.radeon_device* %0, %struct.radeon_ib* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ib*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %5, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %109, %2
  %12 = load %struct.radeon_ib*, %struct.radeon_ib** %5, align 8
  %13 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @GET_DMA_CMD(i64 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @GET_DMA_COUNT(i64 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @GET_DMA_SUB_CMD(i64 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %8, align 8
  switch i64 %24, label %102 [
    i64 128, label %25
    i64 130, label %49
    i64 131, label %96
    i64 129, label %99
  ]

25:                                               ; preds = %11
  %26 = load i64, i64* %10, align 8
  switch i64 %26, label %37 [
    i64 8, label %27
    i64 0, label %32
  ]

27:                                               ; preds = %25
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %28, 7
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %6, align 8
  br label %48

32:                                               ; preds = %25
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, 3
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %6, align 8
  br label %48

37:                                               ; preds = %25
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.radeon_ib*, %struct.radeon_ib** %5, align 8
  %40 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %116

48:                                               ; preds = %32, %27
  br label %108

49:                                               ; preds = %11
  %50 = load i64, i64* %10, align 8
  switch i64 %50, label %84 [
    i64 0, label %51
    i64 8, label %54
    i64 64, label %57
    i64 65, label %60
    i64 68, label %63
    i64 72, label %66
    i64 73, label %69
    i64 75, label %72
    i64 76, label %75
    i64 77, label %78
    i64 79, label %81
  ]

51:                                               ; preds = %49
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 5
  store i64 %53, i64* %6, align 8
  br label %95

54:                                               ; preds = %49
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %55, 9
  store i64 %56, i64* %6, align 8
  br label %95

57:                                               ; preds = %49
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 5
  store i64 %59, i64* %6, align 8
  br label %95

60:                                               ; preds = %49
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 9
  store i64 %62, i64* %6, align 8
  br label %95

63:                                               ; preds = %49
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, 7
  store i64 %65, i64* %6, align 8
  br label %95

66:                                               ; preds = %49
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, 10
  store i64 %68, i64* %6, align 8
  br label %95

69:                                               ; preds = %49
  %70 = load i64, i64* %6, align 8
  %71 = add i64 %70, 12
  store i64 %71, i64* %6, align 8
  br label %95

72:                                               ; preds = %49
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, 10
  store i64 %74, i64* %6, align 8
  br label %95

75:                                               ; preds = %49
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, 9
  store i64 %77, i64* %6, align 8
  br label %95

78:                                               ; preds = %49
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, 13
  store i64 %80, i64* %6, align 8
  br label %95

81:                                               ; preds = %49
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, 10
  store i64 %83, i64* %6, align 8
  br label %95

84:                                               ; preds = %49
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.radeon_ib*, %struct.radeon_ib** %5, align 8
  %87 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %85, i64 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %116

95:                                               ; preds = %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51
  br label %108

96:                                               ; preds = %11
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %97, 4
  store i64 %98, i64* %6, align 8
  br label %108

99:                                               ; preds = %11
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %108

102:                                              ; preds = %11
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %103, i64 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %116

108:                                              ; preds = %99, %96, %95, %48
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.radeon_ib*, %struct.radeon_ib** %5, align 8
  %112 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ult i64 %110, %113
  br i1 %114, label %11, label %115

115:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %102, %84, %37
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64 @GET_DMA_CMD(i64) #1

declare dso_local i64 @GET_DMA_COUNT(i64) #1

declare dso_local i64 @GET_DMA_SUB_CMD(i64) #1

declare dso_local i32 @DRM_ERROR(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
