; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_cmd_dma_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_cmd_dma_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { i32* }

@.str = private unnamed_addr constant [35 x i8] c"data = 0x%x and ntohl(data) = 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_dsi_host*, i32*, i32, i32)* @dsi_cmd_dma_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_cmd_dma_rx(%struct.msm_dsi_host* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.msm_dsi_host*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [16 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.msm_dsi_host* %0, %struct.msm_dsi_host** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %5, align 8
  %22 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = ptrtoint i32* %20 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %18, align 4
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %9, align 8
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  store i32* %30, i32** %10, align 8
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 3
  %33 = ashr i32 %32, 2
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp sgt i32 %34, 4
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store i32 4, i32* %14, align 4
  br label %37

37:                                               ; preds = %36, %4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 4, i32* %15, align 4
  br label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 6
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %41, %40
  %45 = load i32, i32* %15, align 4
  %46 = icmp sgt i32 %45, 16
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* %15, align 4
  %49 = sub nsw i32 %48, 16
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %19, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %17, align 4
  br label %53

53:                                               ; preds = %47, %44
  %54 = load i32, i32* %14, align 4
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %72, %53
  %57 = load i32, i32* %12, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %5, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @REG_DSI_RDBK_DATA(i32 %61)
  %63 = call i32 @dsi_read(%struct.msm_dsi_host* %60, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @ntohl(i32 %64)
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %10, align 8
  store i32 %65, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @ntohl(i32 %69)
  %71 = call i32 @DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %12, align 4
  br label %56

75:                                               ; preds = %56
  %76 = load i32, i32* %17, align 4
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %90, %75
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 16
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 %84, i32* %89, align 4
  br label %90

90:                                               ; preds = %80
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %77

93:                                               ; preds = %77
  %94 = load i32, i32* %13, align 4
  ret i32 %94
}

declare dso_local i32 @dsi_read(%struct.msm_dsi_host*, i32) #1

declare dso_local i32 @REG_DSI_RDBK_DATA(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
