; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_parse_packet0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_parse_packet0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32 }
%struct.radeon_cs_packet = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_cs_parse_packet0(%struct.radeon_cs_parser* %0, %struct.radeon_cs_packet* %1, i32* %2, i32 %3, i32 (%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32, i32)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_cs_parser*, align 8
  %8 = alloca %struct.radeon_cs_packet*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32, i32)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %7, align 8
  store %struct.radeon_cs_packet* %1, %struct.radeon_cs_packet** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 (%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32, i32)* %4, i32 (%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32, i32)** %11, align 8
  %18 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %8, align 8
  %19 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %16, align 4
  %22 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %8, align 8
  %23 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %8, align 8
  %26 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %5
  %30 = load i32, i32* %12, align 4
  %31 = lshr i32 %30, 7
  %32 = load i32, i32* %10, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %112

37:                                               ; preds = %29
  br label %52

38:                                               ; preds = %5
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %8, align 8
  %41 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %42, 2
  %44 = add i32 %39, %43
  %45 = lshr i32 %44, 7
  %46 = load i32, i32* %10, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %112

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %37
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %106, %52
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %8, align 8
  %56 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ule i32 %54, %57
  br i1 %58, label %59, label %111

59:                                               ; preds = %53
  %60 = load i32, i32* %12, align 4
  %61 = lshr i32 %60, 7
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %12, align 4
  %63 = lshr i32 %62, 2
  %64 = and i32 %63, 31
  %65 = shl i32 1, %64
  store i32 %65, i32* %15, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %14, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %15, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %59
  %75 = load i32 (%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32, i32)*, i32 (%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32, i32)** %11, align 8
  %76 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %7, align 8
  %77 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %8, align 8
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 %75(%struct.radeon_cs_parser* %76, %struct.radeon_cs_packet* %77, i32 %78, i32 %79)
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %6, align 4
  br label %112

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %59
  %87 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %8, align 8
  %88 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %14, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %15, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %91
  br label %111

101:                                              ; preds = %91
  br label %105

102:                                              ; preds = %86
  %103 = load i32, i32* %12, align 4
  %104 = add i32 %103, 4
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %102, %101
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %13, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %16, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %16, align 4
  br label %53

111:                                              ; preds = %100, %53
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %111, %83, %48, %34
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
